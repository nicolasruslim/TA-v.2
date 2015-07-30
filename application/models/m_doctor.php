<?php
Class M_doctor extends CI_Model
{
   function login($username, $password)
   {
     $this -> db -> select('doctor_id, doctor_username, doctor_password');
     $this -> db -> from('doctor');
     $this -> db -> where('doctor_username', $username);
     $this -> db -> where('doctor_password', MD5($password));
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

  function delete_illness_recommendation($recipe_id, $illness_id){
    $query = $this->db->query("DELETE FROM illness_recommendation WHERE recipe_id = $recipe_id AND illness_id=$illness_id");
  }

  function delete_recipe_illness_recommendation($recipe_id){
    $query = $this->db->query("DELETE FROM illness_recommendation WHERE recipe_id = $recipe_id");
  }

  function delete_illness_prohibition($recipe_id, $illness_id){
    $query = $this->db->query("DELETE FROM illness_prohibition WHERE recipe_id = $recipe_id AND illness_id=$illness_id");
  }

  function delete_recipe_illness_prohibition($recipe_id){
    $query = $this->db->query("DELETE FROM illness_prohibition WHERE recipe_id = $recipe_id");
  }

   function get_all_illness(){
    $query = $this->db->query("SELECT * FROM illness");
    return $query->result();
  }

  function get_all_illness_recommendation(){
    $query = $this->db->query("SELECT * FROM illness_recommendation");
    return $query->result();
  }

  function get_all_illness_prohibition(){
    $query = $this->db->query("SELECT * FROM illness_prohibition");
    return $query->result();
  }

  function get_illness_recommendation($recipe_id, $illness_recommended){
    $query = $this->db->query("SELECT * FROM illness_recommendation WHERE recipe_id=$recipe_id AND illness_id=$illness_recommended");
    if($query->num_rows() == 0){
      return FALSE;
    }else{
      return TRUE;
    }
  }

  function set_illness_recommendation($recipe_id, $illness_recommended){
    $query = $this->db->query("INSERT INTO illness_recommendation (illness_id, recipe_id) values ($illness_recommended, $recipe_id)");      
  }

  function get_illness_prohibition($recipe_id, $illness_prohibited){
    $query = $this->db->query("SELECT * FROM illness_prohibition WHERE recipe_id=$recipe_id AND illness_id=$illness_prohibited");
    if($query->num_rows() == 0){
      return FALSE;
    }else{
      return TRUE;
    }
  }

  function set_illness_prohibition($recipe_id, $illness_prohibited){
    $query = $this->db->query("INSERT INTO illness_prohibition (illness_id, recipe_id) values ($illness_prohibited, $recipe_id)");          
  }



}
?>