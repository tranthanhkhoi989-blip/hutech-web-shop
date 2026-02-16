<?php

defined('BASEPATH') OR exit('No direct script access allowed');
require 'PHPMailer/PHPMailerAutoload.php';

class SendMail
{

    public $mail;
    private $fromEmail = 'email@example.com';
    private $fromName = 'My Name';
    private $enabled = false;

    public function __construct()
    {
		$CI = &get_instance();
        $CI->config->load('mailer', true);
        $mailerConfig = (array) $CI->config->item('mailer');

		$this->mail = new PHPMailer;
		$this->mail->isSMTP();
		// $this->mail->SMTPDebug = 2;
		$this->mail->Debugoutput = 'html';
		$this->mail->Host = isset($mailerConfig['host']) ? $mailerConfig['host'] : 'smtp.gmail.com';
		$this->mail->Port = isset($mailerConfig['port']) ? (int) $mailerConfig['port'] : 587;
		$this->mail->SMTPSecure = isset($mailerConfig['encryption']) ? $mailerConfig['encryption'] : 'tls';
		$this->mail->SMTPAuth = isset($mailerConfig['smtp_auth']) ? (bool) $mailerConfig['smtp_auth'] : true;
		$this->mail->Username = isset($mailerConfig['username']) ? (string) $mailerConfig['username'] : '';
		$this->mail->Password = isset($mailerConfig['password']) ? (string) $mailerConfig['password'] : '';
		$this->mail->CharSet = 'UTF-8';

        $this->fromEmail = isset($mailerConfig['from_email']) ? (string) $mailerConfig['from_email'] : 'email@example.com';
        $this->fromName = isset($mailerConfig['from_name']) ? (string) $mailerConfig['from_name'] : 'My Name';
        $this->enabled = !empty($this->mail->Username) && !empty($this->mail->Password) && !empty($this->fromEmail);
    }

    public function clearAddresses()
    {
        if(method_exists($this->mail, 'clearAddresses')) {
            $this->mail->clearAddresses();
        }
    }

    public function sendTo($toEmail, $recipientName, $subject, $msg)
    {
        if (!$this->enabled) {
            log_message('error', 'Mailer is not configured. Please update application/config/mailer.php');
            return false;
        }

        $this->mail->clearAddresses();
        $this->mail->clearAttachments();
        $this->mail->setFrom($this->fromEmail, $this->fromName);
        $this->mail->addAddress($toEmail, $recipientName);
        //$this->mail->isHTML(true); 
        $this->mail->Subject = $subject;
        $this->mail->Body = $msg;
        if (!$this->mail->send()) {
            log_message('error', 'Mailer Error: ' . $this->mail->ErrorInfo);
            return false;
        }
        return true;
    }

}
