<?php
class C_main extends CI_Controller{
	
	function _construct()
	{
		parent::__construct();
	}
	
	public function index()
	{
		$this->load->view('home');
	}

	public function belanja($type_id)
	{
		$this->load->model('modeldata');
		$data['products']=$this->modeldata->get_products($type_id);
		$this->load->view('belanja',$data);
	}

	public function daftar_resep()
	{
		$this->load->model('modeldata');
		$data['recipes']=$this->modeldata->get_recipes();
		$this->load->view('daftar_resep',$data);
	}

	public function input_resep()
	{
		$this->load->view('form_input_resep');
	}
}
?>