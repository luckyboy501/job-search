<?php

class Classifieds_model extends CI_MODEL
{
	private $table = 'classifieds';
	
	function get_classifieds_list($keyword='', $region='', $from='')
    {
        if ($region <> '') {
            $this->db->where('listing_region', $region);
        }
	    if ($keyword <> '') {
            $this->db->where('(title LIKE "%'. $keyword. '%" OR listing_category LIKE "%'. $keyword. '%")');
        }
        if ($from <> '') {
            $this->db->where('scrapped_date_time >= "'. $from. '"');
        }
		$query = $this->db->get($this->table);
		if ($query->num_rows() > 0)
		{
			return $result = $query->result_array();
		}
	}

	function get_classified($id)
    {
		$query = $this->db->get_where($this->table, array('id'=>$id));

		if ($query->num_rows() > 0)
		{
			return $result = $query->row_array();
		}
	}

    function get_regions()
    {
        $this->db->distinct();
        $this->db->select('listing_region');
        $this->db->where('listing_region <> ""');
        $query = $this->db->get($this->table);
        if ($query->num_rows() > 0)
        {
            return $result = $query->result_array();
        }
    }

    function update_classified($data, $id)
    {
		$this->db->where('id', $id);
		$this->db->update($this->table, $data); 
	}

    /*************************************************/
	function insert_data($table, $data)
	{
		$this->db->insert($table, $data);
		
		return $this->db->insert_id(); 
	}
	
	function update_data($table, $data, $field, $value)
	{
		$this->db->where($field, $value);
		$this->db->update($table, $data); 
	}
	function update_data_where($table, $data, $where)
	{
		$this->db->update($table, $data, $where); 
		//echo '<br />--------------'.$this->db->last_query().'<br />';
	}
	function delete_where($table, $data)
	{
		$this->db->delete($table, $data);
	}
	
}