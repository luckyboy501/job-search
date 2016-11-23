<?php

class Alerts_model extends CI_MODEL
{
    private $table = 'alerts';

    function get_alerts_list($email = '')
    {
        if ($email != '')
        {
            $this->db->where('email', $email);
        }
        $this->db->where('is_reminded', 1);
        $this->db->order_by('email_created_date', 'desc');
        $query = $this->db->get($this->table);
        if ($query->num_rows() > 0) {
            return $result = $query->result_array();
        }
    }

    function get_alert($id)
    {
        $query = $this->db->get_where($this->table, array('id' => $id));

        if ($query->num_rows() > 0) {
            return $result = $query->row_array();
        }
    }

    function update_alert($data, $id)
    {
        $this->db->where('id', $id);
        $this->db->update($this->table, $data);
    }

    function update_email($email, $new_email)
    {
        $this->db->where('email', $email);
        $this->db->update($this->table, array('email'=>$new_email));
    }

    function delete_alert($id)
    {
        $this->db->delete($this->table, array('id' => $id));
    }

    function insert_alert($data)
    {
        $this->db->insert($this->table, $data);

        return $this->db->insert_id();
    }

    function update_email_created_date($id)
    {
        return $this->db->where('id', $id)->update($this->table, array('email_created_date' => date("Y-m-d H:i:s"), 'is_reminded' => 1));
    }
}
