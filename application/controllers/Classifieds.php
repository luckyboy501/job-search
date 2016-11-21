<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Classifieds extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function index()
	{
		$this->load->model('classifieds_model');
		$classifieds = $this->classifieds_model->get_classifieds_list();

		$data['classifieds_list'] = $classifieds;

		$this->load->view('includes/header', array('title' => 'Jobs in USA'));
		$this->load->view('classifieds/list', $data);
		$this->load->view('includes/footer');
	}

	public function edit_class($id){
		$this->load->model('classifieds_model');
		$data['classified'] = $this->classifieds_model->get_classified($id);

		$this->load->view('includes/header');
		$this->load->view('classifieds/edit', $data);
		$this->load->view('includes/footer');
	}

	public function update_class(){
		$params = $this->input->post();
		$this->load->model('classifieds_model');

		$update_data = array(
			'post_id'	=>	$params['post_id'],
			'price'	=>	$params['price'],
			'title'	=>	$params['title']
		);

		$this->classifieds_model->update_classified($update_data, $params['classified_id']);

		redirect('classifieds');

	}
}
