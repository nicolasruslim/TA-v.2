<!DOCTYPE html>
<html>
<head>
	<title>Admin Control Panel - Insert Product</title>
</head>
<body>
	<?php 

	echo form_open_multipart('admin/c_admin/insert_product_process');?>
	<p>Product Name :
	<?php
		$product_name = array(
              'name'        => 'product_name',
              'id'          => 'product_name',
              'style'       => 'width:30%',
              'type'		=> 'text',
              'placeholder' => 'Nama produk',
            );
		echo form_input($product_name);
	?></p>
	<p>Product Brand :
	<?php
		$product_brand = array(
              'name'        => 'product_brand',
              'id'          => 'product_brand',
              'style'       => 'width:30%',
              'type'		=> 'text',
              'placeholder' => 'Merk produk',
            );
		echo form_input($product_brand);
	?></p>

	<p>Product Image :
	<?php
		$product_image = array(
              'name'        => 'userfile',
              'id'          => 'product_image',
              'type'		=> 'file',
            );
		echo form_input($product_image);
	 ?></p>

	 <p>Product Type :
	<?php
		$product_type_options = array(
			'1'  => 'Buah',
            '2'    => 'Sayur-Umbi',
            '3'    => 'Daging',
            '4'    => 'Telur',
            '5'    => 'Makanan',
            '6'    => 'Minuman',
            '7'    => 'Bacaan',
		);
		echo form_dropdown('product_type_id',$product_type_options);
	 ?></p>

	<p>Product Size :
	<?php
		$product_size = array(
              'name'        => 'product_size',
              'id'          => 'product_size',
              'style'       => 'width:30%',
              'type'		=> 'text',
              'placeholder' => 'Ukuran produk, misal : 1 kg, 500 gr',
            );
		echo form_input($product_size);
	?></p>

	<p>Product Price :
	<?php
		$product_price = array(
              'name'        => 'product_price',
              'id'          => 'product_price',
              'style'       => 'width:30%',
              'type'		=> 'text',
              'placeholder' => 'Harga produk (hanya angka), misal : 50000',
            );
		echo form_input($product_price);
	?></p>

	 <p> <?php 
	 	echo form_submit('tambah_produk', 'Add Product!');
	 ?></p>
</body>
</html>