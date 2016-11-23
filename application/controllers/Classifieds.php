<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Classifieds extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('classifieds_model');
    }

	public function index()
	{
		$classifieds = $this->classifieds_model->get_classifieds_list();
        $regions = $this->classifieds_model->get_regions();

		$data['classifieds_list'] = $classifieds;
        $data['regions'] = $regions;

		$this->load->view('includes/header', array('title' => 'Jobs'));
		$this->load->view('classifieds/list', $data);
		$this->load->view('includes/footer');
	}

	public function edit_class($id){
		$data['classified'] = $this->classifieds_model->get_classified($id);

		$this->load->view('includes/header', array('title' => 'Job Edit'));
		$this->load->view('classifieds/edit', $data);
		$this->load->view('includes/footer');
	}

	public function update_class(){
		$params = $this->input->post();

		$update_data = array(
			'post_id'	=>	$params['post_id'],
			'price'	=>	$params['price'],
			'title'	=>	$params['title']
		);

		$this->classifieds_model->update_classified($update_data, $params['classified_id']);

		redirect('classifieds');
	}

    /**
     * @return object
     */
    public function search_classifieds()
    {
        $params = $this->input->get();
        $keyword = '';
        $region = '';
        if ($params) {
            $keyword = $params['keyword'];
            $region = $params['region'];
        }
        $classifieds = $this->classifieds_model->get_classifieds_list($keyword, $region);
        $regions = $this->classifieds_model->get_regions();
        $data['region'] = $region;
        $data['keyword'] = $keyword;
        $data['regions'] = $regions;
        $data['classifieds_list'] = $classifieds;

        $this->load->view('includes/header', array('title' => 'Jobs'));
        $this->load->view('classifieds/list', $data);
        $this->load->view('includes/footer');
    }
}
