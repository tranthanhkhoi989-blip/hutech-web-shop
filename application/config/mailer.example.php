<?php
defined('BASEPATH') OR exit('No direct script access allowed');

$config['mailer'] = array(
    'host' => 'smtp.gmail.com',
    'port' => 465,
    'encryption' => 'ssl',
    'smtp_auth' => true,
    'username' => 'your_email@gmail.com',
    'password' => 'your_app_password',
    'from_email' => 'no-reply@your-domain.com',
    'from_name' => 'HutechWebShop'
);
