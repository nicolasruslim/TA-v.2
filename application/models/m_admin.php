<?php
class M_admin extends CI_Model{
	
	function login($username, $password)
	{
	   $this -> db -> select('admin_id, admin_username, admin_password');
	   $this -> db -> from('admin');
	   $this -> db -> where('admin_username', $username);
	   $this -> db -> where('admin_password', MD5($password));
	   $this -> db -> limit(1);
	 
	   $query = $this -> db -> get();
	 
	   if($query -> num_rows() == 1)
	   {
	     return $query->result();
	   }
	   else
	   {
	     return false;
	   }
	}

	function M_admin(){
		parent::__construct();
		$this->load->database();
	}

	function view_product()
	{	
		$sql = "SELECT * FROM product pd,product_type pt WHERE pd.product_type_id = pt.id_product_type";
		$query = $this->db->query($sql);
		$result =  $query->result_array();
		return $result;
	}

	function insert_product_process($data)
	{
		$product_name= $data['product_name'];
		$product_brand= $data['product_brand'];
		$product_image= $data['product_image'];
		$product_type_id= $data['product_type_id'];
		$product_size1= $data['product_size'];
		$product_price1= $data['product_price'];
		$sql = "INSERT INTO product (product_name, product_brand, product_image, product_type_id, product_size1, product_price1) VALUES ('$product_name','$product_brand', '$product_image', '$product_type_id', '$product_size1', '$product_price1')";
		$query = $this->db->query($sql);
	}	
}
?>