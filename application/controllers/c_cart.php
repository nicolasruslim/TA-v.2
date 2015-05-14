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
     		$this->load->model('m_cart');
			$data['amount_item_in_cart']=$this->m_cart->get_amount_item_in_cart($session_data['id']);
			$data['items_in_cart']=$this->m_cart->get_items_in_cart($session_data['id']);
     		$this->load->view('view_cart', $data);
   		}
   		else
   		{
     		//If no session, redirect to login page
     		redirect('c_login', 'refresh');
   		}
 	}

 	public function insert_product_into_cart($product_id)
	{
		$this->load->helper(array('form', 'url'));
		$this->load->library('form_validation');

		if($this->session->userdata('logged_in'))
   		{
   			$this->load->helper(array('form', 'url'));
			$this->load->library('form_validation');
			$this->form_validation->set_rules('quantity'.$product_id, 'Quantity', 'greater_than[0]');

			if ($this->form_validation->run() == FALSE)
			{
				$this->load->view('c_main');
			}
			else
			{				
				$this->load->model('m_cart');
				$id_product_size_price = $_POST['product_size_price'];
				$quantity = $_POST['quantity'];
				$data_input = array(
					'customer_id' => $session_data['id'],
					'product_id' => $product_id,
					'id_product_size_price' => $id_product_size_price ,
					'quantity' => $quantity,
				);
				$this->m_cart->insert_product_into_cart($data_input);
				redirect('c_cart', 'refresh');
			}
		}
		else
   		{
     		//If no session, redirect to login page
     		redirect('c_login', 'refresh');
   		}
	}

	public function insert_product_composition_into_cart($recipe_id)
	{
		if($this->session->userdata('logged_in'))
      	{
	        $session_data = $this->session->userdata('logged_in');
	        $data['username'] = $session_data['username'];
	        $data['id'] = $session_data['id'];
	        $this->load->model('m_cart');
	        $this->m_cart->insert_recipe_composition_to_cart($recipe_id,$data['id']);
			redirect('c_cart', 'refresh');
		}
		else
   		{
     		//If no session, redirect to login page
     		redirect('c_login', 'refresh');
   		}
	}

	public function checkout(){
		if($this->session->userdata('logged_in'))
   		{
   			$session_data = $this->session->userdata('logged_in');
   			$data['username'] = $session_data['username'];
   			$customer_id=$session_data['id'];
     		$this->load->model('m_cart');
			$this->m_cart->checkout($customer_id);
   			redirect('c_cart/view_orders', 'refresh');
		}
		else
   		{
     		//If no session, redirect to login page
     		redirect('c_login', 'refresh');
   		}
	}

	public function view_orders(){
		if($this->session->userdata('logged_in'))
   		{
   			$session_data = $this->session->userdata('logged_in');
   			$data['username'] = $session_data['username'];
   			$customer_id=$session_data['id'];
     		$this->load->model('m_cart');
     		$data = $this->m_cart->get_orders($customer_id);
     		$this->load->view('view_orders', $data);
		}
		else
   		{
     		//If no session, redirect to login page
     		redirect('c_login', 'refresh');
   		}
	}	
}