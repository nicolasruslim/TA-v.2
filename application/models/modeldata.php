<?php
class Modeldata extends CI_Model{
	
	function Modeldata(){
		parent::__construct();
	}

	function get_products($product_type_id)
	{
		$query = $this->db->query("SELECT * FROM product p, product_type pt WHERE p.product_type_id=pt.id_product_type AND p.product_type_id=$product_type_id");
		return $query->result();
	}

	function get_product_size_price(){
		$query = $this->db->query("SELECT * FROM product_size_price");
		return $query->result();
	}

	function get_list_recipes($recipe_type_id)
	{
		$query = $this->db->query("SELECT * FROM recipe r, recipe_type rt WHERE r.id_recipe_type = rt.id_recipe_type AND r.id_recipe_type = $recipe_type_id ");
		return $query->result();
	}

	function get_recipe_detail($recipe_id)
	{
		$query = $this->db->query("SELECT * FROM recipe r WHERE r.recipe_id = $recipe_id");
		return $query->row();
	}
	
	function get_recipe_composition($recipe_id)
	{
		$query = $this->db->query("SELECT rc.* FROM recipe_composition rc WHERE rc.recipe_id = $recipe_id");
		return $query->result();
	}

	function get_amount_item_in_cart($id)
	{
		$query = $this->db->query("SELECT * FROM cart WHERE customer_id = $id");
		return $query->num_rows();	
	}

	function get_items_in_cart($id)
	{
		$query = $this->db->query("SELECT * FROM cart ca, product pr, product_size_price psp WHERE ca.customer_id = $id AND ca.product_id = pr.product_id AND ca.id_product_size_price = psp.id_product_size_price");
		return $query->result();
	}
	
}
?>