<?php
class Modeldata extends CI_Model{
	
	function Modeldata(){
		parent::__construct();
	}

	function get_category_name($product_type_id){
		$query = $this->db->query("SELECT product_type_name FROM product_type WHERE product_type.id_product_type = $product_type_id");
		return $query->row();
	}
	
	function get_category_name2($recipe_type_id){
		$query = $this->db->query("SELECT recipe_type_name FROM recipe_type WHERE recipe_type.id_recipe_type = $recipe_type_id");
		return $query->row();
	}

	function get_amount_item_in_cart($id)
	{
		$query = $this->db->query("SELECT * FROM cart WHERE customer_id = $id AND status='cart'");
		return $query->num_rows();	
	}

	function get_total_price_in_cart($id)
	{
		$query = $this->db->query("SELECT ca.quantity, psp.product_price FROM cart ca, product_size_price psp WHERE ca.customer_id = $id AND ca.status='cart' AND ca.id_product_size_price=psp.id_product_size_price");
		$result = $query->result();
		$total = 0;
		foreach ($result as $row) {
			$total = $total + ($row->quantity * $row->product_price);
		}
		return $total;
	}

	function get_items_in_cart($id)
	{
		$query = $this->db->query("SELECT * FROM cart ca, product pr, product_size_price psp WHERE ca.customer_id = $id AND ca.product_id = pr.product_id AND ca.id_product_size_price = psp.id_product_size_price");
		return $query->result();
	}

	function get_city_list()
	{
		$query = $this->db->query("SELECT city_name FROM city");
		return $query->result();	
	}	

}
?>