<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
session_start();
class C_cart extends CI_Controller {
 
 	function __construct()
 	{
 		parent::__construct();
 	}
 
 	public function index()
 	{
 		if($this->session->userdata('logged_in'))
   		{
     		$session_data = $this->session->userdata('logged_in');
     		$data['username'] = $session_data['username'];
     		$this->load->view('view_cart', $data);
   		}
   		else
   		{
     		//If no session, redirect to login page
     		redirect('c_login', 'refresh');
   		}
 	}
}