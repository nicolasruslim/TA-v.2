<!DOCTYPE html>
<html>
<head>
  <title>Rekomendasi Untuk Anda</title>
</head>
<body>
  <?php 
    //recipes : recipe_id, recipe_name, recipe_image, recipe_description
    //prediction : [0] -> customer_id, [1] -> recipe_id, [2] -> prediction
    //prohibition : illness_prohibition_id, illness_id, recipe_id
    $dilarang = array();
    $dibolehkan = array();
    $direkomendasikan = array();

    foreach ($predictions as $prediction) {
      if (!empty($prohibition)) {
        foreach ($prohibition as $prhb) {
          if ($prediction[1] == $prhb['recipe_id']) {
            $dilarang[] = $prediction[1];
          }
        }      
      }
      else{
        $dibolehkan[] = $prediction[1];
      }
      if (!empty($recommendation)) {
        foreach ($recommendation as $rcmd) {
          if ($prediction[1] == $rcmd['recipe_id']) {
            $direkomendasikan = $prediction[1];
          }
        }
      }
    }
  ?>
  <h1>Resep yang Mungkin Anda Suka</h1>
  <?php 
    if (!empty($dibolehkan)) {
      $i = 0;
      foreach ($dibolehkan as $boleh) {
        //gabungkan dengan array resep untuk munculkan nama, gambar dan deskripsi
        if($i == 5){
          break;
        }
        foreach ($recipes as $recipe) {
          if($recipe['recipe_id'] == $boleh){
            $image = $recipe['recipe_image'];
  ?>
            <img width="300px" height="300px" src="<?php echo base_url().'assets/images/recipes/'.$image.'.jpg';?>" class="img-responsive">
            <h4><?php echo $recipe['recipe_name']; ?> </h4>
            <p><?php echo $recipe['recipe_description']; ?> </p>
  <?php 
            $i++;
          }
        }
      }
    }
    else{
      echo "Tidak ada rekomendasi resep yang sesuai";
    }
  ?>

    <h1>Resep yang Baik untuk Kesehatan Anda</h1>
  <?php
    if (!empty($direkomendasikan)) {
      $j = 0;
      foreach ($direkomendasikan as $rekomendasi) {
        if($j == 5){
          break;
        }
        foreach ($recipes as $recipe) {
          if($recipe['recipe_id'] == $rekomendasi){
            $image = $recipe['recipe_image'];
  ?>
            <img width="300px" height="300px" src="<?php echo base_url().'assets/images/recipes/'.$image.'.jpg';?>" class="img-responsive">
            <h4><?php echo $recipe['recipe_name']; ?> </h4>
            <p><?php echo $recipe['recipe_description']; ?> </p>
  <?php 
            $j++;
          }
        }
      }
    }
    else{
      echo "Tidak ada rekomendasi resep yang sesuai";
    }
  ?>
</body>
</html>