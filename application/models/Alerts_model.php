<?php

class Alerts_model extends CI_MODEL
{
    private $tbl_alerts = 'alerts';

    function get_alerts_list($email = '')
    {
        if ($email != '')
        {
            $this->db->where('email', $email);
        }
        $this->db->where('is_reminded', 1);
        $this->db->order_by('email_created_date', 'desc');
        $query = $this->db->get($this->tbl_alerts);
        if ($query->num_rows() > 0) {
            return $result = $query->result_array();
        }
    }

    function get_alert($id)
    {
        $query = $this->db->get_where($this->tbl_alerts, array('id' => $id));

        if ($query->num_rows() > 0) {
            return $result = $query->row_array();
        }
    }

    function update_alert($data, $id)
    {
        $this->db->where('id', $id);
        $this->db->update($this->tbl_alerts, $data);
    }

    function insert_alert($data)
    {
        $this->db->insert($this->tbl_alerts, $data);

        return $this->db->insert_id();
    }

    function update_email_created_date($id)
    {
        return $this->db->where('id', $id)->update($this->tbl_alerts, array('email_created_date' => date("Y-m-d H:i:s"), 'is_reminded' => 1));
    }
}
