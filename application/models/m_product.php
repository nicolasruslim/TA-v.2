<?php
class M_product extends CI_Model{
	
	function M_product(){
		parent::__construct();
	}

	function get_all_products()
	{
		$query = $this->db->query("SELECT * FROM product p");
		return $query->result();
	}

	function get_products($product_type_id)
	{
		$query = $this->db->query("SELECT * FROM product p, product_type pt WHERE p.product_type_id=pt.id_product_type AND p.product_type_id=$product_type_id");
		return $query->result();
	}

		function get_popular_products()
	{
		$query = $this->db->query("SELECT * FROM product");
		return $query->result();
	}

	function get_popular_products_amount()
	{
		$query = $this->db->query("SELECT * FROM product");
		return $query->num_rows();
	}

	function get_category_products_amount($product_type_id)
	{
		$query = $this->db->query("SELECT * FROM product WHERE product_type_id=$product_type_id");
		return $query->num_rows();	
	}

	function get_product_size_price(){
		$query = $this->db->query("SELECT * FROM product_size_price");
		return $query->result();
	}
}
?>