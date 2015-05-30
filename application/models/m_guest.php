<?php
Class M_guest extends CI_Model
{
 function newGuest()
 {
    $ipaddress = '';
    if (getenv('HTTP_CLIENT_IP'))
        $ipaddress = getenv('HTTP_CLIENT_IP');
    else if(getenv('HTTP_X_FORWARDED_FOR'))
        $ipaddress = getenv('HTTP_X_FORWARDED_FOR');
    else if(getenv('HTTP_X_FORWARDED'))
        $ipaddress = getenv('HTTP_X_FORWARDED');
    else if(getenv('HTTP_FORWARDED_FOR'))
        $ipaddress = getenv('HTTP_FORWARDED_FOR');
    else if(getenv('HTTP_FORWARDED'))
       $ipaddress = getenv('HTTP_FORWARDED');
    else if(getenv('REMOTE_ADDR'))
        $ipaddress = getenv('REMOTE_ADDR');
    else
        $ipaddress = 'UNKNOWN';

    $sql = "INSERT INTO guest (guest_ip) VALUES ('$ipaddress')";
    $query = $this->db->query($sql);
    return $this->db->insert_id();
 }

 function get_amount_item_in_cart($id)
  {
    $query = $this->db->query("SELECT * FROM guest_cart WHERE guest_id = $id AND status='cart'");
    return $query->num_rows();  
  }

  function get_total_price_in_cart($id)
  {
    $query = $this->db->query("SELECT ca.quantity, psp.product_price FROM guest_cart ca, product_size_price psp WHERE ca.guest_id = $id AND ca.status='cart' AND ca.id_product_size_price=psp.id_product_size_price");
    $result = $query->result();
    $total = 0;
    foreach ($result as $row) {
      $total = $total + ($row->quantity * $row->product_price);
    }
    return $total;
  }
}
?>