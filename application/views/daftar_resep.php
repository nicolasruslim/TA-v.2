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
	</div>
  <h2>Welcome <?php echo $username; ?>!</h2>
    <a href="<?php echo site_url().'/c_main/logout' ?>">Logout</a><br>
    <a href="#">Cart</a>
	<div id="container">
        <ul class="recipes">
            <?php foreach($recipes as $recipe) { ?>
            <li>
                <a href="<?php echo base_url().'/index.php/c_main/resep/'.$recipe->recipe_id;?>">
                    <img src="<?php echo base_url().'/assets/images/recipes/'.$recipe->recipe_image.'.jpg';?>">
                    <h4><?php echo $recipe->recipe_name;?></h4> 
                    <p><?php echo $recipe->recipe_description;?></p>
                </a>
            </li>
            <?php } ?>
        </ul>
	</div>
</body>
</html>