<?php
class M_cart extends CI_Model{
	
	function Modeldata(){
		parent::__construct();
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

	function insert_product_into_cart($data)
	{
		$customer_id= $data['customer_id'];
		$product_id= $data['product_id'];
		$id_product_size_price= $data['id_product_size_price'];
		$quantity= $data['quantity'];
		$sql = "INSERT INTO cart (customer_id, product_id, id_product_size_price, quantity) VALUES ('$customer_id','$product_id', '$id_product_size_price', '$quantity')";
		$query = $this->db->query($sql);
	}

	function checkout($customer_id){
		$orders_detail='';
		$query = $this->db->query("SELECT * FROM cart WHERE customer_id = $customer_id");
		foreach ($query->result() as $row) {
			$orders_detail=$orders_detail.'('.$row->product_id.','.$row->id_product_size_price.','.$row->quantity.')';
		}
		$sql = "INSERT INTO orders (customer_id, orders_detail) VALUES ('$customer_id','$orders_detail')";
		$query = $this->db->query($sql);
	}

	function get_recipe_composition($recipe_id){
		$query = $this->db->query("SELECT * FROM recipe_composition rc, product pr, product_size_price psp WHERE rc.recipe_id = $recipe_id AND rc.product_id = pr.product_id AND rc.id_product_size_price = psp.id_product_size_price");
		$composition_list = $query->result();
		return $composition_list;
	}

	function insert_recipe_composition_to_cart($recipe_id, $customer_id){
		$query = $this->db->query("SELECT * FROM recipe_composition WHERE recipe_id = $recipe_id");
		foreach ($query->result() as $row) {
			$product_id=$row->product_id;
			$id_product_size_price = $row->id_product_size_price;
			$product_amount = $row->product_amount;
			$sql = "INSERT INTO cart (customer_id, product_id, id_product_size_price, quantity) VALUES ('$customer_id','$product_id', '$id_product_size_price', '$product_amount' )";
			$query = $this->db->query($sql);
		}
	}
}
?>