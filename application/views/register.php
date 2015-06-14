<!DOCTYPE html>
<html>
<head>
	<title>Keranjang.co</title>
</head>
<body>
	<h1>Registrasi Pelanggan</h1>
	<?php $link = site_url().'/c_main/add_customer'; ?>
	<form method="post" action="<?php echo $link; ?>">
	<p>Nama Lengkap : <input type="text" name="nama_lengkap"></p>
	<p>Email : <input type="email" name="email"></p>
	<p>Alamat : <input type="text" name="alamat"></p>
	<p>HP : <input type="text" name="hp"></p>
	<p>Tanggal lahir : <input type="date" name="tanggallahir"></p>
	<p>Username : <input type="text" name="username"></p>
	<p>Password : <input type="password" name="password"></p>
	<p>Apakah Anda menderita salah satu dari penyakit berikut ?<br>
	<input type="checkbox" name="penyakit[]" value="jantung">Sakit Jantung<br>
	<input type="checkbox" name="penyakit[]" value="diabetes">Diabetes<br>
	<input type="checkbox" name="penyakit[]" value="hipertensi">Hipertensi<br></p>
	<button type="submit">Daftar</button>
</body>
</html>