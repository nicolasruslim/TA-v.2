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
      <td style="width:150px;" >Recipe Image</td>
      <td style="width:175px;" >Recipe Name</td>
      <td style="width:250px;" >Recipe Description </td>
      <td style="width:450px;" >Recipe Composition </td>
      <td style="width:200px;" >Recipe Recommended </td>
      <td style="width:200px;" >Recipe Prohibited </td>
      <td style="width:20px;" >Update </td>
    </tr>
    <?php $i=1;foreach($recipes as $recipe) { ?>
    <tr>
      <td><?php echo $i; $i++; ?></td>
      <td><a href="#"><img style="width : 150px; height:150px" src="<?php echo base_url().'/assets/images/recipes/'.$recipe->recipe_image.'.jpg';?>"</a></td>
      <td><p><?php echo $recipe->recipe_name;?></p></td>
      <td><p><?php echo $recipe->recipe_description;?></p></td>
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
      <form method="post" action="<?php echo site_url().'/c_doctor/update_illness_recommendation/'.$recipe->recipe_id; ?>">
      <td><?php foreach ($illness as $ill) { ?>
            <input type="checkbox" name="recommended[]" value="<?php echo $ill->illness_id; ?>"><?php echo $ill->illness_name; ?><br>  
            <?php } ?>
      </td>
      <td><?php foreach ($illness as $ill) { ?>
            <input type="checkbox" name="prohibited[]" value="<?php echo $ill->illness_id; ?>"><?php echo $ill->illness_name; ?><br>  
            <?php } ?>
      </td>
      <td><button type="submit" class="btn btn-success btn-flat">Update</button> </td>
    </form>
    </tr>
    <?php } ?>
  </table>
    
      
  </div>
</body>
</html>