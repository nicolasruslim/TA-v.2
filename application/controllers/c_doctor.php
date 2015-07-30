<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
session_start();
class C_doctor extends CI_Controller {
 
 	function __construct()
 	{
 		parent::__construct();
	    $this->load->model('modeldata');
	    $this->load->model('m_doctor');
	    $this->load->model('m_recipe');
	    $this->load->model('m_recommendation');
 	}

 	public function index()
 	{
   		if($this->session->userdata('logged_doctor'))
      {
        $session_data = $this->session->userdata('logged_doctor');
        $data['username'] = $session_data['username'];
        $data['id'] = $session_data['id'];
    	$data['illness'] = $this->m_recommendation->get_illness();
        $data['recipes']=$this->m_recipe->get_all_recipes();
        $data['prohibition']=$this->m_doctor->get_all_illness_prohibition();
        $data['recommendation']=$this->m_doctor->get_all_illness_recommendation();
        $this->load->view('doctor/doctor_dashboard',$data);
      }else{
        redirect('c_doctor/login', 'refresh');
      }
 	}

 	public function survei()
 	{
   		if($this->session->userdata('logged_doctor'))
      {
        $session_data = $this->session->userdata('logged_doctor');
        $data['username'] = $session_data['username'];
        $data['id'] = $session_data['id'];
        $data['recipes']=$this->m_recipe->get_all_recipes();
        $this->load->view('doctor/survei_dashboard',$data);
      }else{
        redirect('c_doctor/login', 'refresh');
      }
 	}

 	public function login()
 	{
 		$this->load->helper(array('form'));
   		$this->load->view('doctor/doctor_login');
 	}

 	public function verify_login()
	{
		$this->load->library('form_validation');
 
   		$this->form_validation->set_rules('username', 'Username', 'trim|required|xss_clean');
   		$this->form_validation->set_rules('password', 'Password', 'trim|required|xss_clean|callback_check_database');

   		if($this->form_validation->run() == FALSE)
   		{
	     	redirect('c_doctor', 'refresh');
	   	}
	   	else
	   	{
	    	//Pindahkan barang di keranjang guest ke keranjang user
	     	redirect('c_doctor', 'refresh');
	   	}
	}

	function check_database($password)
 	{
	  	//Field validation succeeded.  Validate against database
	  	$username = $this->input->post('username');
	 
	   	//query the database
	   	$result = $this->m_doctor->login($username, $password);
	 
	   	if($result)
	   	{
	    	$sess_array = array();
	     	foreach($result as $row)
	     	{
	       		$sess_array = array(
	         	'id' => $row->doctor_id,
	         	'username' => $row->doctor_username
	       		);
	       		$this->session->set_userdata('logged_doctor', $sess_array);
	    	}
	     	return TRUE;
	   	}
	   	else
	   	{
	    	$this->form_validation->set_message('check_database', 'Invalid username or password');
	     	return false;
	   	}
	}

	public function update_illness_recommendation($recipe_id){
		if(!empty($_POST['recommended'])){
      		foreach($_POST['recommended'] as $illness_recommended){
	        	//cari id_resep dengan id_penyakit di recommendation
	      		//apabila tidak ada input rekomendasi
      			if(!$this->m_doctor->get_illness_recommendation($recipe_id, $illness_recommended)){
      				$this->m_doctor->set_illness_recommendation($recipe_id, $illness_recommended);
      			}
      			//ambil semua list penyakit di database
      			//cek apakah ada di list $_POST['recommended']
      			//jika tidak ada, hapus dari rekomendasi penyakit
      			$illness_list = $this->m_doctor->get_all_illness();
      			foreach ($illness_list as $list) {
      				if(!in_array($list->illness_id, $_POST['recommended'])){
      					$this->m_doctor->delete_illness_recommendation($recipe_id, $list->illness_id);
      				}
      			}
      		}
      	}else{
      		//jika kosong hapus semua rekomendasi penyakit yang ada
      		$this->m_doctor->delete_recipe_illness_recommendation($recipe_id);
      	}


      	if(!empty($_POST['prohibited'])){
      		foreach($_POST['prohibited'] as $illness_prohibited){
      			//cari id_resep dengan id_penyakit di prohibited
      			//apabila tidak ada input larangan
      			if(!$this->m_doctor->get_illness_prohibition($recipe_id, $illness_prohibited)){
      				$this->m_doctor->set_illness_prohibition($recipe_id, $illness_prohibited);
      			}

      			//ambil semua list penyakit di database
      			//cek apakah ada di list $_POST['prohibited']
      			//jika tidak ada, hapus dari rekomendasi penyakit
      			$illness_list = $this->m_doctor->get_all_illness();
      			foreach ($illness_list as $list) {
      				if(!in_array($list->illness_id, $_POST['prohibited'])){
      					$this->m_doctor->delete_illness_prohibition($recipe_id, $list->illness_id);
      				}
      			}
      		}
      	}else{
      		//jika kosong hapus semua rekomendasi penyakit yang ada
      		$this->m_doctor->delete_recipe_illness_prohibition($recipe_id);
      	}
      	redirect('c_doctor', 'refresh');
	}
}