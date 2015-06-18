<!DOCTYPE html>
<html>
<head>
	<title>Admin Control Panel - Insert Recipe</title>
</head>
<body>
	<form  action="insert_recipe_process" id="form_insert_recipe" method="post" enctype="multipart/form-data">
		<p>Recipe Name : 
		<input type="text" name="recipe_name" id="recipe_name" placeholder="Nama Resep"> </p>
		<p>Recipe Image : 
		<input type="file" name="recipe_image" id="recipe_image"> </p>
		<p>Recipe Type :
		<select name="recipe_type_id">
			<option value="1">Seafood</option>
			<option value="2">Sup</option>
			<option value="3">Ayam</option>
			<option value="4">Daging</option>
			<option value="5">Sayur</option>
			<option value="6">Minuman</option>
		</select></p>
		<p>Recipe Description : 
		<input type="text" name="recipe_description" id="recipe_description" placeholder="Deskripsi Resep"> </p>
		<p>Difficulty :
		<select name="recipe_difficulty">
			<option value="1">Sangat Mudah</option>
			<option value="2">Mudah</option>
			<option value="3">Sedang</option>
			<option value="4">Sulit</option>
			<option value="5">Sangat Sulit</option>
		</select></p>
		<p>How To : 
		<input type="text" name="recipe_howto" id="recipe_howto" placeholder="Langkah Memasak"> </p>
		<p>Recipe Composition : 
		<input type="text" name="recipe_composition" id="recipe_composition"> </p>
		
		<div id="dynamicInput">
			<p>Related Product 1 : <input type="text" name="related_product[]" id="related_product"></p>
			<p>Product Size 1 : 
			<select name="recipe_difficulty">
				<option value="1">Sangat Mudah</option>
				<option value="2">Mudah</option>
				<option value="3">Sedang</option>
				<option value="4">Sulit</option>
				<option value="5">Sangat Sulit</option>
			</select></p>
			<p>Product Amount 1 : 
			<input type="text" name="related_product" id="" placeholder="Jumlah produk dipilih agar mencukupi kebutuhan"> </p>
		</div>
	</form>
	 
	<input type="button" value="Add another text input" onClick="addInput('dynamicInput');">
	<button type="submit" form="form_insert_recipe" >Add Recipe !</button>

	<div id="test"></div>
	<script src="http://www.devbridge.com/projects/autocomplete/jquery/local/scripts/jquery.autocomplete.js"></script>
	<script type="text/javascript">
		var countries = [
   			{ value: 'Andorra', data: 'AD' },
   			{ value: 'Zimbabwe', data: 'ZZ' }
		];

		$('#related_product').autocomplete({
    		lookup: countries,
    		onSelect: function (suggestion) {
        		alert('You selected: ' + suggestion.value + ', ' + suggestion.data);
    		}
		});
	</script>




	<script type="text/javascript">
	 	var counter = 1;
		var limit = 20;
		function addInput(dynamicInput){
     		if (counter == limit)  {
          		alert("You have reached the limit of adding " + counter + " inputs");
     		}
     		else {
          		var newdiv = document.createElement('div');
          		newdiv.innerHTML = "<p>Related Product "+(counter+1)+" : <input type='text' name='related_product[]' id='related_product' placeholder='Produk terkait'> </p><p>Product Size "+(counter+1)+" : <select name='recipe_difficulty'><option value='1'>Sangat Mudah</option><option value='2'>Mudah</option><option value='3'>Sedang</option><option value='4'>Sulit</option><option value='5'>Sangat Sulit</option></select></p><p>Product Amount "+(counter+1)+" : <input type='text' name='related_product' id='related_product[]' placeholder='Jumlah produk dipilih agar mencukupi kebutuhan'> </p>";
          		document.getElementById(dynamicInput).appendChild(newdiv);
          		counter++;
     		}
		}
	 </script>
	 <script src='http://lorenzoongithub.github.io/completely/complete.ly.1.0.1.min.js'></script>
	 <script>
	   var auto = completely(document.getElementById('test'), {
	        fontSize : '24px',
	        fontFamily : 'Arial',
	        color:'#933',
	   });
	   auto.options = ['apple','cabbage','orange', 'cucumber'];
	   auto.startFrom = 1;
	   auto.repaint(); 
	   setTimeout(function() {
	    auto.input.focus();
	   },1);
	   auto.onChange = function setFiller(){
      auto.repaint();
      if(document.getElementById("Requestor")){
         document.getElementById("Requestor").value=auto.getText();
      }
   }
	</script>

	
</body>
</html>