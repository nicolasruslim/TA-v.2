<?php
class C_admin extends CI_Controller{
	
	function _construct()
	{
		parent::__construct();
	}
	
	public function index()
	{
		$this->load->view('admin');
	}

	public function view_product()
	{
		$this->load->model('m_admin');
		$data['products'] = $this->m_admin->view_product();
		$this->load->view('admin/admin_view_product', $data);	
	}

	public function insert_product(){
		$this->load->helper('form');
		$this->load->view('admin/admin_insert_product');	
	}

	public function insert_product_process(){
		$this->load->helper(array('form', 'url'));
		$this->load->library('form_validation');
		$this->form_validation->set_rules('product_price', 'Product Price', 'integer');

		if ($this->form_validation->run() == FALSE)
		{
			$this->load->view('admin');
		}
		else
		{
			$config = array(
				'upload_path' => "./assets/images",
				'allowed_types' => "gif|jpg|png|jpeg|pdf",
				'overwrite' => TRUE,
				'max_size' => "2048000", // Can be set to particular file size , here it is 2 MB(2048 Kb)
				'max_height' => "768",
				'max_width' => "1024"
			);
			$this->load->library('upload', $config);
			if($this->upload->do_upload())
			{
				$this->load->model('m_admin');
				$upload_data = $this->upload->data();
  				$file_name =  $upload_data['raw_name'];
				$data = array(
					'product_name' => $this->input->post('product_name'),
					'product_brand' => $this->input->post('product_brand'),
					'product_image' => $file_name,
					'product_type_id' => $this->input->post('product_type_id'),
					'product_size' => $this->input->post('product_size'),
					'product_price' => $this->input->post('product_price'),
					'upload_data' => $this->upload->data(),
					);
				$this->m_admin->insert_product_process($data);
				$this->load->view('upload_success',$data);

			}
			else
			{
				$error = array('error' => $this->upload->display_errors());
				$this->load->view('file_view', $error);
			}
		}
	}

	public function insert_recipe(){
		$this->load->helper('form');
		//ambil data product_size_price
		$this->load->model('m_admin');
		$this->load->model('modeldata');
		$data['product_size_price'] = $this->m_admin->get_product_size_price();
		$data['products'] = $this->modeldata->get_all_products();
		$this->load->view('admin/admin_insert_recipe', $data);
	}

	public function insert_recipe_process(){
		$this->load->helper(array('form', 'url'));

		$config = array(
			'upload_path' => "./assets/images/recipes",
			'allowed_types' => "gif|jpg|png|jpeg|pdf",
			'overwrite' => TRUE,
			'max_size' => "2048000", // Can be set to particular file size , here it is 2 MB(2048 Kb)
			'max_height' => "768",
			'max_width' => "1024"
		);
		$this->load->library('upload', $config);
		if($this->upload->do_upload())
		{
			$this->load->model('m_admin');
			$upload_data = $this->upload->data(); 
			$file_name =   $upload_data['raw_name'];
			$data = array(
				'recipe_name' => $this->input->post('recipe_name'),
				'recipe_image' => $file_name,
				'recipe_type_id' => $this->input->post('recipe_type_id'),
				'recipe_description' => $this->input->post('recipe_description'),
				'recipe_howto' => $this->input->post('recipe_howto'),
				'recipe_difficulty' => $this->input->post('recipe_difficulty'),
				'recipe_composition_name' => $this->input->post('recipe_composition_name'),
				'product_id' => $this->input->post('related_product'),
				'recipe_composition_amount' => $this->input->post('recipe_composition_amount'),
			);
			$this->m_admin->insert_recipe_process($data);
			$this->load->view('upload_success',$data);
		}
		else
		{
			$error = array('error' => $this->upload->display_errors());
			$this->load->view('file_view', $error);
		}
	}

	public function generate_similarity(){
		$this->load->model('m_admin');
		$this->load->model('modeldata');
		$recipes = $this->modeldata->get_all_recipes_array();
		$i = 0;
		$j = 1;
		$recipe_amount = count($recipes);
		while ($i < $recipe_amount) {
			while ($j < $recipe_amount) {
				$recipe1_id = $recipes[$i]['recipe_id'];
				$recipe2_id = $recipes[$j]['recipe_id'];
				$ratings1 = $this->m_admin->get_ratings($recipe1_id);
				$ratings2 = $this->m_admin->get_ratings($recipe2_id);
				$dot_product = 0;
				$magnitude1 = 0;
				$magnitude2 = 0;
				$same_customer_id=array();

				foreach ($ratings1 as $rating1) {
					foreach ($ratings2 as $rating2) {
						if ($rating1['customer_id']==$rating2['customer_id']) {
							$same_customer_id[]= $rating1['customer_id'];
							$dot_product = $dot_product + ($rating1['rating']*$rating2['rating']);
							echo 'dot_product = '.$dot_product.'<br>';
						}
					}
					if(!empty($same_customer_id)){
						if(in_array($rating1['customer_id'], $same_customer_id)){
							$magnitude1 = $magnitude1+($rating1['rating']*$rating1['rating']);
						}
						foreach ($ratings2 as $rating2) {
							if(in_array($rating2['customer_id'], $same_customer_id)){
								$magnitude2 = $magnitude2+($rating2['rating']*$rating2['rating']);
							}
						}
					}
					
				}
				$magnitude1 = sqrt($magnitude1);
				$data['magnitude1'] = $magnitude1;
				echo $recipe1_id.'magnitude1 = '.$magnitude1.'<br>';
				$magnitude2 = sqrt($magnitude2);
				echo $recipe2_id.'magnitude2 = '.$magnitude2.'<br>';
				$divisor = $magnitude1*$magnitude2;
				if($divisor == 0 ){
					$similarity = 0;
				}
				else{
					$similarity = $dot_product/$divisor;	
				}
				echo 'similarity = '.$similarity.'<br><br><br><br>';
				$this->m_admin->insert_similarity($recipe1_id, $recipe2_id, $similarity);
				$j++;
			}
			$i++;
			$j = $i+1;
		}
		//$this->load->view('similarity', $data);
		//$this->load->view('admin/similarity_generated');	
	}
}
?>