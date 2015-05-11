<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
session_start();
class C_main extends CI_Controller {
 
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
     		$this->load->model('modeldata');
			$data['amount_item_in_cart']=$this->modeldata->get_amount_item_in_cart($session_data['id']);
     		$this->load->view('home', $data);
   		}
   		else
   		{
     		//If no session, redirect to login page
     		redirect('c_login', 'refresh');
   		}
 	}
 
 	public function logout()
 	{
   		$this->session->unset_userdata('logged_in');
   		session_destroy();
   		redirect('c_main', 'refresh');
 	}
 
	public function belanja($product_type_id)
	{
		if($this->session->userdata('logged_in'))
   		{
   			$session_data = $this->session->userdata('logged_in');
     		$data['username'] = $session_data['username'];
     		$data['id'] = $session_data['username'];
			$this->load->model('modeldata');
			$data['amount_item_in_cart']=$this->modeldata->get_amount_item_in_cart($session_data['id']);
			$data['products']=$this->modeldata->get_products($product_type_id);
			$data['product_size_price']=$this->modeldata->get_product_size_price();
			$this->load->view('belanja',$data);
		}
		else
   		{
     		//If no session, redirect to login page
     		redirect('c_login', 'refresh');
   		}
   	}

	public function daftar_resep($recipe_type_id)
	{

		if($this->session->userdata('logged_in'))
   		{
   			$session_data = $this->session->userdata('logged_in');
     		$data['username'] = $session_data['username'];
			$this->load->model('modeldata');
			$data['amount_item_in_cart']=$this->modeldata->get_amount_item_in_cart($session_data['id']);
			$data['recipes']=$this->modeldata->get_list_recipes($recipe_type_id);
			$this->load->view('daftar_resep',$data);
		}
		else
   		{
     		//If no session, redirect to login page
     		redirect('c_login', 'refresh');
   		}
	}

	public function resep($recipe_id)
	{
		if($this->session->userdata('logged_in'))
   		{
   			$session_data = $this->session->userdata('logged_in');
     		$data['username'] = $session_data['username'];
			$this->load->model('modeldata');
			$data['recipe']=$this->modeldata->get_recipe_detail($recipe_id);
			$data['recipe_composition']=$this->modeldata->get_recipe_composition($recipe_id);
			$this->load->view('detail_resep',$data);
		}
		else
   		{
     		//If no session, redirect to login page
     		redirect('c_login', 'refresh');
   		}
	}

	public function insert_cart()
	{
		if($this->session->userdata('logged_in'))
   		{
   			$session_data = $this->session->userdata('logged_in');
     		$data['username'] = $session_data['username'];
     		$data['id'] = $session_data['id'];
			$this->load->model('modeldata');
			$data['products']=$this->modeldata->get_products($product_type_id);
			$data['product_size_price']=$this->modeldata->get_product_size_price();
			$this->load->view('belanja',$data);
		}
		else
   		{
     		//If no session, redirect to login page
     		redirect('c_login', 'refresh');
   		}
	}	

	public function input_resep()
	{
		$this->load->view('form_input_resep');
	}
}
?>