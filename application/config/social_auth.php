<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
|--------------------------------------------------------------------------
| Social Login Configuration
|--------------------------------------------------------------------------
| Set enabled => true and fill client_id/client_secret for each provider.
| Redirect URI must match exactly the URI configured in provider console.
*/
$config['social_auth'] = array(
    'facebook' => array(
        'enabled' => false,
        'client_id' => '',
        'client_secret' => '',
        'redirect_uri' => ''
    ),
    'google' => array(
        'enabled' => false,
        'client_id' => '',
        'client_secret' => '',
        'redirect_uri' => ''
    )
);

