<!DOCTYPE html>
<html>
<head>
  <title>Belanja Harian</title>
  <link rel="stylesheet" type="text/css" href="<?php echo base_url().'/assets/css/style.css' ?>" />
</head>
<body>
  
  <div id="container">  
  <?php 
    if(!empty($order_amount)){
      $total = 0;
      for ($i=0; $i < $order_amount; $i++) { 
        echo $product_name[$i].'&nbsp;';
        echo $product_size[$i].'&nbsp;';
        echo $product_price[$i].'&nbsp;';
        echo $quantity[$i].'<br>';
        $total = $total + $product_price[$i];
      }
      echo 'Total biaya yang harus dibayar :'.$total;
    }
  ?>
  </div>
</body>
</html>