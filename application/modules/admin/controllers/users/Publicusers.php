<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Publicusers extends ADMIN_Controller
{

    private $num_rows = 20;

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Public_users_model');
    }

    public function index($page = 0)
    {
        $this->login_check();

        $head = array();
        $data = array();
        $head['title'] = 'Administration - Public Users';
        $head['description'] = 'Public Users';
        $head['keywords'] = 'users, customers';

        $search = isset($_GET['search']) ? trim($_GET['search']) : '';
        $rowscount = $this->Public_users_model->countPublicUsers($search);
        $data['users'] = $this->Public_users_model->getPublicUsers($this->num_rows, $page, $search);
        $data['search'] = $search;
        $data['links_pagination'] = pagination('admin/publicusers', $rowscount, $this->num_rows, 3);

        $this->load->view('_parts/header', $head);
        $this->load->view('users/publicUsers', $data);
        $this->load->view('_parts/footer');

        if ($page == 0) {
            $this->saveHistory('Go to public users page');
        }
    }

    public function delete($id)
    {
        $this->login_check();
        $id = (int) $id;
        if ($id < 1) {
            redirect('admin/publicusers');
        }

        $this->Public_users_model->deletePublicUser($id);
        $this->saveHistory('Delete public user id ' . $id);
        redirect('admin/publicusers');
    }
}

