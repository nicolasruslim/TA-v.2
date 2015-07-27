<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
session_start();
class C_main extends CI_Controller {
 
 	function __construct()
 	{
 		parent::__construct();
    $this->load->model('modeldata');
    $this->load->model('m_product');
    $this->load->model('m_recipe');
    $this->load->model('m_recommendation');
    $this->load->model('m_rating');
 	}
 
 	public function index()
 	{
   		if($this->session->userdata('logged_in'))
      {
        $session_data = $this->session->userdata('logged_in');
        $data['username'] = $session_data['username'];
        $data['id'] = $session_data['id'];
        
        $data['amount_item_in_cart']=$this->modeldata->get_amount_item_in_cart($session_data['id']);
        $data['total_price_in_cart']= $this->modeldata->get_total_price_in_cart($session_data['id']);
        $data['products']=$this->m_product->get_popular_products();
        $data['products_amount']= $this->m_product->get_popular_products_amount();
        $data['product_size_price']=$this->m_product->get_product_size_price();
        $data['city_list']=$this->modeldata->get_city_list();
        $this->load->view('home',$data);
      }elseif ($this->session->userdata('logged_guest')){
        $session_data = $this->session->userdata('logged_guest');
        $data['username'] = 'Guest';
        $data['id'] = $session_data['id'];
        $this->load->model('m_guest');
        $data['amount_item_in_cart']=$this->m_guest->get_amount_item_in_cart($session_data['id']);
        $data['total_price_in_cart']= $this->m_guest->get_total_price_in_cart($session_data['id']);
        $data['products']=$this->m_product->get_popular_products();
        $data['products_amount']= $this->m_product->get_popular_products_amount();
        $data['product_size_price']=$this->m_product->get_product_size_price();
        $data['city_list']=$this->modeldata->get_city_list();
        $this->load->view('home',$data);
      }else{
        $this->load->model('m_guest');
        $session = array('id' => $this->m_guest->newGuest());
        $session_data = $this->session->set_userdata('logged_guest', $session);
        redirect('c_main', 'refresh');
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
  			$data['amount_item_in_cart']=$this->modeldata->get_amount_item_in_cart($session_data['id']);
        $data['total_price_in_cart']= $this->modeldata->get_total_price_in_cart($session_data['id']);
  			$data['products']=$this->m_product->get_products($product_type_id);
  			$data['product_size_price']=$this->m_product->get_product_size_price();
        $data['products_amount']= $this->m_product->get_category_products_amount($product_type_id);
        $data['product_category_name'] = $this->modeldata->get_category_name($product_type_id);
  			$this->load->view('belanja',$data);
		  }elseif ($this->session->userdata('logged_guest')){
        $session_data = $this->session->userdata('logged_guest');
        $data['username'] = 'Guest';
        $data['id'] = $session_data['id'];
        $this->load->model('m_guest');
        $data['amount_item_in_cart']=$this->m_guest->get_amount_item_in_cart($session_data['id']);
        $data['total_price_in_cart']= $this->m_guest->get_total_price_in_cart($session_data['id']);
        $data['products']=$this->m_product->get_products($product_type_id);
        $data['products_amount']= $this->m_product->get_popular_products_amount();
        $data['product_size_price']=$this->m_product->get_product_size_price();
        $data['city_list']=$this->modeldata->get_city_list();
        $data['product_category_name'] = $this->modeldata->get_category_name($product_type_id);
        $this->load->view('belanja',$data);
      }else{
        $this->load->model('m_guest');
        $session = array('id' => $this->m_guest->newGuest());
        $session_data = $this->session->set_userdata('logged_guest', $session);
        redirect('c_main/belanja/'.$product_type_id, 'refresh');
      }
   	}

	public function daftar_resep($recipe_type_id)
	{

		if($this->session->userdata('logged_in')){
   		$session_data = $this->session->userdata('logged_in');
     	$data['username'] = $session_data['username'];
			$data['amount_item_in_cart']=$this->modeldata->get_amount_item_in_cart($session_data['id']);
      $data['total_price_in_cart']= $this->modeldata->get_total_price_in_cart($session_data['id']);
			$data['recipes']=$this->m_recipe->get_list_recipes($recipe_type_id);
			$data['recipe_category_name'] = $this->modeldata->get_category_name2($recipe_type_id);
			$this->load->view('resep',$data);
		}elseif ($this->session->userdata('logged_guest')){
      $session_data = $this->session->userdata('logged_guest');
      $data['username'] = 'Guest';
      $data['id'] = $session_data['id'];
      $this->load->model('m_guest');
      $data['amount_item_in_cart']=$this->m_guest->get_amount_item_in_cart($session_data['id']);
      $data['total_price_in_cart']= $this->m_guest->get_total_price_in_cart($session_data['id']);
      $data['recipes']=$this->m_recipe->get_list_recipes($recipe_type_id);
      $data['recipe_category_name'] = $this->modeldata->get_category_name2($recipe_type_id);
      $data['city_list']=$this->modeldata->get_city_list();
      $this->load->view('resep',$data);
    }else{
      $this->load->model('m_guest');
      $session = array('id' => $this->m_guest->newGuest());
      $session_data = $this->session->set_userdata('logged_guest', $session);
      redirect('c_main/daftar_resep/'.$recipe_type_id, 'refresh');
    }
	}

	public function detail_resep($recipe_id)
	{
		if($this->session->userdata('logged_in')){
      $session_data = $this->session->userdata('logged_in');
     	$data['username'] = $session_data['username'];
      $data['rating_status'] = $this->m_rating->get_rating_status($session_data['id'], $recipe_id);
			$data['recipe'] = $this->m_recipe->get_recipe_detail($recipe_id);
			$data['recipe_composition']=$this->m_recipe->get_recipe_composition($recipe_id);
			$this->load->view('detail_resep',$data);
	  }elseif ($this->session->userdata('logged_guest')){
      $session_data = $this->session->userdata('logged_guest');
      $data['username'] = 'Guest';
      $data['rating_status'] = $this->m_rating->get_rating_status($session_data['id'], $recipe_id);
      $data['id'] = $session_data['id'];
      $this->load->model('m_guest');
      $data['recipe']=$this->m_recipe->get_recipe_detail($recipe_id);
      $data['recipe_composition']=$this->m_recipe->get_recipe_composition($recipe_id);
      $data['city_list']=$this->modeldata->get_city_list();
      $this->load->view('detail_resep',$data);
    }else{
      $this->load->model('m_guest');
      $session = array('id' => $this->m_guest->newGuest());
      $session_data = $this->session->set_userdata('logged_guest', $session);
      redirect('c_main/detail_resep/'.$recipe_id, 'refresh');
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
    $data['illness'] = $this->m_recommendation->get_illness();
    $this->load->view('register', $data);
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
    $customer_id = $this->m_user->add_customer($data);
    if(!empty($_POST['penyakit'])){
      // Loop to store and display values of individual checked checkbox.
      foreach($_POST['penyakit'] as $sakit){
        $this->m_user->insert_customer_illness($customer_id, $sakit);
      }
    }
    $this->load->view('register_confirmation',$data);
  }

  public function give_rating($recipe_id){
    if($this->session->userdata('logged_in'))
      {
        $session_data = $this->session->userdata('logged_in');
        $data['username'] = $session_data['username'];
        $data['id'] = $session_data['id'];
        $rating_value = $_POST['rating'];
        $this->m_rating->give_rating($session_data['id'], $recipe_id, $rating_value);
        redirect('c_main/detail_resep/'.$recipe_id, 'refresh');
    }
  else
    {
        //If no session, redirect to login page
        redirect('c_login', 'refresh');
    }   
  }

  public function generate_prediction(){
    $session_data = $this->session->userdata('logged_in');
    $data['username'] = $session_data['username'];
    $data['id'] = $session_data['id'];
    $recipe_customer_rating_prediction = array();
    $recipes = $this->m_recipe->get_all_recipes();

    //Cek setiap resep :
    foreach ($recipes as $recipe) {
      //1. Apakah user sudah pernah melakukan rating terhadap resep ini
          // Jika sudah maka lewatkan
      $rating_status = $this->m_rating->get_rating_status($data['id'],$recipe->recipe_id);
      if(!($rating_status)){
        $dividend = 0;
        $divisor = 0;
        
        //Dividend = Jumlah dari 'rating produk yang sama' dikalikan 'similarity produk yang sama'
        // Divisor = Jumlah dari 'similarity produk yang sama'

        //Kesamaan minimum di set 0.6
        //Diperoleh resep yang serupa dengan resep yang diacu
        $similar_recipes = $this->m_recommendation->get_similar_recipes($recipe->recipe_id);

        

        foreach ($similar_recipes as $similar_recipe) {
          //Jika id resep = recipe1_id maka ambil recipe2_id.
          //Jika id resep = recipe2_id maka ambil recipe1_id.  
          if($similar_recipe->recipe1_id = $recipe->recipe_id){
            $similar_recipe_id = $similar_recipe->recipe2_id;
          }
          else{
           $similar_recipe_id = $similar_recipe->recipe2_id;
          }

          //Peroleh nilai rating konsumen terhadap item yang serupa
          $user_rating = $this->m_rating->get_customer_rating($data['id'],$similar_recipe_id);


          if(!empty($user_rating)){
            $dividend = $dividend + ($similar_recipe->similarity * $user_rating->rating );
            $divisor = $divisor + abs($similar_recipe->similarity);
          }
        }
        if($divisor == 0 ){
            $prediction_value = 0;
        }
        else{
          $prediction_value = $dividend/$divisor;
        }
        array_push($recipe_customer_rating_prediction, array($data['id'], $recipe->recipe_id, $prediction_value) );
      }
    }
    //sorting terhadap array bobot prediksi
    $length=count($recipe_customer_rating_prediction);
    for ($i=1;$i<$length;$i++) {
      $element=$recipe_customer_rating_prediction[$i];
      $j=$i;
      while($j>0 && $recipe_customer_rating_prediction[$j-1][2]<$element[2]) {
        $recipe_customer_rating_prediction[$j]=$recipe_customer_rating_prediction[$j-1];
        $j=$j-1;
      }
      $recipe_customer_rating_prediction[$j]=$element;
    }
    /*
    foreach ($recipe_customer_rating_prediction as $rcrp) {
          echo 'Customer : '.$rcrp[0].'<br>';
          echo 'Recipe : '.$rcrp[1].'<br>';
          echo 'Prediction : '.$rcrp[2].'<br><br><br>';
    }
    */
    return $recipe_customer_rating_prediction;
  }

  public function show_recommendation(){
    $session_data = $this->session->userdata('logged_in');
    $data['username'] = $session_data['username'];
    $data['id'] = $session_data['id'];
    //GENERATE PREDICTION
    $predictions = $this->generate_prediction();

    $recommendation = array();
    $prohibition = array();

    //BAGIAN RESEP YANG MUNGKIN ANDA SUKA
    //LAKUKAN ITERASI, CEK APAKAH ID RESEP DILARANG, BUANG YANG DILARANG
    $customer_illness = $this->m_recommendation->get_customer_illness($data['id']);
    foreach ($customer_illness as $illness) {
      $prohibition = $prohibition + $this->m_recommendation->get_illness_prohibition($illness['illness_id']);
      $recommendation = $recommendation + $this->m_recommendation->get_illness_recommendation($illness['illness_id']);
    }
    $data['recipes'] = $this->m_recipe->get_recipes_list_array();
    $data['predictions']=$predictions;
    $data['prohibition']=$prohibition;
    $data['recommendation']=$recommendation;
    
    /*
    foreach ($predictions as $prediction) {
      if (!empty($prohibition)) {
        foreach ($prohibition as $prhb) {
          if ($prediction[1] == $prhb['recipe_id']) {
            echo 'dilarang : '.$prediction[1];
          }
          else{
            echo 'dibolehkan : '.$prediction[1];
          }
        }      
      }
      if (!empty($recommendation)) {
        foreach ($recommendation as $rcmd) {
          if ($prediction[1] == $rcmd['recipe_id']) {
            echo 'direkomendasikan : '.$prediction[1];
          }
        }
      }
    }
    */

    $this->load->view('user_recommendation',$data);
  }

  public function pindahkan_data_penyakit(){
    $this->modeldata->pindahkan_data_penyakit();
  }
}
?>
