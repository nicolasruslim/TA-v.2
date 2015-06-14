<!DOCTYPE html>
<html>
<head>
	<title>Belanja Harian</title>
  <meta name="description" content="">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url().'/assets/css/style.css'; ?>" />
</head>
<body>
	<div id="container">
        <img src="<?php echo base_url().'/assets/images/recipes/'.$recipe->recipe_image.'.jpg';?>">
        <h4><?php echo $recipe->recipe_name;?></h4> 
        
        <p><?php echo $recipe->recipe_description;?></p>
        <p><?php echo $recipe->recipe_howto;?></p>
        <ul>
          <?php foreach($recipe_composition as $composition) { ?>
            <li>
              <p><?php echo $composition->recipe_composition_amount."&nbsp;".$composition->composition_name;?></p>
            </li>
          <?php } ?>
        </ul>

        <a href="<?php echo site_url().'/c_main/buy_recipe_composition/'.$recipe->recipe_id; ?>">Beli Bahan untuk Resep Ini</a>
	</div>
</body>
</html>