<?php
class C_main extends CI_Controller{
	
	function _construct()
	{
		parent::__construct();
		$this->load->model('modeldata');
	}
	
	public function index()
	{
		$this->load->view('home');
	}

	public function belanja($tipe)
	{
		 $data['tipe'] = $tipe;
		$this->load->view('belanja',$data);
	}
}

?>