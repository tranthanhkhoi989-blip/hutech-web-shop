<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
|--------------------------------------------------------------------------
| SMTP Mailer Config
|--------------------------------------------------------------------------
| Gmail example:
| - host: smtp.gmail.com
| - port: 587
| - encryption: tls
| - username: your_gmail@gmail.com
| - password: your 16-char Google App Password (NOT normal Gmail password)
*/
$config['mailer'] = array(
    'host' => 'smtp.gmail.com',
    'port' => 587,
    'encryption' => 'tls',
    'smtp_auth' => true,
    'username' => 'your_email@gmail.com',
    'password' => 'your_app_password',
    'from_email' => 'your_email@gmail.com',
    'from_name' => 'LikeFood Shop'
);
