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

  function add_customer($data)
  {
    $nama_lengkap = $data['nama_lengkap'];
    $email = $data['email']= $_POST['email'];
    $alamat = $data['alamat'];
    $hp = $data['hp'];
    $tanggallahir = $data['tanggallahir'];
    $penyakit = $data['penyakit'];
    $username = $data['username'];
    $password = md5($data['password']);

    $sql = "INSERT INTO customer (customer_name, customer_email, customer_address, customer_hp, customer_birthdate, illness, customer_username, customer_password) VALUES ('$nama_lengkap','$email', '$alamat', '$hp', '$tanggallahir', '$penyakit', '$username', '$password')";
    $query = $this->db->query($sql);
  }
}
?>