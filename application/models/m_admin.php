<?php
class M_admin extends CI_Model{

	function M_admin(){
		parent::__construct();
		$this->load->database();
	}

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
		$product_size= $data['product_size'];
		$product_price= $data['product_price'];
		$sql_product = "INSERT INTO product (product_name, product_brand, product_image, product_type_id) VALUES ('$product_name','$product_brand', '$product_image', '$product_type_id')";
		$query = $this->db->query($sql_product);
		$product_id=$this->db->insert_id();
		$sql_product_size_price = "INSERT INTO product_size_price (product_id, product_size, product_price) VALUES ('$product_id','$product_size', '$product_price')";
		$this->db->query($sql_product_size_price);
	}	

	function get_product_size_price(){
		$sql = "SELECT * FROM product pd,product_type pt WHERE pd.product_type_id = pt.id_product_type";
		$query = $this->db->query($sql);
		return $query->result();
		
	}

	function insert_recipe_process($data)
	{
		$array_recipe_composition_name = $data['recipe_composition_name'];
		$array_product_id = $data['product_id'];
		$array_recipe_composition_amount = $data['recipe_composition_amount'];
		$recipe_name= $data['recipe_name'];
		$recipe_image = $data['recipe_image'];
		$recipe_type_id = $data['recipe_type_id'];
		$recipe_description = $data['recipe_description'];
		$recipe_howto = $data['recipe_howto'];
		$recipe_difficulty = $data['recipe_difficulty'];
		$sql = "INSERT INTO recipe (recipe_name, recipe_image, id_recipe_type, recipe_description, recipe_howto, recipe_difficulty) VALUES ('$recipe_name','$recipe_image', '$recipe_type_id', '$recipe_description', '$recipe_howto', '$recipe_difficulty')";
		$this->db->query($sql);
		$recipe_id = $this->db->insert_id();
		$i = 0;
		foreach ($array_recipe_composition_name as $composition_name) {
     		$product_id = $array_product_id[$i];
     		$composition_amount = $array_recipe_composition_amount[$i];
     		$i++;
     		$sql = "INSERT INTO recipe_composition (composition_name, recipe_id, product_id, recipe_composition_amount, id_product_size_price, product_amount) VALUES ('$recipe_name','$recipe_image', '$recipe_type_id', '$recipe_description', '$recipe_howto', '$recipe_difficulty')";
			$query = $this->db->query($sql);
		}
	}	

	function get_ratings($recipe_id)
	{	
		$sql = "SELECT * FROM recipe_customer_rating WHERE recipe_id=$recipe_id";
		$query = $this->db->query($sql);
		$result =  $query->result_array();
		return $result;
	}

	function insert_similarity($recipe1_id, $recipe2_id, $similarity)
	{	
		$sql1 = "SELECT * FROM recipe_similarity WHERE (recipe1_id=$recipe1_id AND recipe2_id = $recipe2_id) OR (recipe1_id=$recipe2_id AND recipe2_id = $recipe1_id)";
		$result = mysql_query($sql1);
		if(mysql_num_rows($result)==0){
			$sql2 = "INSERT INTO recipe_similarity(recipe1_id, recipe2_id, similarity) VALUES ('$recipe1_id','$recipe2_id', '$similarity')";
			return mysql_query($sql2) or die(mysql_error());
			
		}else{
			$sql2 = "UPDATE recipe_similarity SET similarity='$similarity' WHERE recipe1_id = '$recipe1_id' AND recipe2_id = '$recipe2_id'";
			return mysql_query($sql2) or die(mysql_error());
		}
	}
}
?>
