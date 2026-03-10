<?php
defined('BASEPATH') OR exit('No direct script access allowed');

if (!function_exists('mailer_env')) {
    function mailer_env($key, $default = '')
    {
        $value = getenv($key);
        if ($value === false || $value === '') {
            return $default;
        }
        return $value;
    }
}

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
    'host' => mailer_env('MAIL_HOST', 'smtp.gmail.com'),
    'port' => (int) mailer_env('MAIL_PORT', '465'),
    'encryption' => mailer_env('MAIL_ENCRYPTION', 'ssl'),
    'smtp_auth' => mailer_env('MAIL_SMTP_AUTH', '1') === '1',
    'username' => mailer_env('MAIL_USERNAME', ''),
    'password' => mailer_env('MAIL_PASSWORD', ''),
    'from_email' => mailer_env('MAIL_FROM_EMAIL', 'no-reply@example.com'),
    'from_name' => mailer_env('MAIL_FROM_NAME', 'HutechWebShop')
);
