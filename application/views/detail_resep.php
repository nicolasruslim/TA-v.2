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
        <?php if ($rating_status != 1){ ?>
          <div><form method="post" action="<?php echo site_url().'/c_main/give_rating/'.$recipe->recipe_id; ?>"></div>
            Apakah Anda menyukai atau tertarik untuk memasak resep ini? <br>
            <input type="radio" name="rating" value="1"> Sangat tidak suka <br>
            <input type="radio" name="rating" value="2"> Tidak suka <br>
            <input type="radio" name="rating" value="3"> Biasa <br>
            <input type="radio" name="rating" value="4"> Suka <br>
            <input type="radio" name="rating" value="5"> Sangat suka <br>
          <button type="submit" >Beri Penilaian untuk Resep</button><br><br>
        <?php }else{
          echo "Penilaian Anda sudah kami terima";
          } ?>
        <p><?php echo $recipe->recipe_description;?></p>
        
        <ul>
          <?php 
            $json_howtos = $recipe->recipe_howto;
            $jfo = json_decode($json_howtos);
            $howtos = $jfo->howtos;
            foreach ($howtos as $howto) { ?>
          <li>
            <p><?php
              echo $howto->howto.'<br>';
            } ?></p>
          </li>
        </ul>
        <h2>Komposisi :</h2>
        <ul>
          <?php 
            $json_compositions = $recipe->recipe_composition;
            $jfo = json_decode($json_compositions);
            $compositions = $jfo->compositions;
            foreach ($compositions as $composition) { ?>
          <li>
            <p><?php
              echo $composition->composition.'<br>';
            } ?></p>
          </li>
        </ul>

        <a href="<?php echo site_url().'/c_main/buy_recipe_composition/'.$recipe->recipe_id; ?>">Beli Bahan untuk Resep Ini</a>
  </div>
  <script src="<?php echo base_url().'/assets/js/jquery.js';?>"></script>
  <script src="<?php echo base_url().'/assets/js/jquery.starrr.min.js';?>"></script>
  <script>
    $('.starrr').on('starrr:change', function(e, value){
      if (value) {
        $('.your-choice-was').show();
        $('.choice').text(value);
      } else {
        $('.your-choice-was').hide();
      }
    });
  </script>
  <script type="text/javascript">
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
    (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
    m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

    ga('create', 'UA-39205841-5', 'dobtco.github.io');
    ga('send', 'pageview');
  </script>
</body>
</html>