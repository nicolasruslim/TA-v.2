<?php
class M_recipe extends CI_Model{
	
	function M_recipe(){
		parent::__construct();
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

	function get_recipes_list_array()
	{
		$query = $this->db->query("SELECT recipe_id,recipe_name,recipe_image, recipe_description FROM recipe");
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
}
?>