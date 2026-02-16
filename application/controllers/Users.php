<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Users extends MY_Controller
{

    private $registerErrors = array();
    private $user_id;
    private $num_rows = 5;
    private $socialAuth = array();

    public function __construct()
    {
        parent::__construct();
        $this->load->library('email');
        $this->config->load('social_auth');
        $this->socialAuth = (array) $this->config->item('social_auth');
    }

    public function index()
    {
        show_404();
    }

    public function login()
    {
        if (isset($_POST['login'])) {
            $post = array(
                'identity' => isset($_POST['identity']) ? trim($_POST['identity']) : (isset($_POST['email']) ? trim($_POST['email']) : ''),
                'pass' => isset($_POST['pass']) ? $_POST['pass'] : ''
            );
            $result = $this->Public_model->checkPublicUserIsValid($post);
            if ($result !== false) {
                $_SESSION['logged_user'] = $result; //id of user
                $userInfo = $this->Public_model->getUserProfileInfo($result);
                $_SESSION['public_user_name'] = isset($userInfo['name']) ? $userInfo['name'] : '';
                redirect(LANG_URL . '/myaccount');
            } else {
                $this->session->set_flashdata('userError', lang('wrong_user'));
            }
        }
        $head = array();
        $data = array();
        $head['title'] = lang('user_login');
        $head['description'] = lang('user_login');
        $head['keywords'] = $head['title'] !== null ? str_replace(" ", ",", $head['title']) : '';
        $data['social_google_enabled'] = $this->isProviderEnabled('google');
        $data['social_facebook_enabled'] = $this->isProviderEnabled('facebook');
        $this->render('login', $head, $data);
    }

    public function register()
    {
        if (isset($_POST['signup'])) {
            $result = $this->registerValidate();
            if ($result == false) {
                $this->session->set_flashdata('userError', $this->registerErrors);
                redirect(LANG_URL . '/register');
            } else {
                $_SESSION['logged_user'] = $this->user_id; //id of user
                $_SESSION['public_user_name'] = isset($_POST['username']) ? trim($_POST['username']) : (isset($_POST['name']) ? trim($_POST['name']) : '');
                redirect(LANG_URL . '/myaccount');
            }
        }
        $head = array();
        $data = array();
        $head['title'] = lang('user_register');
        $head['description'] = lang('user_register');
        $head['keywords'] = $head['title'] !== null ? str_replace(" ", ",", $head['title']) : '';
        $data['social_google_enabled'] = $this->isProviderEnabled('google');
        $data['social_facebook_enabled'] = $this->isProviderEnabled('facebook');
        $this->render('signup', $head, $data);
    }

    public function myaccount($page = 0)
    {
        if (!isset($_SESSION['logged_user']) || (int) $_SESSION['logged_user'] < 1) {
            redirect(LANG_URL . '/login');
        }

        if (isset($_POST['update'])) {
            $_POST['id'] = $_SESSION['logged_user'];
            $currentProfile = $this->Public_model->getUserProfileInfo($_POST['id']);
            if (!isset($_POST['address'])) {
                $_POST['address'] = isset($currentProfile['address']) ? $currentProfile['address'] : '';
            }
            if (!isset($_POST['city'])) {
                $_POST['city'] = isset($currentProfile['city']) ? $currentProfile['city'] : '';
            }
            if (!isset($_POST['post_code'])) {
                $_POST['post_code'] = isset($currentProfile['post_code']) ? $currentProfile['post_code'] : '';
            }
            if (!isset($_POST['preferred_payment_type'])) {
                $_POST['preferred_payment_type'] = isset($currentProfile['preferred_payment_type']) ? $currentProfile['preferred_payment_type'] : 'cashOnDelivery';
            }
            $_POST['preferred_payment_type'] = $this->normalizePreferredPaymentType($_POST['preferred_payment_type']);
            $count_emails = $this->Public_model->countPublicUsersWithEmail($_POST['email'], $_POST['id']);
            if ($count_emails == 0) {
                $this->Public_model->updateProfile($_POST);
                $_SESSION['public_user_name'] = isset($_POST['name']) ? trim($_POST['name']) : '';
            }
            redirect(LANG_URL . '/myaccount');
        }
        $head = array();
        $data = array();
        $head['title'] = lang('my_acc');
        $head['description'] = lang('my_acc');
        $head['keywords'] = $head['title'] !== null ? str_replace(" ", ",", $head['title']) : '';
        $data['userInfo'] = $this->Public_model->getUserProfileInfo($_SESSION['logged_user']);
        $rowscount = $this->Public_model->getUserOrdersHistoryCount($_SESSION['logged_user']);
        $data['orders_history'] = $this->Public_model->getUserOrdersHistory($_SESSION['logged_user'], $this->num_rows, $page);
        $data['links_pagination'] = pagination('myaccount', $rowscount, $this->num_rows, 2);
        $this->render('user', $head, $data);
    }

    public function logout()
    {
        unset($_SESSION['logged_user']);
        unset($_SESSION['public_user_name']);
        redirect(LANG_URL);
    }

    public function facebook()
    {
        $provider = $this->getProviderConfig('facebook');
        if ($provider === false) {
            $this->session->set_flashdata('userError', 'Facebook login is not configured yet.');
            redirect(LANG_URL . '/login');
        }

        $state = $this->createOAuthState('facebook');
        $query = http_build_query(array(
            'client_id' => $provider['client_id'],
            'redirect_uri' => $provider['redirect_uri'],
            'state' => $state,
            'scope' => 'email,public_profile',
            'response_type' => 'code'
        ));
        redirect('https://www.facebook.com/v18.0/dialog/oauth?' . $query, 'location');
    }

    public function facebookCallback()
    {
        $provider = $this->getProviderConfig('facebook');
        if ($provider === false) {
            $this->session->set_flashdata('userError', 'Facebook login is not configured yet.');
            redirect(LANG_URL . '/login');
        }

        if (!$this->isValidOAuthState('facebook', isset($_GET['state']) ? $_GET['state'] : '')) {
            $this->session->set_flashdata('userError', 'Invalid Facebook login state. Please try again.');
            redirect(LANG_URL . '/login');
        }

        if (!isset($_GET['code']) || trim($_GET['code']) === '') {
            $this->session->set_flashdata('userError', 'Facebook login failed (missing authorization code).');
            redirect(LANG_URL . '/login');
        }

        $tokenUrl = 'https://graph.facebook.com/v18.0/oauth/access_token?' . http_build_query(array(
            'client_id' => $provider['client_id'],
            'client_secret' => $provider['client_secret'],
            'redirect_uri' => $provider['redirect_uri'],
            'code' => trim($_GET['code'])
        ));
        $tokenResponse = $this->requestJson($tokenUrl);
        if (!$tokenResponse || !isset($tokenResponse['access_token'])) {
            $this->session->set_flashdata('userError', 'Cannot get Facebook access token.');
            redirect(LANG_URL . '/login');
        }

        $userInfoUrl = 'https://graph.facebook.com/me?' . http_build_query(array(
            'fields' => 'id,name,email',
            'access_token' => $tokenResponse['access_token']
        ));
        $profile = $this->requestJson($userInfoUrl);
        if (!$profile || !isset($profile['email'])) {
            $this->session->set_flashdata('userError', 'Facebook account did not return email.');
            redirect(LANG_URL . '/login');
        }

        $this->loginOrCreateSocialUser($profile['email'], isset($profile['name']) ? $profile['name'] : '');
    }

    public function google()
    {
        $provider = $this->getProviderConfig('google');
        if ($provider === false) {
            $this->session->set_flashdata('userError', 'Google login is not configured yet.');
            redirect(LANG_URL . '/login');
        }

        $state = $this->createOAuthState('google');
        $query = http_build_query(array(
            'client_id' => $provider['client_id'],
            'redirect_uri' => $provider['redirect_uri'],
            'response_type' => 'code',
            'scope' => 'openid email profile',
            'state' => $state,
            'access_type' => 'online',
            'prompt' => 'select_account'
        ));
        redirect('https://accounts.google.com/o/oauth2/v2/auth?' . $query, 'location');
    }

    public function googleCallback()
    {
        $provider = $this->getProviderConfig('google');
        if ($provider === false) {
            $this->session->set_flashdata('userError', 'Google login is not configured yet.');
            redirect(LANG_URL . '/login');
        }

        if (!$this->isValidOAuthState('google', isset($_GET['state']) ? $_GET['state'] : '')) {
            $this->session->set_flashdata('userError', 'Invalid Google login state. Please try again.');
            redirect(LANG_URL . '/login');
        }

        if (!isset($_GET['code']) || trim($_GET['code']) === '') {
            $this->session->set_flashdata('userError', 'Google login failed (missing authorization code).');
            redirect(LANG_URL . '/login');
        }

        $tokenResponse = $this->requestJson(
            'https://oauth2.googleapis.com/token',
            array(
                'code' => trim($_GET['code']),
                'client_id' => $provider['client_id'],
                'client_secret' => $provider['client_secret'],
                'redirect_uri' => $provider['redirect_uri'],
                'grant_type' => 'authorization_code'
            )
        );
        if (!$tokenResponse || !isset($tokenResponse['access_token'])) {
            $this->session->set_flashdata('userError', 'Cannot get Google access token.');
            redirect(LANG_URL . '/login');
        }

        $profile = $this->requestJson(
            'https://www.googleapis.com/oauth2/v2/userinfo?access_token=' . rawurlencode($tokenResponse['access_token'])
        );
        if (!$profile || !isset($profile['email'])) {
            $this->session->set_flashdata('userError', 'Google account did not return email.');
            redirect(LANG_URL . '/login');
        }

        $this->loginOrCreateSocialUser($profile['email'], isset($profile['name']) ? $profile['name'] : '');
    }

    private function registerValidate()
    {
        $errors = array();
        $username = isset($_POST['username']) ? trim($_POST['username']) : (isset($_POST['name']) ? trim($_POST['name']) : '');
        $email = isset($_POST['email']) ? trim($_POST['email']) : '';
        $pass = isset($_POST['pass']) ? $_POST['pass'] : '';
        $passRepeat = isset($_POST['pass_repeat']) ? $_POST['pass_repeat'] : '';
        if (mb_strlen($username) == 0) {
            $errors[] = 'Please enter username.';
        }
        if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
            $errors[] = lang('invalid_email');
        }
        if (mb_strlen(trim($pass)) == 0) {
            $errors[] = lang('enter_password');
        }
        if (mb_strlen(trim($passRepeat)) == 0) {
            $errors[] = lang('repeat_password');
        }
        if ($pass != $passRepeat) {
            $errors[] = lang('passwords_dont_match');
        }

        $count_emails = $this->Public_model->countPublicUsersWithEmail($email);
        if ($count_emails > 0) {
            $errors[] = lang('user_email_is_taken');
        }
        if (!empty($errors)) {
            $this->registerErrors = $errors;
            return false;
        }
        $this->user_id = $this->Public_model->registerUser(array(
            'name' => $username,
            'phone' => '',
            'address' => '',
            'city' => '',
            'post_code' => '',
            'preferred_payment_type' => 'cashOnDelivery',
            'email' => $email,
            'pass' => $pass
        ));
        return true;
    }

    private function normalizePreferredPaymentType($paymentType)
    {
        $allowed = array('cashOnDelivery', 'VisaCard', 'PayPal', 'Bank');
        if (in_array($paymentType, $allowed, true)) {
            return $paymentType;
        }
        return 'cashOnDelivery';
    }

    private function getProviderConfig($providerName)
    {
        if (!isset($this->socialAuth[$providerName])) {
            return false;
        }
        $provider = (array) $this->socialAuth[$providerName];
        $enabled = isset($provider['enabled']) ? (bool) $provider['enabled'] : false;
        if (!$enabled) {
            return false;
        }
        if (empty($provider['client_id']) || empty($provider['client_secret'])) {
            return false;
        }
        if (empty($provider['redirect_uri'])) {
            $provider['redirect_uri'] = base_url('auth/' . $providerName . '/callback');
        }
        return $provider;
    }

    private function isProviderEnabled($providerName)
    {
        return $this->getProviderConfig($providerName) !== false;
    }

    private function createOAuthState($providerName)
    {
        $state = sha1($providerName . '|' . microtime(true) . '|' . mt_rand());
        $this->session->set_userdata('oauth_state_' . $providerName, $state);
        return $state;
    }

    private function isValidOAuthState($providerName, $stateFromRequest)
    {
        $sessionState = $this->session->userdata('oauth_state_' . $providerName);
        $this->session->unset_userdata('oauth_state_' . $providerName);
        if (!is_string($sessionState) || $sessionState === '' || !is_string($stateFromRequest) || $stateFromRequest === '') {
            return false;
        }
        return hash_equals($sessionState, $stateFromRequest);
    }

    private function requestJson($url, $postFields = null)
    {
        $response = false;
        if (function_exists('curl_init')) {
            $ch = curl_init();
            curl_setopt($ch, CURLOPT_URL, $url);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            curl_setopt($ch, CURLOPT_TIMEOUT, 30);
            if (is_array($postFields)) {
                curl_setopt($ch, CURLOPT_POST, true);
                curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($postFields));
                curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: application/x-www-form-urlencoded'));
            }
            $response = curl_exec($ch);
            curl_close($ch);
        } else {
            $opts = array('http' => array('method' => is_array($postFields) ? 'POST' : 'GET', 'timeout' => 30));
            if (is_array($postFields)) {
                $opts['http']['header'] = "Content-type: application/x-www-form-urlencoded\r\n";
                $opts['http']['content'] = http_build_query($postFields);
            }
            $context = stream_context_create($opts);
            $response = @file_get_contents($url, false, $context);
        }

        if (!is_string($response) || $response === '') {
            return false;
        }
        $decoded = json_decode($response, true);
        if (!is_array($decoded)) {
            return false;
        }
        return $decoded;
    }

    private function loginOrCreateSocialUser($email, $name)
    {
        $email = trim($email);
        $name = trim($name);
        if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
            $this->session->set_flashdata('userError', 'Social login returned invalid email.');
            redirect(LANG_URL . '/login');
        }
        if ($name === '') {
            $name = substr($email, 0, strpos($email, '@'));
        }
        $userId = $this->Public_model->loginOrCreateSocialUser($email, $name);
        if ($userId === false) {
            $this->session->set_flashdata('userError', 'Cannot create social account.');
            redirect(LANG_URL . '/login');
        }

        $_SESSION['logged_user'] = $userId;
        $_SESSION['public_user_name'] = $name;
        redirect(LANG_URL . '/myaccount');
    }

}
