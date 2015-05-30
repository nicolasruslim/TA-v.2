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
        $data['id'] = $session_data['id'];
        $this->load->model('modeldata');
        $data['amount_item_in_cart']=$this->modeldata->get_amount_item_in_cart($session_data['id']);
        $data['total_price_in_cart']= $this->modeldata->get_total_price_in_cart($session_data['id']);
        $data['products']=$this->modeldata->get_popular_products();
        $data['products_amount']= $this->modeldata->get_popular_products_amount();
        $data['product_size_price']=$this->modeldata->get_product_size_price();
        $data['city_list']=$this->modeldata->get_city_list();
        $this->load->view('home',$data);
      }elseif ($this->session->userdata('logged_guest')){
        $session_data = $this->session->userdata('logged_guest');
        $data['username'] = 'Guest';
        $data['id'] = $session_data['id'];
        $this->load->model('m_guest');
        $this->load->model('modeldata');
        $data['amount_item_in_cart']=$this->m_guest->get_amount_item_in_cart($session_data['id']);
        $data['total_price_in_cart']= $this->m_guest->get_total_price_in_cart($session_data['id']);
        $data['products']=$this->modeldata->get_popular_products();
        $data['products_amount']= $this->modeldata->get_popular_products_amount();
        $data['product_size_price']=$this->modeldata->get_product_size_price();
        $data['city_list']=$this->modeldata->get_city_list();
        $this->load->view('home',$data);
      }else{
        $this->load->model('m_guest');
        $session = array('id' => $this->m_guest->newGuest());
        $session_data = $this->session->set_userdata('logged_guest', $session);
        $this->load->model('modeldata');
        $data['products']=$this->modeldata->get_popular_products();
        $data['products_amount']= $this->modeldata->get_popular_products_amount();
        $data['product_size_price']=$this->modeldata->get_product_size_price();
        $data['city_list']=$this->modeldata->get_city_list();
        $data['id'] = $session_data['id'];
        $data['amount_item_in_cart']=$this->m_guest->get_amount_item_in_cart($session_data['id']);
        $data['total_price_in_cart']= $this->m_guest->get_total_price_in_cart($session_data['id']);
        $this->load->view('home',$data);
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
     		$data['id'] = $session_data['id'];
  			$this->load->model('modeldata');
  			$data['amount_item_in_cart']=$this->modeldata->get_amount_item_in_cart($session_data['id']);
        $data['total_price_in_cart']= $this->modeldata->get_total_price_in_cart($session_data['id']);
  			$data['products']=$this->modeldata->get_products($product_type_id);
  			$data['product_size_price']=$this->modeldata->get_product_size_price();
        $data['products_amount']= $this->modeldata->get_category_products_amount($product_type_id);
        $data['product_category_name'] = $this->modeldata->get_category_name($product_type_id);
  			$this->load->view('belanja',$data);
		  }elseif ($this->session->userdata('logged_guest')){
        $session_data = $this->session->userdata('logged_guest');
        $data['username'] = 'Guest';
        $data['id'] = $session_data['id'];
        $this->load->model('m_guest');
        $this->load->model('modeldata');
        $data['amount_item_in_cart']=$this->m_guest->get_amount_item_in_cart($session_data['id']);
        $data['total_price_in_cart']= $this->m_guest->get_total_price_in_cart($session_data['id']);
        $data['products']=$this->modeldata->get_products($product_type_id);
        $data['products_amount']= $this->modeldata->get_popular_products_amount();
        $data['product_size_price']=$this->modeldata->get_product_size_price();
        $data['city_list']=$this->modeldata->get_city_list();
        $data['product_category_name'] = $this->modeldata->get_category_name($product_type_id);
        $this->load->view('belanja',$data);
      }else{
        $this->load->model('m_guest');
        $session = array('id' => $this->m_guest->newGuest());
        $session_data = $this->session->set_userdata('logged_guest', $session);
        $this->load->model('modeldata');
        $data['products']=$this->modeldata->get_products($product_type_id);
        $data['products_amount']= $this->modeldata->get_popular_products_amount();
        $data['product_size_price']=$this->modeldata->get_product_size_price();
        $data['city_list']=$this->modeldata->get_city_list();
        $data['id'] = $session_data['id'];
        $data['amount_item_in_cart']=$this->m_guest->get_amount_item_in_cart($session_data['id']);
        $data['total_price_in_cart']= $this->m_guest->get_total_price_in_cart($session_data['id']);
        $data['product_category_name'] = $this->modeldata->get_category_name($product_type_id);
        $this->load->view('belanja',$data);
      }
   	}

	public function daftar_resep($recipe_type_id)
	{

		if($this->session->userdata('logged_in')){
   		$session_data = $this->session->userdata('logged_in');
     	$data['username'] = $session_data['username'];
			$this->load->model('modeldata');
			$data['amount_item_in_cart']=$this->modeldata->get_amount_item_in_cart($session_data['id']);
      $data['total_price_in_cart']= $this->modeldata->get_total_price_in_cart($session_data['id']);
			$data['recipes']=$this->modeldata->get_list_recipes($recipe_type_id);
			$data['recipe_category_name'] = $this->modeldata->get_category_name2($recipe_type_id);
			$this->load->view('resep',$data);
		}elseif ($this->session->userdata('logged_guest')){
      $session_data = $this->session->userdata('logged_guest');
      $data['username'] = 'Guest';
      $data['id'] = $session_data['id'];
      $this->load->model('m_guest');
      $this->load->model('modeldata');
      $data['amount_item_in_cart']=$this->m_guest->get_amount_item_in_cart($session_data['id']);
      $data['total_price_in_cart']= $this->m_guest->get_total_price_in_cart($session_data['id']);
      $data['recipes']=$this->modeldata->get_list_recipes($recipe_type_id);
      $data['recipe_category_name'] = $this->modeldata->get_category_name2($recipe_type_id);
      $data['city_list']=$this->modeldata->get_city_list();
      $this->load->view('resep',$data);
    }else{
      $this->load->model('m_guest');
      $session = array('id' => $this->m_guest->newGuest());
      $session_data = $this->session->set_userdata('logged_guest', $session);
      $this->load->model('modeldata');
      $data['city_list']=$this->modeldata->get_city_list();
      $data['id'] = $session_data['id'];
      $data['amount_item_in_cart']=$this->m_guest->get_amount_item_in_cart($session_data['id']);
      $data['total_price_in_cart']= $this->m_guest->get_total_price_in_cart($session_data['id']);
      $data['recipes']=$this->modeldata->get_list_recipes($recipe_type_id);
      $data['recipe_category_name'] = $this->modeldata->get_category_name2($recipe_type_id);
      $this->load->view('resep',$data);
    }
	}

	public function detail_resep($recipe_id)
	{
		if($this->session->userdata('logged_in')){
   		$session_data = $this->session->userdata('logged_in');
     	$data['username'] = $session_data['username'];
			$this->load->model('modeldata');
			$data['recipe']=$this->modeldata->get_recipe_detail($recipe_id);
			$data['recipe_composition']=$this->modeldata->get_recipe_composition($recipe_id);
			$this->load->view('detail_resep',$data);
	  }elseif ($this->session->userdata('logged_guest')){
      $session_data = $this->session->userdata('logged_guest');
      $data['username'] = 'Guest';
      $data['id'] = $session_data['id'];
      $this->load->model('m_guest');
      $this->load->model('modeldata');
      $data['recipe']=$this->modeldata->get_recipe_detail($recipe_id);
      $data['recipe_composition']=$this->modeldata->get_recipe_composition($recipe_id);
      $data['city_list']=$this->modeldata->get_city_list();
      $this->load->view('detail_resep',$data);
    }else{
      $this->load->model('m_guest');
      $session = array('id' => $this->m_guest->newGuest());
      $session_data = $this->session->set_userdata('logged_guest', $session);
      $this->load->model('modeldata');
      $data['city_list']=$this->modeldata->get_city_list();
      $data['id'] = $session_data['id'];
      $data['recipe']=$this->modeldata->get_recipe_detail($recipe_id);
      $data['recipe_composition']=$this->modeldata->get_recipe_composition($recipe_id);
      $this->load->view('detail_resep',$data);
    }
	}

	public function input_resep()
	{
		$this->load->view('form_input_resep');
	}

  public function buy_recipe_composition($recipe_id)
  {
   if($this->session->userdata('logged_in'))
      {
        $session_data = $this->session->userdata('logged_in');
        $data['username'] = $session_data['username'];
        $data['id'] = $session_data['id'];
        $this->load->model('m_cart');
        $data['composition_list'] = $this->m_cart->get_recipe_composition($recipe_id);
        $this->load->view('buy_recipe_composition',$data);
    }
    else
      {
        //If no session, redirect to login page
        redirect('c_login', 'refresh');
      }   
  }

  public function register(){
    $this->load->view('register');
  }

  public function add_customer(){
    $this->load->model('m_user');
    $data['nama_lengkap']= $_POST['nama_lengkap'];
    $data['email']= $_POST['email'];
    $data['alamat']= $_POST['alamat'];
    $data['hp']= $_POST['hp'];
    $data['tanggallahir']= $_POST['tanggallahir'];
    $data['username']= $_POST['username'];
    $data['password']= $_POST['password'];
    $penyakit="";
    if(!empty($_POST['penyakit'])){
      // Loop to store and display values of individual checked checkbox.
      foreach($_POST['penyakit'] as $sakit){
        $penyakit=$penyakit.$sakit.',';
      }
    }
    $data['penyakit']= $penyakit;
    $this->m_user->add_customer($data);
    $this->load->view('register_confirmation',$data);
  }
}
?>