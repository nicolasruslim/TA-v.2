<?php
class Modeldata extends CI_Model{
	
	function Modeldata(){
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

	function get_all_recipes()
	{
		$query = $this->db->query("SELECT * FROM recipe");
		return $query->result();
	}	

	function get_all_recipes_array()
	{
		$query = $this->db->query("SELECT * FROM recipe");
		return $query->result_array();
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

	function give_rating($customer_id, $recipe_id, $rating_value)
	{
		$query = $this->db->query("INSERT INTO recipe_customer_rating (recipe_id, customer_id, rating) values ($recipe_id, $customer_id, $rating_value)");
	}	

	function get_customer_rating($customer_id, $recipe_id)
	{
		$query = $this->db->query("SELECT * FROM recipe_customer_rating WHERE recipe_id = $recipe_id AND customer_id = $customer_id");
		return $query->row();	
	}

	function get_rating_status($customer_id, $recipe_id)
	{
		$query = $this->db->query("SELECT * FROM recipe_customer_rating WHERE recipe_id = $recipe_id AND customer_id = $customer_id");
		if(!empty($query->result())){
			return 1;
		}
		else{
			return 0;
		}
	}

	function get_illness(){
		$query = $this->db->query("SELECT * FROM illness");
		return $query->result();	
	}

	//Menjadikan recipe_id sebagai id dari resep yang dibandingkan
	//Item pembanding yang diperoleh memiliki kesamaan > 0.5 terhadap item dibandingkan
	function get_similar_recipes($recipe_id){
		$query = $this->db->query("SELECT * FROM recipe_similarity WHERE recipe1_id = $recipe_id AND similarity >= 0.6");
		return $query->result();	
	}

	function generate_prediction($customer_id){
		$query = $this->db->query("INSERT INTO recipe_customer_rating (recipe_id, customer_id, rating) values ($recipe_id, $customer_id, $rating_value)");
	}

	function get_customer_illness($customer_id){
		$query = $this->db->query("SELECT * FROM customer_illness WHERE customer_id = $customer_id");
		return $query->result_array();
	}

	function get_illness_prohibition($illness_id){
		$query = $this->db->query("SELECT * FROM illness_prohibition WHERE illness_id = $illness_id");
		return $query->result_array();
	}	

	function get_illness_recommendation($illness_id){
		$query = $this->db->query("SELECT * FROM illness_recommendation WHERE illness_id = $illness_id");
		return $query->result_array();
	}	

	function pindahkan_data_penyakit(){
		$query = $this->db->query("SELECT * FROM customer WHERE illness <> '' ");
		$customer_berpenyakit = $query->result_array();	
		
		foreach ($customer_berpenyakit as $cb) {
			$penyakit = explode(',', $cb['illness']);	
			$customer_id = $cb['customer_id'];
			foreach ($penyakit as $sakit) {
				switch ($sakit) {
					case 'Jantung':
						$sql = "INSERT INTO customer_illness(customer_id, illness_id) VALUES ('$customer_id', 1)";
    					$this->db->query($sql);
						break;

					case 'Diabetes':
						$sql = "INSERT INTO customer_illness(customer_id, illness_id) VALUES ('$customer_id', 2)";
    					$this->db->query($sql);
						break;

					case 'Hipertensi':
						$sql = "INSERT INTO customer_illness(customer_id, illness_id) VALUES ('$customer_id', 3)";
    					$this->db->query($sql);
						break;
				}
			}	
		}
	}
}
?>