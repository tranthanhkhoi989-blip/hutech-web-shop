<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Checkout extends MY_Controller
{

    private $orderId;

    public function __construct()
    {
        parent::__construct();
        $this->load->model('admin/Orders_model');
    }

    public function index()
    {
        $data = array();
        $head = array();
        $arrSeo = $this->Public_model->getSeo('checkout');
        $head['title'] = @$arrSeo['title'];
        $head['description'] = @$arrSeo['description'];
        $head['keywords'] = $head['title'] !== null ? str_replace(" ", ",", $head['title']) : '';

        if (isset($_POST['payment_type'])) {
            if (!isset($_POST['full_name']) && isset($_POST['first_name'])) {
                $_POST['full_name'] = $_POST['first_name'];
            }
            $errors = $this->userInfoValidate($_POST);
            if (!empty($errors)) {
                $this->session->set_flashdata('submit_error', $errors);
            } else {
                $_POST['first_name'] = trim($_POST['full_name']);
                $_POST['last_name'] = '';
                $this->prepareCustomPaymentData($_POST);
                $_POST['referrer'] = $this->session->userdata('referrer');
                $_POST['clean_referrer'] = cleanReferral($_POST['referrer']);
                $_POST['user_id'] = isset($_SESSION['logged_user']) ? $_SESSION['logged_user'] : 0;
                $orderId = $this->Public_model->setOrder($_POST);
                if ($orderId != false) {
                    /*
                     * Save product orders in vendors profiles
                     */
                    $this->setVendorOrders();
                    $this->orderId = $orderId;
                    $this->setActivationLink();
                    $this->sendNotifications();
                    $this->goToDestination();
                } else {
                    log_message('error', 'Cant save order!! ' . implode('::', $_POST));
                    $this->session->set_flashdata('order_error', true);
                    redirect(LANG_URL . '/checkout/order-error');
                }
            }
        }
        $data['bank_account'] = $this->Orders_model->getBankAccountSettings();
        $data['cashondelivery_visibility'] = $this->Home_admin_model->getValueStore('cashondelivery_visibility');
        $data['paypal_email'] = $this->Home_admin_model->getValueStore('paypal_email');
        $data['shippingAmount'] = $this->Home_admin_model->getValueStore('shippingAmount');
        $data['bestSellers'] = $this->Public_model->getbestSellers();
        $data['activeDiscountCodes'] = $this->Public_model->getActiveDiscountCodes();
        $data['userProfile'] = null;
        if (isset($_SESSION['logged_user']) && (int) $_SESSION['logged_user'] > 0) {
            $data['userProfile'] = $this->Public_model->getUserProfileInfo((int) $_SESSION['logged_user']);
        }
        $this->render('checkout', $head, $data);
    }

    private function setVendorOrders()
    {
        $this->Public_model->setVendorOrder($_POST);
    }

    /*
     * Send notifications to users that have nofify=1 in /admin/adminusers
     */

    private function sendNotifications()
    {
        $users = $this->Public_model->getNotifyUsers();
        $myDomain = $this->config->item('base_url');
        if (!empty($users)) {
            $this->sendmail->clearAddresses();
            foreach ($users as $user) {
                $this->sendmail->sendTo($user, 'Admin', 'New order in ' . $myDomain, 'Hello, you have new order. Can check it in /admin/orders');
            }
        }
    }

    private function setActivationLink()
    {
        if ($this->config->item('send_confirm_link') === true) {
            $link = md5($this->orderId . time());
            $result = $this->Public_model->setActivationLink($link, $this->orderId);
            if ($result == true) {
                $url = parse_url(base_url());
                $msg = lang('please_confirm') . base_url('confirm/' . $link);
                $this->sendmail->sendTo($_POST['email'], $_POST['first_name'] . ' ' . $_POST['last_name'], lang('confirm_order_subj') . $url['host'], $msg);
            }
        }
    }

    private function goToDestination()
    {
        if (
            $_POST['payment_type'] == 'cashOnDelivery'
            || $_POST['payment_type'] == 'Bank'
            || $_POST['payment_type'] == 'VisaCard'
        ) {
            $this->shoppingcart->clearShoppingCart();
            $this->session->set_flashdata('success_order', true);
        }

        if (
            $_POST['payment_type'] == 'Bank'
            || $_POST['payment_type'] == 'VisaCard'
        ) {
            $_SESSION['order_id'] = $this->orderId;
            $_SESSION['final_amount'] = $_POST['final_amount'] . $_POST['amount_currency'];
            $_SESSION['payment_type'] = $_POST['payment_type'];
            redirect(LANG_URL . '/checkout/successbank');
        }
        if ($_POST['payment_type'] == 'cashOnDelivery') {
            redirect(LANG_URL . '/checkout/successcash');
        }
        if ($_POST['payment_type'] == 'PayPal') {
            @set_cookie('paypal', $this->orderId, 2678400);
            $_SESSION['discountAmount'] = $_POST['discountAmount'];
            redirect(LANG_URL . '/checkout/paypalpayment');
        }
    }

    private function userInfoValidate($post)
    {
        $errors = array();
        $fullName = isset($post['full_name']) ? trim($post['full_name']) : '';
        if (mb_strlen($fullName) == 0) {
            $errors[] = 'Full name is required.';
        }
        if (!filter_var($post['email'], FILTER_VALIDATE_EMAIL)) {
            $errors[] = lang('invalid_email');
        }
        $post['phone'] = preg_replace("/[^0-9]/", '', $post['phone']);
        if (mb_strlen(trim($post['phone'])) == 0) {
            $errors[] = lang('invalid_phone');
        }
        if (mb_strlen(trim($post['address'])) == 0) {
            $errors[] = lang('address_empty');
        }
        if (mb_strlen(trim($post['city'])) == 0) {
            $errors[] = lang('invalid_city');
        }

        if (isset($post['payment_type']) && $post['payment_type'] === 'VisaCard') {
            if (!isset($post['visa_holder_name']) || mb_strlen(trim($post['visa_holder_name'])) == 0) {
                $errors[] = 'Card holder name is required for Visa payment.';
            }

            $cardNumber = isset($post['visa_card_number']) ? preg_replace('/\D/', '', $post['visa_card_number']) : '';
            if (strlen($cardNumber) < 13 || strlen($cardNumber) > 19) {
                $errors[] = 'Card number must contain 13-19 digits.';
            }

            if (!isset($post['visa_start_date']) || !preg_match('/^(0[1-9]|1[0-2])\/\d{2,4}$/', trim($post['visa_start_date']))) {
                $errors[] = 'Card start date must be in MM/YY or MM/YYYY format.';
            }

            if (!isset($post['visa_expiry_date']) || !preg_match('/^(0[1-9]|1[0-2])\/\d{2,4}$/', trim($post['visa_expiry_date']))) {
                $errors[] = 'Card expiry date must be in MM/YY or MM/YYYY format.';
            }

            $cvv = isset($post['visa_cvv']) ? trim($post['visa_cvv']) : '';
            if (!preg_match('/^\d{3}$/', $cvv)) {
                $errors[] = 'Card security code must contain exactly 3 digits.';
            }
        }

        return $errors;
    }

    private function prepareCustomPaymentData(&$post)
    {
        if (!isset($post['payment_type'])) {
            return;
        }

        if ($post['payment_type'] === 'VisaCard') {
            $holderName = isset($post['visa_holder_name']) ? trim($post['visa_holder_name']) : '';
            $cardNumberRaw = isset($post['visa_card_number']) ? preg_replace('/\D/', '', $post['visa_card_number']) : '';
            $cardNumberMasked = '';
            if ($cardNumberRaw !== '') {
                $last4 = substr($cardNumberRaw, -4);
                $cardNumberMasked = str_repeat('*', max(strlen($cardNumberRaw) - 4, 0)) . $last4;
            }
            $startDate = isset($post['visa_start_date']) ? trim($post['visa_start_date']) : '';
            $expiryDate = isset($post['visa_expiry_date']) ? trim($post['visa_expiry_date']) : '';

            $visaNotes = array(
                'Visa payment details:',
                'Card holder: ' . $holderName,
                'Card number: ' . $cardNumberMasked,
                'Start date: ' . $startDate,
                'Expiry date: ' . $expiryDate,
                'CVV: not stored (security policy)'
            );

            $existingNotes = isset($post['notes']) ? trim($post['notes']) : '';
            $post['notes'] = trim($existingNotes . "\n\n" . implode("\n", $visaNotes));

            // Do not keep raw card data in request payload after preparing notes.
            unset($post['visa_cvv'], $post['visa_card_number']);
        }
    }

    public function orderError()
    {
        if ($this->session->flashdata('order_error')) {
            $data = array();
            $head = array();
            $arrSeo = $this->Public_model->getSeo('checkout');
            $head['title'] = @$arrSeo['title'];
            $head['description'] = @$arrSeo['description'];
            $head['keywords'] = $head['title'] !== null ? str_replace(" ", ",", $head['title']) : '';
            $this->render('checkout_parts/order_error', $head, $data);
        } else {
            redirect(LANG_URL . '/checkout');
        }
    }

    public function paypalPayment()
    {
        $data = array();
        $head = array();
        $arrSeo = $this->Public_model->getSeo('checkout');
        $head['title'] = @$arrSeo['title'];
        $head['description'] = @$arrSeo['description'];
        $head['keywords'] = $head['title'] !== null ? str_replace(" ", ",", $head['title']) : '';
        $data['paypal_sandbox'] = $this->Home_admin_model->getValueStore('paypal_sandbox');
        $data['paypal_email'] = $this->Home_admin_model->getValueStore('paypal_email');
        $this->render('checkout_parts/paypal_payment', $head, $data);
    }

    public function successPaymentCashOnD()
    {
        if ($this->session->flashdata('success_order')) {
            $data = array();
            $head = array();
            $arrSeo = $this->Public_model->getSeo('checkout');
            $head['title'] = @$arrSeo['title'];
            $head['description'] = @$arrSeo['description'];
            $head['keywords'] = $head['title'] !== null ? str_replace(" ", ",", $head['title']) : '';
            $this->render('checkout_parts/payment_success_cash', $head, $data);
        } else {
            redirect(LANG_URL . '/checkout');
        }
    }

    public function successPaymentBank()
    {
        if ($this->session->flashdata('success_order')) {
            $data = array();
            $head = array();
            $arrSeo = $this->Public_model->getSeo('checkout');
            $head['title'] = @$arrSeo['title'];
            $head['description'] = @$arrSeo['description'];
            $head['keywords'] = $head['title'] !== null ? str_replace(" ", ",", $head['title']) : '';
            $data['bank_account'] = $this->Orders_model->getBankAccountSettings();
            $this->render('checkout_parts/payment_success_bank', $head, $data);
        } else {
            redirect(LANG_URL . '/checkout');
        }
    }

    public function paypal_cancel()
    {
        if (get_cookie('paypal') == null) {
            redirect(base_url());
        }
        @delete_cookie('paypal');
        $orderId = get_cookie('paypal');
        $this->Public_model->changePaypalOrderStatus($orderId, 'canceled');
        $data = array();
        $head = array();
        $head['title'] = '';
        $head['description'] = '';
        $head['keywords'] = '';
        $this->render('checkout_parts/paypal_cancel', $head, $data);
    }

    public function paypal_success()
    {
        if (get_cookie('paypal') == null) {
            redirect(base_url());
        }
        @delete_cookie('paypal');
        $this->shoppingcart->clearShoppingCart();
        $orderId = get_cookie('paypal');
        $this->Public_model->changePaypalOrderStatus($orderId, 'payed');
        $data = array();
        $head = array();
        $head['title'] = '';
        $head['description'] = '';
        $head['keywords'] = '';
        $this->render('checkout_parts/paypal_success', $head, $data);
    }

}
