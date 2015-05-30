<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
 
class C_login extends CI_Controller {
 
 function __construct()
 {
   parent::__construct();
 }
 
	function index()
 	{
		$this->load->helper(array('form'));
   		$this->load->view('login');
	}

	public function verify_login()
	{
		$this->load->model('m_user','',TRUE);
		$this->load->library('form_validation');
 
   		$this->form_validation->set_rules('username', 'Username', 'trim|required|xss_clean');
   		$this->form_validation->set_rules('password', 'Password', 'trim|required|xss_clean|callback_check_database');

   		if($this->form_validation->run() == FALSE)
   		{
	     	redirect('c_main', 'refresh');
	   	}
	   	else
	   	{
	    	//Pindahkan barang di keranjang guest ke keranjang user
	     	redirect('c_main', 'refresh');
	   	}
	}

	function check_database($password)
 	{
	  	//Field validation succeeded.  Validate against database
	  	$username = $this->input->post('username');
	 
	   	//query the database
	   	$result = $this->m_user->login($username, $password);
	 
	   	if($result)
	   	{
	    	$sess_array = array();
	     	foreach($result as $row)
	     	{
	       		$sess_array = array(
	         	'id' => $row->customer_id,
	         	'username' => $row->customer_username
	       		);
	       		$this->session->set_userdata('logged_in', $sess_array);
	    	}
	     	return TRUE;
	   	}
	   	else
	   	{
	    	$this->form_validation->set_message('check_database', 'Invalid username or password');
	     	return false;
	   	}
	}
}?>