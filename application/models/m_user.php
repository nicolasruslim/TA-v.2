<?php
Class M_user extends CI_Model
{
 function login($username, $password)
 {
   $this -> db -> select('customer_id, customer_username, customer_password');
   $this -> db -> from('customer');
   $this -> db -> where('customer_username', $username);
   $this -> db -> where('customer_password', MD5($password));
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
}
?>