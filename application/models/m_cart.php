<?php
class M_cart extends CI_Model{
	
	function Modeldata(){
		parent::__construct();
	}

	function get_amount_item_in_cart($id)
	{
		$query = $this->db->query("SELECT * FROM cart WHERE customer_id = $id AND status='cart'");
		return $query->num_rows();	
	}

	function get_items_in_cart($id)
	{
		$query = $this->db->query("SELECT * FROM cart ca, product pr, product_size_price psp WHERE ca.customer_id = $id AND ca.product_id = pr.product_id AND ca.id_product_size_price = psp.id_product_size_price AND ca.status = 'cart'");
		return $query->result();
	}

	function insert_product_into_cart($data)
	{
		$customer_id= $data['customer_id'];
		$product_id= $data['product_id'];
		$id_product_size_price= $data['id_product_size_price'];
		$quantity= $data['quantity'];
		$sql = "INSERT INTO cart (customer_id, product_id, id_product_size_price, quantity, status) VALUES ('$customer_id','$product_id', '$id_product_size_price', '$quantity', 'cart')";
		$query = $this->db->query($sql);
	}

	function checkout($customer_id){
		$orders_detail='';
		$query = $this->db->query("SELECT * FROM cart WHERE customer_id = $customer_id");
		foreach ($query->result() as $row) {
			$orders_detail=$orders_detail.$row->product_id.','.$row->id_product_size_price.','.$row->quantity.',';
		}
		$sql = "INSERT INTO orders (customer_id, orders_detail) VALUES ('$customer_id','$orders_detail')";
		$query = $this->db->query($sql);
		if ($this->db->affected_rows() > 0)
		{
  			$query_success = TRUE;
		}
		else
		{
  			$query_success = FALSE;
		}

		if($query_success){
			$query_update = $this->db->query("UPDATE cart SET status='orders' WHERE customer_id = $customer_id");
		}
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
			$sql = "INSERT INTO cart (customer_id, product_id, id_product_size_price, quantity, status) VALUES ('$customer_id','$product_id', '$id_product_size_price', '$product_amount', 'cart' )";
			$query = $this->db->query($sql);
		}
	}

	function get_orders($customer_id){
		$query_orders = $this->db->query("SELECT * FROM orders WHERE customer_id = $customer_id");
		$result = $query_orders->result();
		foreach ($result as $row) {
			$orders = explode(",", $row->orders_detail);
			$order_amount = round(count($orders)/3);
			$j = 0;
			for ($i=0; $i < $order_amount*3; $i++) { 
				$query_product_name = $this->db->query("SELECT product_name FROM product WHERE product_id = $orders[$i]");
				$product_name[$j] = $query_product_name->row()->product_name;
				$i++;
				$query_product_size_price = $this->db->query("SELECT product_size, product_price FROM product_size_price WHERE id_product_size_price = $orders[$i]");
				$product_size[$j] = $query_product_size_price->row()->product_size;
				$product_price[$j] = $query_product_size_price->row()->product_price;
				$i++;
				$quantity[$j] = $orders[$i];
				$j++;
			}
		}
		$data['product_name']=$product_name;
		$data['product_size']=$product_size;
		$data['product_price']=$product_price;
		$data['quantity']=$quantity;
		$data['order_amount']=$order_amount;
		return $data;
	}
}
?>