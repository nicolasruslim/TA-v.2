<!DOCTYPE html>
<html>
<head>
	<title>Admin Control Panel - Insert Recipe</title>
</head>
<body>
	<?php 

	echo form_open_multipart('index.php/c_admin/insert_recipe_process');?>
	<p>Recipe Name :
	<?php
		$recipe_name = array(
              'name'        => 'recipe_name',
              'id'          => 'recipe_name',
              'style'       => 'width:30%',
              'type'		=> 'text',
              'placeholder' => 'Nama resep',
            );
		echo form_input($recipe_name);
	?></p>

	<p>Recipe Image :
	<?php
		$recipe_image = array(
              'name'        => 'userfile',
              'id'          => 'recipe_image',
              'type'		=> 'file',
            );
		echo form_input($recipe_image);
	 ?></p>

	  <p>Recipe Type :
	<?php
		$recipe_type_options = array(
			'1'  	=> 'Seafood',
            '2'    => 'Sup',
            '3'    => 'Ayam',
            '4'    => 'Daging',
            '5'    => 'Dessert',
            '6'    => 'Minuman',
		);
		echo form_dropdown('recipe_type_id',$recipe_type_options);
	 ?></p>

	<p>Recipe Description :
	<?php
		$recipe_description = array(
              'name'        => 'recipe_description',
              'id'          => 'recipe_description',
              'style'       => 'width:30%;height:10%',
              'type'		=> 'text',
              'placeholder' => 'Deskripsi resep',
            );
		echo form_input($recipe_description);
	?></p>

	<p>How To :
	<?php
		$recipe_howto = array(
              'name'        => 'recipe_howto',
              'id'          => 'recipe_howto',
              'style'       => 'width:30%',
              'type'		=> 'text',
              'placeholder' => 'Langkah memasak',
            );
		echo form_input($recipe_howto);
	?></p>

	<p>Recipe Composition :
	<?php
		$recipe_composition_name = array(
              'name'        => 'recipe_composition_name',
              'id'          => 'recipe_composition_name',
              'style'       => 'width:30%',
              'type'		=> 'text',
              'placeholder' => 'Komposisi resep',
            );
		echo form_input($recipe_composition_name);
	?></p>

	<p>Amount :
	<?php
		$recipe_composition_amount = array(
              'name'        => 'recipe_composition_amount',
              'id'          => 'recipe_composition_amount',
              'style'       => 'width:30%',
              'type'		=> 'text',
              'placeholder' => 'Takaran produk',
            );
		echo form_input($recipe_composition_amount);
	?></p>

	<p>Related Product :
	<?php
		$product_id = array(
              'name'        => 'product_id',
              'id'          => 'product_id',
              'style'       => 'width:30%',
              'type'		=> 'text',
              'placeholder' => 'Produk terkait',
            );
		echo form_input($product_id);
	?></p>

	<p>Related Product Size :
	<?php
		$related_product_size = array(
			'1'  	=> 'Seafood',
            '2'    => 'Sup',
            '3'    => 'Ayam',
            '4'    => 'Daging',
            '5'    => 'Dessert',
            '6'    => 'Minuman',
		);
		echo form_dropdown('related_product_size',$related_product_size);
	 ?></p>

	<p>Related Product Amount :
	<?php
		$related_product_amount = array(
              'name'        => 'related_product_amount',
              'id'          => 'related_product_amount',
              'style'       => 'width:30%',
              'type'		=> 'text',
              'placeholder' => 'Jumlah produk terkait',
            );
		echo form_input($product_id);
	?></p>

	 <p> <?php 
	 	echo form_submit('tambah_resep', 'Add Recipe!');
	 ?></p>
</body>
</html>