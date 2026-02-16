<?php

if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Public_users_model extends CI_Model
{

    public function countPublicUsers($search = '')
    {
        if ($search !== '') {
            $this->db->group_start();
            $this->db->like('name', $search);
            $this->db->or_like('email', $search);
            $this->db->or_like('phone', $search);
            $this->db->or_like('address', $search);
            $this->db->or_like('city', $search);
            $this->db->or_like('post_code', $search);
            $this->db->or_like('preferred_payment_type', $search);
            $this->db->group_end();
        }
        return $this->db->count_all_results('users_public');
    }

    public function getPublicUsers($limit, $offset, $search = '')
    {
        $this->db->select('users_public.*, (SELECT COUNT(*) FROM orders WHERE orders.user_id = users_public.id) as orders_count');
        if ($search !== '') {
            $this->db->group_start();
            $this->db->like('users_public.name', $search);
            $this->db->or_like('users_public.email', $search);
            $this->db->or_like('users_public.phone', $search);
            $this->db->or_like('users_public.address', $search);
            $this->db->or_like('users_public.city', $search);
            $this->db->or_like('users_public.post_code', $search);
            $this->db->or_like('users_public.preferred_payment_type', $search);
            $this->db->group_end();
        }
        $this->db->order_by('users_public.id', 'DESC');
        $query = $this->db->get('users_public', $limit, $offset);
        return $query->result_array();
    }

    public function deletePublicUser($id)
    {
        $this->db->trans_begin();
        $this->db->where('user_id', $id);
        $this->db->update('orders', array('user_id' => 0));
        $this->db->where('id', $id);
        $this->db->delete('users_public');
        if ($this->db->trans_status() === false) {
            $this->db->trans_rollback();
            return false;
        }
        $this->db->trans_commit();
        return true;
    }
}
