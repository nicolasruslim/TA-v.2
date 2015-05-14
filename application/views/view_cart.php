<!DOCTYPE html>
<html>
<head>
  <title>Belanja Harian</title>
  <link rel="stylesheet" type="text/css" href="<?php echo base_url().'/assets/css/style.css' ?>" />
</head>
<body>
  
  <div id="container">  
  <?php 
    if(!empty($items_in_cart)){
      foreach($items_in_cart as $item) {
        echo $item->product_name.'&nbsp;';
        echo $item->product_size.'&nbsp;';
        echo $item->quantity.'<br>';
      }
  ?>
      <br><br><br>
      <a href="<?php echo site_url().'/c_cart/checkout' ?>">Selesai Belanja</a><br>
  <?php
    }
    else{
      echo "Keranjang belanja Anda kosong";
    }
  ?>
    <a href="<?php echo site_url().'/c_cart/view_orders' ?>">Lihat Status Pembelian Anda</a><br>
  </div>
</body>
</html>