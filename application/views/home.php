<!DOCTYPE html>
<html lang="en">
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
			  <a href="#" title="Scroll down for your viewing pleasure">Keranjang.co</a>
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
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">BELANJA</a>
				<ul class="dropdown-menu">
				  <li><a href="#">Buah</a></li>
				  <li class="divider"></li>
				  <li><a href="#">Sayur dan Umbi</a></li>
				  <li class="divider"></li>
				  <li><a href="#">Daging</a></li>
				  <li class="divider"></li>
				  <li><a href="#">Telor</a></li>
				  <li class="divider"></li>
				  <li><a href="#">Makanan</a></li>
				  <li class="divider"></li>
				  <li><a href="#">Minuman</a></li>
				  <li class="divider"></li>
				  <li><a href="#">Bacaan</a></li>
				 </ul>
			</li>
          <li><a href="#">Logo Akun</a></li>
          <li><a href="#">Logo Akun</a></li>
		  <li><a href="#">Logo Akun</a></li>
		  <li><a href="#">Logo Akun</a></li>
        </ul>
        
      </div>
    </div>
</nav><!-- /.navbar -->

<!-- Begin Body -->
<div class="container">
	<div class="no-gutter row">
      		<!-- right content column-->
      		<div class="col-md-9" id="content">
            	<div class="panel">
              	<div class="panel-body">
				    <div class="well text-center">
						<div class="row carousel-holder">
							<div class="col-md-12">
								<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
									<ol class="carousel-indicators">
										<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
										<li data-target="#carousel-example-generic" data-slide-to="1"></li>
										<li data-target="#carousel-example-generic" data-slide-to="2"></li>
									</ol>
									<div class="carousel-inner">
										<div class="item active">
											<img class="slide-image" src="http://placehold.it/800x200" alt="">
											<div class="carousel-caption">
                                                    Pertama
                                                </div>
										</div>
										<div class="item">
											<img class="slide-image" src="http://placehold.it/800x200" alt="">
											<div class="carousel-caption">
                                                    Kedua
                                                </div>
										</div>
										<div class="item">
											<img class="slide-image" src="http://placehold.it/800x200" alt="">
											<div class="carousel-caption">
                                                    Ketiga
                                                </div>
										</div>
									</div>
									<a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
										<span class="glyphicon glyphicon-chevron-left"></span>
									</a>
									<a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
										<span class="glyphicon glyphicon-chevron-right"></span>
									</a>
								</div>
							</div>
						</div>
					</div><!-- /.row -->
					<br>
				<div class="row">
					<div class="col-md-12">
						<div class="col col-sm-3">
							<a href="#"><img src="//placehold.it/300x120/77CCDD/66BBCC" class="img-responsive"></a>
						</div>
						<div class="col col-sm-3">
							<a href="#"><img src="//placehold.it/300x120/77CCDD/66BBCC" class="img-responsive"></a>
						</div>
						<div class="col col-sm-3">
							<a href="#"><img src="//placehold.it/300x120/77CCDD/66BBCC" class="img-responsive"></a>
						</div>
						<div class="col col-sm-3">
							<a href="#"><img src="//placehold.it/300x120/77CCDD/66BBCC" class="img-responsive"></a>
						</div>
					</div>
				</div><br>
               
                  <h5>Produk Terlaris di Bulan ini?></h5>
				  <hr>
                  <?php $i=0;
                  foreach($products as $product) { 
                    if($i%4==0){
                      echo '<div class="row">';
                    }
                    ?>
                    
                      <div class=" well col-md-3 col-sm-6 col-6 text-center">
  					            <p class="text-center"><?php echo $product->product_name;?></p>
                        <a href="#"><img src="<?php echo base_url().'/assets/images/'.$product->product_image.'.jpg';?>" class="img-responsive"></a>
  					            <p class=" text-center text-red"><b>1 Kg/Rp.2500,-</b></p>
  					            <div class="form-group">
                          <select class="form-control" name="product_size_price">
                            <?php foreach($product_size_price as $psp) {
                              if ($psp->product_id == $product->product_id){ ?>
                                <option value="<?php echo $psp->id_product_size_price;?>"><?php echo $psp->product_size."/Rp.".$psp->product_price.",-"?></option>
                              <?php
                              }
                            }
                            ?>
    							        </select>
  						          </div>
  						          <button class="btn btn-success btn-flat">Masukkan Keranjang</button>
                      </div>

                      <?php
                    if(($i-3)%4==0 || $i == $products_amount-1 ){
                      echo '</div>';
                    }
                    $i++;
                  }
                    ?>
                  <hr>
             	
                  </div><!--/panel-body-->
                </div><!--/panel-->
              	<!--/end right column-->
      	</div> 
	
	
	<!--mid column-->
      		<div class="col-md-3">
              <div class="panel" id="midCol">
                <div class="panel-heading" style="background-color:#008A2E;color:#eee;">Selamat Datang di Keranjang.co</div> 
                <div class="panel-body">
					<table class="table text-center">
          <tr><td><?php echo form_open('c_login/verify_login'); ?>
          <form type="post" action=""></form>
            <label for="username">Username:</label>
            <input type="text" size="20" id="username" name="username"/><br/>
            <label for="password">Password:</label>
            <input type="password" size="20" id="passowrd" name="password"/>
          </form>
          </td>
          </tr>
					<tr><td></td><td><button class="btn btn-success btn-flat btn-lg">Masuk Akun</button></td><td><button class="btn btn-success btn-flat btn-lg">Buat Akun</button></td></tr>
					</table>
					<table class="table text-center">
					<th>Isi Keranjang : </th>
					<th></th>
					<tr><td><img src="<?php echo base_url().'/assets/images/keranjang.png' ?>"></td><td>Kosong<br><p class="text-red"><b>Rp.0,-</b></p></td></tr>
					</table>
					<table class="table">
					  <th></th>
					  <th>
						<div class="btn-group">
							<button type="button" class="btn btn-success btn-flat"> > Kota Bandung</button>
							<button type="button" class="btn btn-success btn-flat dropdown-toggle" data-toggle="dropdown">
							<span class="caret"></span>
							<span class="sr-only">Toggle Dropdown</span>
							</button>
							<ul class="dropdown-menu" role="menu">
                <?php foreach ($city_list as $city) { ?>
                  <li><a href="#"><?php echo $city->city_name ?></a></li>  
                <?php  } ?>
							</ul>
						</div>
						</th>
						<tr><td><i class="fa fa-phone"></i></td><td>087823297974</td></tr>
						<tr><td><i class="fa fa-truck"></i></td><td>Proses Pengiriman : <br>Hari ini<br>Besok<br>Lusa</td></tr>
					</table>
                    
                  
               </div> 
               </div><!--/panel-->
      		</div><!--/end mid column-->
  			
      			
      		
      		
  	</div>
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