<!DOCTYPE html>
<html>
<head>
	<title>Admin Control Panel - Insert Product</title>
</head>
<body>
	<form  action="insert_product_process" id="form_insert_recipe" method="post" enctype="multipart/form-data">
		<p>Product Name : 
		<input type="text" name="product_name" id="product_name" placeholder="Nama Produk"> </p>
		<p>Product Brand : 
		<input type="text" name="product_brand" id="product_brand" placeholder="Merk Produk"> </p>
		<p>Product Image : 
		<input type="file" name="userfile" id="product_image"> </p>

		<p>Product Type :
		<select name="product_type_id">
			<option value="1">Buah</option>
			<option value="2">Sayur, Umbi, Jamur</option>
			<option value="3">Ayam, Daging, Ikan, Telur</option>
			<option value="4">Bahan Memasak</option>
			<option value="5">Susu dan Olahan Susu</option>
			<option value="6">Makanan</option>
			<option value="7">Minuman</option>
		</select></p>

		<p>Product Type : 
		<input type="text" name="product_size" id="product_size" placeholder="Ukuran produk, misal : 1kg, 500 gr"> </p>		

		<p>Product Price : 
		<input type="text" name="product_price" id="product_price" placeholder="Harga produk (hanya angka), misal : 50000"> </p>			

		<input type="submit" value="Add Product !">
</body>
</html>