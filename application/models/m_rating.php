<?php
class M_rating extends CI_Model{
	
	function M_rating(){
		parent::__construct();
	}

	function give_rating($customer_id, $recipe_id, $rating_value)
	{
		$query = $this->db->query("INSERT INTO recipe_customer_rating (recipe_id,customer_id, rating) values ($recipe_id, $customer_id, $rating_value)");
	}	

	function get_customer_rating($customer_id, $recipe_id)
	{
		$query = $this->db->query("SELECT * FROM recipe_customer_rating WHERE recipe_id = $recipe_id AND customer_id = $customer_id");
		return $query->row();	
	}

	function get_rating_status($customer_id, $recipe_id)
	{
		$query = mysql_query("SELECT * FROM recipe_customer_rating WHERE recipe_id = $recipe_id AND customer_id = $customer_id");
		$jumlah = mysql_num_rows($query);
		if($jumlah==0){
			return 0;
		}
		else{
			return 1;
		}
	}
}
?>