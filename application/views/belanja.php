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
              <a href="<?php echo base_url().'index.php/c_main/belanja/1' ?>"><li><p class='product-type'>Buah</p></li></a>
              <a href="<?php echo base_url().'index.php/c_main/belanja/2' ?>"><li><p class='product-type'>Sayur dan Umbi</p></li></a>
              <a href="<?php echo base_url().'index.php/c_main/belanja/3'?>"><li><p class='product-type'>Daging</p></li></a>
              <a href="<?php echo base_url().'index.php/c_main/belanja/4'?>"><li><p class='product-type'>Telur</p></li></a>
              <a href="<?php echo base_url().'index.php/c_main/belanja/5'?>"><li><p class='product-type'>Makanan</p></li></a>
              <a href="<?php echo base_url().'index.php/c_main/belanja/6'?>"><li><p class='product-type'>Minuman</p></li></a>
              <a href="<?php echo base_url().'index.php/c_main/belanja/7'?>"><li><p class='product-type'>Bacaan</p></li></a>
          </ul>
        </li>
        <li>
          Resep
          <ul class="resep">
              <a href="<?php echo base_url().'index.php/c_main/daftar_resep/seafood' ?>"><li><p class='product-type'>Seafood</p></li></a>
              <a href="<?php echo base_url().'index.php/c_main/daftar_resep/sup' ?>"><li><p class='product-type'>Sup</p></li></a>
              <a href="<?php echo base_url().'index.php/c_main/daftar_resep/ayam'?>"><li><p class='product-type'>Ayam</p></li></a>
              <a href="<?php echo base_url().'index.php/c_main/daftar_resep/daging'?>"><li><p class='product-type'>Daging</p></li></a>
              <a href="<?php echo base_url().'index.php/c_main/daftar_resep/dessert'?>"><li><p class='product-type'>Dessert</p></li></a>
              <a href="<?php echo base_url().'index.php/c_main/daftar_resep/minuman'?>"><li><p class='product-type'>Minuman</p></li></a>
          </ul>
        </li>
        <li><a href="">Cara Belanja</a></li>
        <li><a href="">Tentang Kami</a></li>
        <li><a href="">Kontak</a></li>
    </ul>
	</div>
	<div id="container">
        <ul class="products">
            <?php foreach($products as $product) { ?>
            <li>
                <a href="#">
                    <img src="<?php echo base_url().'/assets/images/'.$product->product_image.'.jpg';?>">
                    <h4><?php echo $product->product_name;?></h4>
                    <p><?php echo $product->product_size1;?></p>
                    <p><?php echo $product->product_price1;?></p>
                    <?php if(!empty($product->product_size2)){ ?>
                      <p><?php echo $product->product_size2;?></p>
                      <p><?php echo $product->product_price2;?></p>
                    <?php } ?>
                </a>
            </li>
            <?php } ?>
        </ul>
	</div>
</body>
</html>