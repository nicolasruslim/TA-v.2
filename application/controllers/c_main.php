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

	public function belanja($product_type_id)
	{
		$this->load->model('modeldata');
		$data['products']=$this->modeldata->get_products($product_type_id);
		$data['product_size_price']=$this->modeldata->get_product_size_price();
		$this->load->view('belanja',$data);
	}

	public function daftar_resep($recipe_type_id)
	{
		$this->load->model('modeldata');
		$data['recipes']=$this->modeldata->get_list_recipes($recipe_type_id);
		$this->load->view('daftar_resep',$data);
	}

	public function resep($recipe_id)
	{
		$this->load->model('modeldata');
		$data['recipe']=$this->modeldata->get_recipe_detail($recipe_id);
		$data['recipe_composition']=$this->modeldata->get_recipe_composition($recipe_id);
		$this->load->view('detail_resep',$data);
	}	

	public function input_resep()
	{
		$this->load->view('form_input_resep');
	}
}
?>