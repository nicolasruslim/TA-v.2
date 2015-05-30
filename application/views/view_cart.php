<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<title>Keranjang.co</title>
		<meta name="generator" content="Bootply" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" type="text/css" href="<?php echo base_url().'/assets/css/bootstrap.min.css' ?>" />
		<link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.min.css" rel="stylesheet">
		<!--[if lt IE 9]>
			<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
    <link rel="stylesheet" type="text/css" href="<?php echo base_url().'/assets/css/styles.css' ?>" />
    <link rel="stylesheet" type="text/css" href="<?php echo base_url().'/assets/css/styles2.css' ?>" />
    <link rel="stylesheet" type="text/css" href="<?php echo base_url().'/assets/css/font-awesome.min.css' ?>" />
	</head>
<body>
  	<header class="masthead">
	  <div class="container">
		<div class="row">
			<div class="col-md-4">
				<div class="well pull-left">
				<br>
				  <img src="<?php echo base_url().'/assets/images/logo.png' ?>">        
				</div>
			</div>
			<div class="col-md-4">
			  <h1>
			  <a href="<?php echo site_url(); ?>">Keranjang.co</a>
				  <p class="lead">Mudah, Cepat, Harga Pas</p></h1>
			</div>
			    <div class="col-md-4 pull-right">
					<br><br><br>
					    <div class="input-group margin">
							<input type="text" class="form-control">
							<span class="input-group-btn">
								<button class="btn btn-info btn-flat" placeholder="Apa yang anda cari?">Cari</button>
							</span>
					    </div><!-- /input-group -->
			    </div>
		</div>
	  </div>
	</header>
<nav class="navbar navbar-static">
   <div class="container">
	<div class="navbar-header">
      <a class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
        <span class="glyphicon glyphicon-chevron-down"></span>
      </a>
    </div>
      <div class="navbar-collapse collapse">
        <ul class="nav navbar-nav">  
			<li class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">BELANJA <span class="caret"></span></a>
				<ul class="dropdown-menu">
				  <li><a href="<?php echo site_url().'/c_main/belanja/1' ?>">Buah</a></li>
				  <li class="divider"></li>
				  <li><a href="<?php echo site_url().'/c_main/belanja/2' ?>">Sayur dan Umbi</a></li>
				  <li class="divider"></li>
				  <li><a href="<?php echo site_url().'/c_main/belanja/3' ?>">Daging</a></li>
				  <li class="divider"></li>
				  <li><a href="<?php echo site_url().'/c_main/belanja/4' ?>">Telor</a></li>
				  <li class="divider"></li>
				  <li><a href="<?php echo site_url().'/c_main/belanja/5' ?>">Makanan</a></li>
				  <li class="divider"></li>
				  <li><a href="<?php echo site_url().'/c_main/belanja/6' ?>">Minuman</a></li>
				 </ul>
			</li>
          <li class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">RESEP <span class="caret"></span></a>
				<ul class="dropdown-menu">
				  <li><a href="<?php echo site_url().'/c_main/daftar_resep/1' ?>">Seafood</a></li>
				  <li class="divider"></li>
				  <li><a href="<?php echo site_url().'/c_main/daftar_resep/2' ?>">Sup</a></li>
				  <li class="divider"></li>
				  <li><a href="<?php echo site_url().'/c_main/daftar_resep/3' ?>">Ayam</a></li>
				  <li class="divider"></li>
				  <li><a href="<?php echo site_url().'/c_main/daftar_resep/4' ?>">Daging</a></li>
				  <li class="divider"></li>
				  <li><a href="<?php echo site_url().'/c_main/daftar_resep/5' ?>">Dessert</a></li>
				  <li class="divider"></li>
				  <li><a href="<?php echo site_url().'/c_main/daftar_resep/6' ?>">Minuman</a></li>
				 </ul>
			</li>
          <li><a href="#">Logo Akun</a></li>
		  <li><a href="#">Logo Akun</a></li>
		  <li><a href="#">Logo Akun</a></li>
        </ul>
        
      </div>
    </div>
</nav><!-- /.navbar -->


  <div class="container"> 
	<div class="row">
		<div class="col-md-3">
				<ol class="breadcrumb"><li>Home</li><li>Belanja</li><li class="active">Cart</li></ol>
		</div>
	</div>
	<div class="row">
		<div class="col-md-6">
			<div class="panel panel-default">
			<div class="panel-heading"><h3 class="panel-title">Daftar Belanja</h3></div>
			  <div class="panel-body">
				<table class="table table-striped">
					<tr><td><b>Nama Barang</b></td><td><b>Ukuran</b></td><td><b>Harga</b></td><td><b>Jumlah</b></td><td><b>Subtotal</b></td></tr>
				  <?php 
					$total = 0;
					if(!empty($items_in_cart)){
					  foreach($items_in_cart as $item) { ?>
						 <tr><td>
						<?php echo $item->product_name.'&nbsp;'; ?>
						</td>
						<td>
						<?php echo $item->product_size.'&nbsp;';?>
						</td>
						<td>
						<?php echo $item->product_price.'&nbsp;'; ?>
						</td>
						<td>
						<?php echo $item->quantity.'<br>'; ?>
						</td>
						
						<?php
						$subtotal = $item->product_price*$item->quantity;?>
						<td>
						<?php
						echo $subtotal.'<br>';?>
						</td></tr>
						<?php
						$total = $total + $subtotal;
					  }?>
					  <tr><td colspan="4">
					  <b>Total Biaya</b></td><td><b><?php echo $total; ?></b>
					  </td></tr>
				  </table>
			  </div>
			  <div class="panel-footer">
			  <div class="col-xs-3">
				<a type="button" class="btn btn-primary" href="<?php echo site_url().'/c_main' ?>">Lanjut Belanja</a>
				</div>
				<div class="col-xs-3">
				<a type="button" class="btn btn-primary" href="<?php echo site_url().'/c_cart/checkout' ?>">Selesai Belanja</a>
				</div>
  <?php
    }
    else{
      echo "Keranjang belanja Anda kosong";
    }
  ?>
	<div class="col-xs-3">
    <a type="button" class="btn btn-primary" href="<?php echo site_url().'/c_cart/view_orders' ?>">Lihat Tagihan Belanja Anda</a>
	</div>
			  </div>
			</div>
		</div>
	</div>

      <br><br><br>
      <br>
  </div>
  <footer>
  <div class="container">
  	<div class="row">
      <div class="col-md-12">
	  <div class=" col-md-2 col-sm-6 col-6">
	   <h5>INFORMATION</h5>
	   <h6><a href="#">About Us</a><br>
	   Countct Us<br>
	   FAQs<br>
	   Blog<br>
	   Testimonials<br>
	   Sitemap
	   </h6>
	  </div>
	  <div class=" col-md-2 col-sm-6 col-6">
	   <h5>MY ACCOUNT</h5>
	   <h6><a href="#">My Account</a><br>
	   Order History<br>
	   Wish List
	   </h6>
	  </div>
	  <div class=" col-md-2 col-sm-6 col-6">
	   <h5>POLICIES</h5>
	   <h6>Privacy Policy<br>
	   Payment Policy<br>
	   Terms & Conditions<br>
	   Disclaimer
	   </h6>
	  </div>
	  <div class=" col-md-3 col-sm-6 col-6">
	   <h5>PAYMENT METHOD</h5>
	    <a class="pull-left" href="#">
         <img class="media-object" src="http://placehold.it/80/F0F0F0">
        </a>
	  </div>
	  <div class=" col-md-3 col-sm-6 col-6">
	   <h5>FOLLOW US ON</h5>
	   <a class="pull-left" href="#">
         <img class="media-object" src="http://placehold.it/80/F0F0F0">
        </a>
	  </div>
    </div>
  </div>
  </div>
</footer>


	<!-- script references -->
		<script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
		<script src="<?php echo base_url().'/assets/js/bootstrap.min.js' ?>"></script>
    <script src="<?php echo base_url().'/assets/js/scripts.js' ?>"></script>
</body>
</html>
