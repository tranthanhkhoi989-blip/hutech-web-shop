<?php

/*
 * @Author:    Kiril Kirkov
 *  Gitgub:    https://github.com/kirilkirkov
 */
if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Orders extends ADMIN_Controller
{

    private $num_rows = 10;

    public function __construct()
    {
        parent::__construct();
        $this->load->library('SendMail');
        $this->load->model(array('Orders_model', 'Home_admin_model'));
    }

    public function index($page = 0)
    {
        $this->login_check();
        $data = array();
        $head = array();
        $head['title'] = 'Administration - Orders';
        $head['description'] = '!';
        $head['keywords'] = '';

        $order_by = null;
        if (isset($_GET['order_by'])) {
            $order_by = $_GET['order_by'];
        }
        $rowscount = $this->Orders_model->ordersCount();
        $data['orders'] = $this->Orders_model->orders($this->num_rows, $page, $order_by);
        $data['links_pagination'] = pagination('admin/orders', $rowscount, $this->num_rows, 3);
        if (isset($_POST['paypal_sandbox'])) {
            $this->Home_admin_model->setValueStore('paypal_sandbox', $_POST['paypal_sandbox']);
            if ($_POST['paypal_sandbox'] == 1) {
                $msg = 'Paypal sandbox mode activated';
            } else {
                $msg = 'Paypal sandbox mode disabled';
            }
            $this->session->set_flashdata('paypal_sandbox', $msg);
            $this->saveHistory($msg);
            redirect('admin/orders?settings');
        }
        if (isset($_POST['paypal_email'])) {
            $this->Home_admin_model->setValueStore('paypal_email', $_POST['paypal_email']);
            $this->session->set_flashdata('paypal_email', 'Public quantity visibility changed');
            $this->saveHistory('Change paypal business email to: ' . $_POST['paypal_email']);
            redirect('admin/orders?settings');
        }
        if (isset($_POST['cashondelivery_visibility'])) {
            $this->Home_admin_model->setValueStore('cashondelivery_visibility', $_POST['cashondelivery_visibility']);
            $this->session->set_flashdata('cashondelivery_visibility', 'Cash On Delivery Visibility Changed');
            $this->saveHistory('Change Cash On Delivery Visibility - ' . $_POST['cashondelivery_visibility']);
            redirect('admin/orders?settings');
        }
        if (isset($_POST['iban'])) {
            $this->Orders_model->setBankAccountSettings($_POST);
            $this->session->set_flashdata('bank_account', 'Bank account settings saved');
            $this->saveHistory('Bank account settings saved for : ' . $_POST['name']);
            redirect('admin/orders?settings');
        }
        $data['paypal_sandbox'] = $this->Home_admin_model->getValueStore('paypal_sandbox');
        $data['paypal_email'] = $this->Home_admin_model->getValueStore('paypal_email'); 
        $data['shippingAmount'] = $this->Home_admin_model->getValueStore('shippingAmount');
        $data['shippingOrder'] = $this->Home_admin_model->getValueStore('shippingOrder');
        $data['cashondelivery_visibility'] = $this->Home_admin_model->getValueStore('cashondelivery_visibility');
        $data['bank_account'] = $this->Orders_model->getBankAccountSettings();
        $this->load->view('_parts/header', $head);
        $this->load->view('ecommerce/orders', $data);
        $this->load->view('_parts/footer');
        if ($page == 0) {
            $this->saveHistory('Go to orders page');
        }
    }

    public function deleteOrder($id)
    {
        $id = (int) $id;
        if($id == 0) {
            redirect('admin/orders');
        }
        
        $this->Orders_model->deleteOrder($id);
        redirect('admin/orders');
    }

    public function changeOrdersOrderStatus()
    {
        $this->login_check();

        $result = false;
        $sendedVirtualProducts = true;
        $metaBefore = $this->Orders_model->getOrderMeta((int) $_POST['the_id']);
        $virtualProducts = $this->Home_admin_model->getValueStore('virtualProducts');
        /*
         * If we want to use Virtual Products
         * Lets send email with download links to user email
         * In error logs will be saved if cant send email from PhpMailer
         */
        if ($virtualProducts == 1) {
            if ($_POST['to_status'] == 1) {
                $sendedVirtualProducts = $this->sendVirtualProducts();
            }
        }

        if ($sendedVirtualProducts == true) {
            $result = $this->Orders_model->changeOrderStatus($_POST['the_id'], $_POST['to_status']);
        }

        if (
            $result == true
            && isset($_POST['to_status']) && (int) $_POST['to_status'] === 1
            && isset($metaBefore['processed']) && (int) $metaBefore['processed'] !== 1
            && isset($_POST['userEmail']) && filter_var($_POST['userEmail'], FILTER_VALIDATE_EMAIL)
        ) {
            $metaAfter = $this->Orders_model->getOrderMeta((int) $_POST['the_id']);
            $this->sendOrderProcessedMail($_POST['userEmail'], $metaAfter);
        }

        if ($result == true && $sendedVirtualProducts == true) {
            echo 1;
        } else {
            echo 0;
        }
        $this->saveHistory('Change status of Order Id ' . $_POST['the_id'] . ' to status ' . $_POST['to_status']);
    }

    private function sendOrderProcessedMail($userEmail, $orderMeta = array())
    {
        $orderNumber = isset($orderMeta['order_id']) ? $orderMeta['order_id'] : '';
        $shopUrl = rtrim(base_url(), '/');
        $subject = 'Order #' . $orderNumber . ' is completed';
        $message = "Xin chao,\n\n";
        $message .= "Don hang #" . $orderNumber . " cua ban da duoc xu ly hoan tat.\n";
        $message .= "Cam on ban da mua hang tai " . $shopUrl . "\n\n";
        $message .= "Neu can ho tro them, vui long lien he shop.\n";

        $sent = $this->sendmail->sendTo($userEmail, 'Customer', $subject, $message);
        if ($sent) {
            log_message('info', 'Processed order email sent to ' . $userEmail . ' for order ' . $orderNumber);
        }
    }

    private function sendVirtualProducts()
    {
        if (!isset($_POST['products']) || $_POST['products'] === '') {
            return true;
        }

        $products = @unserialize(html_entity_decode($_POST['products'], ENT_QUOTES, 'UTF-8'), ['allowed_classes' => false]);
        if (!is_array($products)) {
            log_message('error', 'Invalid order products payload in sendVirtualProducts().');
            return true;
        }

        foreach ($products as $product_id => $product_quantity) {
            $productInfo = null;

            /*
             * New order format stores product_info directly in serialized data.
             */
            if (is_array($product_quantity) && isset($product_quantity['product_info']) && is_array($product_quantity['product_info'])) {
                $productInfo = $product_quantity['product_info'];
            } elseif ((int) $product_id > 0) {
                /*
                 * Backward-compatible support for old format: product_id => quantity.
                 */
                $productInfo = modules::run('admin/ecommerce/products/getProductInfo', (int) $product_id);
            }

            if (!is_array($productInfo) || empty($productInfo['virtual_products'])) {
                continue;
            }

            if (!filter_var($_POST['userEmail'], FILTER_VALIDATE_EMAIL)) {
                log_message('error', 'Ivalid customer email address! Cant send him virtual products!');
                return false;
            }

            $result = $this->sendmail->sendTo($_POST['userEmail'], 'Dear Customer', 'Virtual products', $productInfo['virtual_products']);
            return $result;
        }

        return true;
    }

}
