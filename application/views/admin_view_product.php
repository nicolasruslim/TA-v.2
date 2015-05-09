<!DOCTYPE html>
<html>
<head>
	<title>Admin Control Panel - View Product</title>
</head>
<body>
	<?php 
		foreach ($products as $product) {
			echo $product['product_name']."<br>";
			echo $product['product_brand']."<br>";
			echo $product['product_image']."<br>";
			echo $product['product_type_name']."<br><br><br>";
		}
	 ?>
</body>
</html>