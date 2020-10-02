<?php 
function center() {
	include("../web/include/config.php");
	include("../web/include/bbcode.php");
		if (isset($_POST['soporte'])) { soporte();} 
  		$db = mysql_connect($dbhost,$dbusername,$dbpass); 
  		mysql_select_db($dbname) or die($dberror);

}

function soporte() {
	include ("../web/include/config.php");
	if (isset($_POST['soporte']) AND strlen($_POST['email']) > 5 AND strlen($_POST['pedido']) > 5) {
		echo "Soporte Enviado";
		echo "<p><a href='?op=Soporte'>Volver</a></p>";
		$nombre = $_POST['nombre'];
		$email= $_POST['email'];
		$pedido = $_POST['pedido'];
		$user= $_POST['user'];
                $sector = $_POST['sector'];
		$ip = $_SERVER['REMOTE_ADDR'];
		$db = mysql_connect($dbhost,$dbusername,$dbpass); 
        mysql_select_db($dbname) or die($dberror);
        mysql_query("INSERT INTO soporte(nombre,email,pedido,user,sector,ip) VALUES('$nombre','$email','$pedido','$user','$sector','$ip')"); 
        mysql_close($db);
		
	} else if (isset($_POST['soporte'])) {
		echo "<h2>Error al completar el formulario</h2>";
		echo "<p>Puede que hayas dejado algún campo incompleto o sea demasiado breve.</p>";
		echo "<p><br /><a href=?op=Soporte>Volver</a></p>";
    } else { 
		$db = mysql_connect($dbhost,$dbusername,$dbpass); 
		mysql_select_db($dbname) or die($dberror);
		$query = "SELECT * FROM usuarios ORDER BY usuario ASC"; 
		$result = mysql_query($query);
	?>
		<div class="soporte">
Recuerde siempre colocar un e-mail verdadero a donde podamos responderle.<br />
		<form align="left" name="form-soporte" id="soporte" method="post" action="?op=Soporte">
                                Nombre:<br />
   				<input name="nombre" type="text" class="soptext" id="nombre"><br /><br />
				E-Mail:<br />
				<input name="email" type="text" class="soptext" id="email"><br /><br />
                                Miembro al que te diriges:<br />
				<select size="1" name="user">
				<option value="Cualquiera" selected>Cualquiera</option>
      <option value="About">About</option>
      <option value="Cerridwen">Cerridwen</option>
      <option value="Kimmy">Kimmy</option>
      <option value="Hilindur">Hilindur</option>
      <option value="Algaya">Aglaya</option>
      <option value="Excaliburo">Excalibur</option>
                </select><br /><br />
                                Sector del Staff:<br />
                                <select size="1" name="sector">
                                <option value="Game Masters" selected>Game Masters</option>
      <option value="Rolemasters">Rolemasters</option>
      <option value="Consejo de Banderbill">Consejo de Banderbill</option>
      <option value="Concilio de las Sombras">Concilio de las Sombras</option>
      <option value="Soporte técnico">Soporte técnico</option>
                </select><br /><br />
  				Pedido:
  				<textarea name="pedido" class="sopcont"></textarea><br /><br />
				
                             
  		<input name="soporte" type="submit" value="Enviar"> <input type="reset" value="Resetear"><br />
                
  	    	</form>
		</div> <? 
	}
} 

?>