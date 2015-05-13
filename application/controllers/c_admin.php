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
		$this->load->view('admin_view_product', $data);	
	}

	public function insert_product(){
		$this->load->helper('form');
		$this->load->view('admin_insert_product');	
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
  				$file_name =   $upload_data['raw_name'];
				$data = array(
					'product_name' => $this->input->post('product_name'),
					'product_brand' => $this->input->post('product_brand'),
					'product_image' => $file_name,
					'product_type_id' => $this->input->post('product_type_id'),
					'product_size' => $this->input->post('product_size'),
					'product_price' => $this->input->post('product_price'),
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
		$this->m_admin->get_product_size_price();
		$this->load->view('admin_insert_recipe');
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
				'recipe_composition_name' => $this->input->post('recipe_composition_name'),
				'product_id' => $this->input->post('product_id'),
				'recipe_composition_amount' => $this->input->post('recipe_composition_amount'),
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
?>