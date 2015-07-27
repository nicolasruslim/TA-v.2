<!DOCTYPE html>
<html>
<head>
	<title>Admin</title>
</head>
<body>
	<p>Hi, <?php echo $this->session->userdata('username'); ?></p>
	<a href="<?php echo site_url('c_main/logout'); ?>">Logout</a>
</body>
</html>