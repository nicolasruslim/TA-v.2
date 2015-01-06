<!DOCTYPE html>
<html>
<head>
	<title>Belanja Harian</title>
	<link rel="stylesheet" type="text/css" href="<?php echo base_url().'/assets/css/style.css' ?>" />
</head>
<body>
	<div id="navbar">
		<ul>
			<li class="default">
    			Belanja
    			<ul class="belanja">
      				<li>
      					<a href="<?php echo base_url().'index.php/c_main/belanja/buah-sayur' ?>">Buah dan Sayur</a>
      					<ul>
      						<li><a href=""></a></li>
      					</ul>
      				</li>
      				<li><a href="<?php echo base_url().'index.php/c_main/belanja/daging-telur'?>">Daging dan Telur</a></li>
      				<li><a href="<?php echo base_url().'index.php/c_main/belanja/makanan'?>">Makanan</a></li>
      				<li><a href="<?php echo base_url().'index.php/c_main/belanja/minuman'?>">Minuman</a></li>
      				<li><a href="<?php echo base_url().'index.php/c_main/belanja/bacaan'?>">Bacaan</a></li>
    			</ul>
  			</li>
  			<li><a href="">Resep</a></li>
  			<li><a href="">Cara Belanja</a></li>
  			<li><a href="">Tentang Kami</a></li>
  			<li><a href="">Kontak</a></li>
		</ul>
	</div>
	<div id="container">
  <?php echo base_url().'index.php/c_main/belanja/buah-sayur' ?>
	</div>
</body>
</html>