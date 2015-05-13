<!DOCTYPE html>
<html>
<head>
  <title>Belanja Harian</title>
  <link rel="stylesheet" type="text/css" href="<?php echo base_url().'/assets/css/style.css' ?>" />
</head>
<body>
  
  <div id="container">
  <?php foreach($composition_list as $item) {
    echo $item->composition_name.'&nbsp;';
    echo $item->product_name.'&nbsp;';
    echo $item->recipe_composition_amount.'&nbsp;';
    echo $item->product_size.'&nbsp;';
    echo $item->product_amount.'&nbsp;';
    echo $item->product_price.'<br>';
    } ?>
  <br><br><br>
  <a href="<?php echo site_url().'/c_cart/insert_product_composition_into_cart/'.$item->recipe_id; ?>">Masukkan ke Keranjang</a><br>
  </div>
</body>
</html>