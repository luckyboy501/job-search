<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Alerts extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('alerts_model');
    }

	public function index()
	{
        $params = $this->input->get();
        $email = $params['email'];
        if (isset($email) && $email != '')
        {
            $alerts = $this->alerts_model->get_alerts_list($email);

            $data['alerts'] = $alerts;
            $data['email'] = $email;

            $this->load->view('includes/header', array('title' => 'Email Alerts'));
            $this->load->view('alerts', $data);
            $this->load->view('includes/footer');
        } else {
            redirect('classifieds');
        }
	}

    public function update_email(){
        $params = $this->input->post();

        $this->alerts_model->update_email($params['email'], $params['new_email']);
    }

    public function get_alert()
    {
        $params = $this->input->post();
        echo json_encode($this->alerts_model->get_alert($params['id']));
    }

    public function update_alert(){
		$params = $this->input->post();

		$update_data = array(
			'keyword' => $params['keyword'],
			'region'  => $params['region']
		);

		$this->alerts_model->update_alert($update_data, $params['id']);
	}

    public function insert_alert()
    {
        $params = $this->input->post();
        echo $this->alerts_model->insert_alert($params);
    }

    public function delete_alert()
    {
        $params = $this->input->post();
        $this->alerts_model->delete_alert($params['id']);
    }
}
