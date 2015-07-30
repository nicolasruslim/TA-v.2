<?php
class M_recommendation extends CI_Model{
	
	function M_recommendation(){
		parent::__construct();
	}
	
	function get_illness(){
		$query = $this->db->query("SELECT * FROM illness");
		return $query->result();	
	}

	//Menjadikan recipe_id sebagai id dari resep yang dibandingkan
	//Item pembanding yang diperoleh memiliki kesamaan > 0.5 terhadap item dibandingkan
	function get_similar_recipes($recipe_id){
		$query = $this->db->query("SELECT * FROM recipe_similarity WHERE recipe1_id = $recipe_id OR recipe2_id = $recipe_id AND similarity >= 0.3");
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