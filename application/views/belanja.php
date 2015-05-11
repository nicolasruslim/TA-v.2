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
<<<<<<< HEAD
              <a href="<?php echo site_url().'/c_main/belanja/1' ?>"><li><p class='product-type'>Buah</p></li></a>
              <a href="<?php echo site_url().'/c_main/belanja/2' ?>"><li><p class='product-type'>Sayur dan Umbi</p></li></a>
              <a href="<?php echo site_url().'/c_main/belanja/3'?>"><li><p class='product-type'>Daging</p></li></a>
              <a href="<?php echo site_url().'/c_main/belanja/4'?>"><li><p class='product-type'>Telur</p></li></a>
              <a href="<?php echo site_url().'/c_main/belanja/5'?>"><li><p class='product-type'>Makanan</p></li></a>
              <a href="<?php echo site_url().'/c_main/belanja/6'?>"><li><p class='product-type'>Minuman</p></li></a>
              <a href="<?php echo site_url().'/c_main/belanja/7'?>"><li><p class='product-type'>Bacaan</p></li></a>
=======
              <a href="<?php echo base_url().'index.php/c_main/belanja/1' ?>"><li><p class='product-type'>Buah</p></li></a>
              <a href="<?php echo base_url().'index.php/c_main/belanja/2' ?>"><li><p class='product-type'>Sayur dan Umbi</p></li></a>
              <a href="<?php echo base_url().'index.php/c_main/belanja/3'?>"><li><p class='product-type'>Daging</p></li></a>
              <a href="<?php echo base_url().'index.php/c_main/belanja/4'?>"><li><p class='product-type'>Telur</p></li></a>
              <a href="<?php echo base_url().'index.php/c_main/belanja/5'?>"><li><p class='product-type'>Makanan</p></li></a>
              <a href="<?php echo base_url().'index.php/c_main/belanja/6'?>"><li><p class='product-type'>Minuman</p></li></a>
              <a href="<?php echo base_url().'index.php/c_main/belanja/7'?>"><li><p class='product-type'>Bacaan</p></li></a>
>>>>>>> d23b129b541b69c39cb8557de021c627065435da
          </ul>
        </li>
        <li>
          Resep
          <ul class="resep">
<<<<<<< HEAD
              <a href="<?php echo site_url().'/c_main/daftar_resep/1' ?>"><li><p class='product-type'>Seafood</p></li></a>
              <a href="<?php echo site_url().'/c_main/daftar_resep/2' ?>"><li><p class='product-type'>Sup</p></li></a>
              <a href="<?php echo site_url().'/c_main/daftar_resep/3'?>"><li><p class='product-type'>Ayam</p></li></a>
              <a href="<?php echo site_url().'/c_main/daftar_resep/4'?>"><li><p class='product-type'>Daging</p></li></a>
              <a href="<?php echo site_url().'/c_main/daftar_resep/5'?>"><li><p class='product-type'>Dessert</p></li></a>
              <a href="<?php echo site_url().'/c_main/daftar_resep/6'?>"><li><p class='product-type'>Minuman</p></li></a>
=======
              <a href="<?php echo base_url().'index.php/c_main/daftar_resep/1' ?>"><li><p class='product-type'>Seafood</p></li></a>
              <a href="<?php echo base_url().'index.php/c_main/daftar_resep/2' ?>"><li><p class='product-type'>Sup</p></li></a>
              <a href="<?php echo base_url().'index.php/c_main/daftar_resep/3'?>"><li><p class='product-type'>Ayam</p></li></a>
              <a href="<?php echo base_url().'index.php/c_main/daftar_resep/4'?>"><li><p class='product-type'>Daging</p></li></a>
              <a href="<?php echo base_url().'index.php/c_main/daftar_resep/5'?>"><li><p class='product-type'>Dessert</p></li></a>
              <a href="<?php echo base_url().'index.php/c_main/daftar_resep/6'?>"><li><p class='product-type'>Minuman</p></li></a>
>>>>>>> d23b129b541b69c39cb8557de021c627065435da
          </ul>
        </li>
        <li><a href="">Cara Belanja</a></li>
        <li><a href="">Tentang Kami</a></li>
        <li><a href="">Kontak</a></li>
    </ul>
<<<<<<< HEAD
    <h2>Welcome <?php echo $username; ?>!</h2>
    <a href="<?php echo site_url().'/c_main/logout' ?>">Logout</a><br>
    <a href="<?php echo site_url().'/c_cart' ?>">Cart (<?php echo $amount_item_in_cart;?>)</a>
=======
>>>>>>> d23b129b541b69c39cb8557de021c627065435da
	</div>
	<div id="container">
        <ul class="products">
            <?php foreach($products as $product) { ?>
            <li>
                <a href="#">
                    <img src="<?php echo base_url().'/assets/images/'.$product->product_image.'.jpg';?>">
                    <h4><?php echo $product->product_name;?></h4>
<<<<<<< HEAD
                </a>
                      <?php 
                        echo form_open_multipart('c_main/insert_cart');
                        
                        //hidden input id produk
                        form_hidden('product_id', '$product->product_id');

                        //Dropdown untuk Memilih Ukuran Produk
                        $options = array();
                        foreach($product_size_price as $psp) {
                            if ($psp->product_id == $product->product_id){ 
                              $options[$psp->product_size] = $psp->product_size."&nbsp;".$psp->product_price ;
                            }
                        } 
                        echo form_dropdown('size_price', $options,'','style="width: 150px; font-size: 13px; margin-bottom:10px;"');

                        echo "<BR>";
                        echo "Jumlah :";
                        //input jumlah produk
                        $product_amount = array(
                          'name'        => 'product_amount',
                          'id'          => 'product_amount',
                          'style'       => 'width:60px;margin-bottom:10px;',
                          'type'        => 'text',
                          'placeholder' => '1-30',
                          'default'     => '0',
                        );
                        echo form_input($product_amount);

                        //Tombol Submit
                        echo form_submit('input_cart', 'Masukkan ke Keranjang');
                      ?>
=======
                      <?php 
                        $options = array();
                        foreach($product_size_price as $psp) {
                            if ($psp->product_id == $product->product_id){ 
                                  $options[$psp->product_size] = $psp->product_size."&nbsp;".$psp->product_price ;
                            }
                          } 
                        echo form_dropdown('size_price', $options);
                      ?>
                </a>
>>>>>>> d23b129b541b69c39cb8557de021c627065435da
            </li>
            <?php } ?>
        </ul>
	</div>
</body>
</html>