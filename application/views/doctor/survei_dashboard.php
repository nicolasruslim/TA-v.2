<!DOCTYPE html>
<html>
<head>
  <title>Belanja Harian</title>
  <meta name="description" content="">
</head>
<body>
  <div id="container">
  <table border="1">
    <tr>
      <td style="width:20px;" >No</td>
      <td style="width:350px;" >Recipe Image</td>
      <td style="width:175px;" >Recipe Name</td>
      <td style="width:450px;" >Recipe Composition </td>
      <td style="width:20px;" >Rating</td>
    </tr>
    <?php $i=1;foreach($recipes as $recipe) { ?>
    <tr>
      <td><?php echo $i; $i++; ?></td>
      <td><a href="#"><img style="width : 350px; height:350px" src="<?php echo base_url().'/assets/images/recipes/'.$recipe->recipe_image.'.jpg';?>"</a></td>
      <td><p><?php echo $recipe->recipe_name;?></p></td>
      <td><ul>
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
      </ul></td>
      <td></td>
    </form>
    </tr>
    <?php } ?>
  </table>
    
      
  </div>
</body>
</html>