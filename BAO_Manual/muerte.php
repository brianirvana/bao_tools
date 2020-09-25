<?
  // No almacenar en el cache del navegador esta p�gina.
		header('Content-Type: text/html; charset=utf-8');
		header("Expires: Mon, 26 Jul 1997 05:00:00 GMT");             		// Expira en fecha pasada
		header("Last-Modified: " . gmdate("D, d M Y H:i:s") . " GMT");		// Siempre p�gina modificada
		header("Cache-Control: no-cache, must-revalidate");           		// HTTP/1.1
		header("Pragma: no-cache");                                   		// HTTP/1.0
		mb_http_output("windows-1252");
        header("Content-Type: text/html; charset=". mb_http_output());
?>

<?php
	include_once("analyticstracking.php");
	if (!isset($sRetry))
?>

<link type="image/x-icon" href="favicon.ico" rel="icon" />

<?php
	require_once("grafica.php");
	top();
?>

<!-- TABLA 1 -->
<table align="center" cellpadding="0" cellspacing="0" border="0" style="width:70%">
<td style="background:""; text-align:center; height:148px">
<table height="50"align="center" cellpadding="0" cellspacing="0" bgcolor="">
</table>
<br>
<table align="Center" class="body" width="1100px">
<tr>
<td>
<table class="titulo_seccion"><tr><td><a name="ver"></a>- Muerte -</td></tr></table><br><table width="98%" align="center"><tr><td><left><u><span class="resaltarcmd"><font size="2">Muerte</font></span></u></left><br>

<p><span class="size">Uno de los contra-tiempos que nuestro personaje deber� tener que afrontar es el hecho de la muerte, algo inexorable dentro de las Tierras de Bender. Es decir cuando los puntos de vida de un personaje lleguen a cero morir� y al hacerlo se convertir� en un alma en pena<br><br>

Debemos recordar que al morir el personaje pasar� a ser un esp�ritu, imposibilitado de atacar y hablar con personajes vivos (a menos que sean otros esp�ritus, Game Masters o Role Masters). 
Nuestra Energ�a y Salud disminuir�n a la cifra cero (0). 
Los �tems que se posean al momento de morir caer�n al piso, menos aquellos como las barcas, �tems de quests, items de donante y los �tems de newbies (En caso de ser ciudadano).
<br><br>
Excepciones a tener en cuenta:
-Los �tems del inventario tambi�n pueden caer en el agua al morir a excepci�n de que el personaje sea un <span class="resaltarcmd"><font size="2">Pirata</font></span> y se encuentre usando un <span  class="resaltarcmd"><font size="2">Gale�n</font></span>.
</span>
</p>
<u><span class="resaltarcmd"><font size="2">Resucitaci�n</font></span></u>
<p><span class="size">Existen dos formas a las que el personaje muerto puede recurrir para revivir: <br><br>
La primera opci�n es la de dirigirse a cualquiera de las ciudades que tengan sacerdotes y, cerca del mismo, escribir el comando /resucitar o tambi�n hacerle "doble click".<br>
<br><br>
<div align="center"><img src="imagenes\juego/MuerteEjemplo.png" width="650" height="493"></div>

</br><span class="size">La segunda opci�n es recurrir a alg�n personaje cuyas habilidades m�gicas le permitan resucitar ca�dos. (Mago, Bardo, Clerigo, Druida, Palad�n, Asesino, Bandido)<span class="resaltar"><font size="2">*</font>.</span></span>
<br><br>
<span class="size"><span class="resaltar"><u>*NOTA:</u></span> De esta forma el personaje solo resucitar� con un punto de vida en la Salud, por lo que se recomienda tener a disposici�n pociones de vida, una vestimenta para arroparse lo antes posible y provisiones para recuperar los puntos en la barra de comida, bebida y la energ�a ya que todos estos valores quedaran en 0 cuando nos reviva un personaje aliado.</span><br><br>



</p>
<center><a href="mapa.php#ver">Anterior</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href="oro.php#ver"> Siguiente</a></center>
<br><br><table class="titulo_seccion"><tr><td>---</td></tr></table><table class="volver_indice"><tr valign="middle"><td align="left">&nbsp;<a href="index.php">&lt;&lt;Ir al �ndice del Manual</a></td><td align="right">&nbsp;</td></tr></table>
</td>
</tr>
</table>

</body>
