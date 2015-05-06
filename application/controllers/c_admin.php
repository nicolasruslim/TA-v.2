<?php
class C_admin extends CI_Controller{
	
	function _construct()
	{
		parent::__construct();
	}
	
	public function index()
	{
		$this->load->helper('form');
		$this->load->view('admin');
	}

	public function do_upload(){
		//$this->load->helper(array('form', 'url'));
		//$this->load->library('form_validation');
		//$this->form_validation->set_rules('product_price', 'Product Price', 'integer');

		/*if ($this->form_validation->run() == FALSE)
		{
			$this->load->view('admin');
		}
		else
		{*/
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
				$data = array('upload_data' => $this->upload->data());
				$this->load->view('upload_success',$data);
			}
			else
			{
				$error = array('error' => $this->upload->display_errors());
				$this->load->view('file_view', $error);
			}
			echo $_POST['product_name'].'<br>';
			echo $_POST['product_brand'].'<br>';			
			echo $_POST['product_type'].'<br>';
			echo $_POST['product_size'].'<br>';
			echo $_POST['product_price'].'<br>';

		//}
	}
}
?>