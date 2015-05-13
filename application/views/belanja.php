<!DOCTYPE html>
<html>
<head>
	<title>Belanja Harian</title>
	<link rel="stylesheet" type="text/css" href="<?php echo base_url().'/assets/css/style.css' ?>" />
</head>
<body>
	<div id="navbar">
		<ul id="navigasi">
      <li class="default">
          Belanja
          <ul class="belanja">
              <a href="<?php echo site_url().'/c_main/belanja/1' ?>"><li><p class='product-type'>Buah</p></li></a>
              <a href="<?php echo site_url().'/c_main/belanja/2' ?>"><li><p class='product-type'>Sayur dan Umbi</p></li></a>
              <a href="<?php echo site_url().'/c_main/belanja/3'?>"><li><p class='product-type'>Daging</p></li></a>
              <a href="<?php echo site_url().'/c_main/belanja/4'?>"><li><p class='product-type'>Telur</p></li></a>
              <a href="<?php echo site_url().'/c_main/belanja/5'?>"><li><p class='product-type'>Makanan</p></li></a>
              <a href="<?php echo site_url().'/c_main/belanja/6'?>"><li><p class='product-type'>Minuman</p></li></a>
              <a href="<?php echo site_url().'/c_main/belanja/7'?>"><li><p class='product-type'>Bacaan</p></li></a>
          </ul>
        </li>
        <li>
          Resep
          <ul class="resep">
              <a href="<?php echo site_url().'/c_main/daftar_resep/1' ?>"><li><p class='product-type'>Seafood</p></li></a>
              <a href="<?php echo site_url().'/c_main/daftar_resep/2' ?>"><li><p class='product-type'>Sup</p></li></a>
              <a href="<?php echo site_url().'/c_main/daftar_resep/3'?>"><li><p class='product-type'>Ayam</p></li></a>
              <a href="<?php echo site_url().'/c_main/daftar_resep/4'?>"><li><p class='product-type'>Daging</p></li></a>
              <a href="<?php echo site_url().'/c_main/daftar_resep/5'?>"><li><p class='product-type'>Dessert</p></li></a>
              <a href="<?php echo site_url().'/c_main/daftar_resep/6'?>"><li><p class='product-type'>Minuman</p></li></a>
          </ul>
        </li>
        <li><a href="">Cara Belanja</a></li>
        <li><a href="">Tentang Kami</a></li>
        <li><a href="">Kontak</a></li>
    </ul>
    <h2>Welcome <?php echo $username; ?>!</h2>
    <a href="<?php echo site_url().'/c_main/logout' ?>">Logout</a><br>
    <a href="<?php echo site_url().'/c_cart' ?>">Cart (<?php echo $amount_item_in_cart;?>)</a>
	</div>
	<div id="container">
        <ul class="products">
            <?php foreach($products as $product) { ?>
            <li>
                <a href="#">
                    <img src="<?php echo base_url().'/assets/images/'.$product->product_image.'.jpg';?>">
                    <h4><?php echo $product->product_name;?></h4>
                </a>
                <?php $product_id=$product->product_id; ?>
                <form method="post" action="<?php echo site_url();?>/c_cart/insert_product_into_cart/<?php echo $product_id; ?>">
                  <select name="product_size_price">
                    <?php 
                      foreach($product_size_price as $psp) {
                        if ($psp->product_id == $product->product_id){ ?>
                          <option value="<?php echo $psp->id_product_size_price;?>"><?php echo $psp->product_size."&nbsp;".$psp->product_price?></option>
                    <?php
                        }
                      }
                    ?>
                  </select>
                  <input type="text" name='quantity'>
                  <button type="submit">Masukkan ke Keranjang</button>
                </form>
                </a>
            </li>
            <?php } ?>
        </ul>
	</div>
</body>
</html>