<?
  // No almacenar en el cache del navegador esta página.
		header('Content-Type: text/html; charset=utf-8');
		header("Expires: Mon, 26 Jul 1997 05:00:00 GMT");             		// Expira en fecha pasada
		header("Last-Modified: " . gmdate("D, d M Y H:i:s") . " GMT");		// Siempre página modificada
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

<p><span class="size">Uno de los contra-tiempos que nuestro personaje deberá tener que afrontar es el hecho de la muerte, algo inexorable dentro de las Tierras de Bender. Es decir cuando los puntos de vida de un personaje lleguen a cero morirá y al hacerlo se convertirá en un alma en pena<br><br>

Debemos recordar que al morir el personaje pasará a ser un espíritu, imposibilitado de atacar y hablar con personajes vivos (a menos que sean otros espíritus, Game Masters o Role Masters). 
Nuestra Energía y Salud disminuirán a la cifra cero (0). 
Los ítems que se posean al momento de morir caerán al piso, menos aquellos como las barcas, ítems de quests, items de donante y los ítems de newbies (En caso de ser ciudadano).
<br><br>
Excepciones a tener en cuenta:
-Los Ítems del inventario también pueden caer en el agua al morir a excepción de que el personaje sea un <span class="resaltarcmd"><font size="2">Pirata</font></span> y se encuentre usando un <span  class="resaltarcmd"><font size="2">Galeón</font></span>.
</span>
</p>
<u><span class="resaltarcmd"><font size="2">Resucitación</font></span></u>
<p><span class="size">Existen dos formas a las que el personaje muerto puede recurrir para revivir: <br><br>
La primera opción es la de dirigirse a cualquiera de las ciudades que tengan sacerdotes y, cerca del mismo, escribir el comando /resucitar o también hacerle "doble click".<br>
<br><br>
<div align="center"><img src="imagenes\juego/MuerteEjemplo.png" width="650" height="493"></div>

</br><span class="size">La segunda opción es recurrir a algún personaje cuyas habilidades mágicas le permitan resucitar caídos. (Mago, Bardo, Clerigo, Druida, Paladín, Asesino, Bandido)<span class="resaltar"><font size="2">*</font>.</span></span>
<br><br>
<span class="size"><span class="resaltar"><u>*NOTA:</u></span> De esta forma el personaje solo resucitará con un punto de vida en la Salud, por lo que se recomienda tener a disposición pociones de vida, una vestimenta para arroparse lo antes posible y provisiones para recuperar los puntos en la barra de comida, bebida y la energía ya que todos estos valores quedaran en 0 cuando nos reviva un personaje aliado.</span><br><br>



</p>
<center><a href="mapa.php#ver">Anterior</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href="oro.php#ver"> Siguiente</a></center>
<br><br><table class="titulo_seccion"><tr><td>---</td></tr></table><table class="volver_indice"><tr valign="middle"><td align="left">&nbsp;<a href="index.php">&lt;&lt;Ir al Índice del Manual</a></td><td align="right">&nbsp;</td></tr></table>
</td>
</tr>
</table>

</body>
