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

<br>
<!-- TABLA 1 -->
<table align="center" cellpadding="0" cellspacing="0" border="0" style="width:70%">
<td style="background:""; text-align:center; height:148px">

<br>
<table align="Center" class="body" width="1100px">
<tr>
<td>

<table class="titulo_seccion"><tr><td><a name="ver"></a>- Trabajador -</td></tr></table><br><br>
<table align="center" width="1000px">
<tr>
<td>
<img src="imagenes\juego/Trabajador.jpg" alt=""></td>
<td width="800px">

<span class="size"><p><center>El trabajador se caracteriza por simplificar todos los oficios en una sola clase. Es decir, tiene las bonificaciones que antes tenian los leñadores, pescadores, herreros, mineros y carpinteros como clases distintas entre si.
El trabajador puede ser creado como especializado en una sola clase, en algunas o en todas. <br><br>

Los skills de cada oficio se siguen entrenando normalmente con el uso.<br><br>

La clase trabajadora puede extraer o construir de a UNO o MAS recursos/objetos a la vez, dependiendo del nivel que sea. <br><br>

Mientras mayor nivel sea el trabajador, más recursos obtendrá por vez, y por ende más objetos podrá construir en menos tiempo.<br><br></center></p></span>
<br><br></span>

<span class="size"><u>IMPORTANTE:</u> El trabajador es una clase que unifica bonificaciones de todos los oficios. Eso significa que si queremos hacer un minero, creamos un trabajador y podremos minar con tranquilidad.<br>
Los trabajadores tienen una chance de 4/100 de conseguir 500xp trabajando ya sea minar/pescar/talar/lingotear, esta bonificacion es hasta lvl 20.<br>
Los trabajadores navegan en nivel 25 (En vez del resto, que navegan en nivel 28)<br>
¿Cómo Funciona la Minería / Talar / Lingoteo / Pesca?<br>


<u>MINAR</u><br>
Si sos MENOR o igual a nivel 20, el mínimo de minerales por vez es: 3 y tu nivel.<br>
Si sos MAYOR a nivel 20 y menor a 30, el mínimo sube a 4 y tu nivel +5.<br>
Si sos MAYOR o IGUAL a nivel 30, te da entre 5 y tu nivel +10.<br>
<br><br>
<u>LINGOTEAR</u><br>
De lvl 1 a 14 de 1 a tu nivel +10.<br>
De lvl 15 a 29 de 1 a tu nivel +50.<br>
De lvl 30 en adelante de 1 a tu nivel +100.<br>
<br><br>
<u>TALAR EN INSEGURA</u><br>
Si sos MENOR a 20, el minimo de Madera por vez es: 3 y tu nivel.<br>
Si sos MAYOR a nivel 19 y menor a 24, el minimo sube a 4 y tu nivel.<br>
Si sos MAYOR a nivel 25 y menor a 29, el minimo sube a 5 y tu nivel +5.<br>
Si sos MAYOR o IGUAL a nivel 30, te da entre 7 y tu nivel +10.<br>
<br><br>
<u>TALAR EN ZONA SEGURA</u><br>
Si sos MENOR a 20, el minimo de Madera por vez es: 1 y tu nivel.<br>
Si sos MAYOR a nivel 20 y menor a 24, el minimo es 1 y tu nivel -5.<br>
Si sos MAYOR a nivel 25 y menor a 29, el minimo sube a 3 y tu nivel -5.<br>
Si sos MAYOR o IGUAL a nivel 30, el minimo sube a 5 y tu nivel -5.<br>
<br><br>
<u>PESCAR EN INSEGURA</u><br>
Si sos MENOR a 20, el mínimo de pesca por vez es: 1 y tu nivel +5.<br>
Si sos MAYOR a nivel 20 y menor a 24, el minimo sube a 3 y tu nivel +10.<br>
Si sos MAYOR a nivel 25 y menor a 29, el minimo sube a 5 y tu nivel +15.<br>
Si sos MAYOR o IGUAL a nivel 30, te da entre 7 y tu nivel +20.<br>
<br><br>
<u>PESCAR EN ZONA SEGURA</u><br>
Si sos MENOR a 20, el mínimo de pesca por vez es: 1 y tu nivel.<br>
Si sos MAYOR a nivel 20 y menor a 24, el minimo sube a 3 y tu nivel.<br>
Si sos MAYOR a nivel 25 y menor a 29, el minimo sube a 5 y tu nivel +5.<br>
Si sos MAYOR o IGUAL a nivel 30, te da entre 7 y tu nivel +10.<br>
<br><br>
<u>PESCAR EN INSEGURA CON RED</u><br>
Si sos MENOR a 20, el mínimo de pesca por vez es: 1 y tu nivel +5.<br>
Si sos MAYOR a nivel 20 y menor a 24, el minimo sube a 3 y tu nivel +10.<br>
Si sos MAYOR a nivel 25 y menor a 29, el minimo sube a 5 y tu nivel +15<br>
Si sos MAYOR o IGUAL a nivel 30, te da entre 7 y tu nivel +25<br>
<br><br>
<u>PESCAR CON RED EN ZONA SEGURA</u><br>
Si sos MENOR a 20, el mínimo de pesca por vez es: 1 y tu nivel.<br>
Si sos MAYOR a nivel 20 y menor a 24, el minimo sube a 3 y tu nivel<br>
Si sos MAYOR a nivel 25 y menor a 29, el minimo sube a 5 y tu nivel +15<br>
Si sos MAYOR o IGUAL a nivel 30, te da entre 7 y tu nivel +10<br>


</span>
<br><br>
</td>

</tr>
</table>

<table class="titulo_seccion"><tr><td>---</td></tr>
<center><a href="pociones.php#ver">Anterior</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href="talaypesca.php#ver"> Siguiente</a></center>
<br><br><table class="titulo_seccion"><tr><td>---</td></tr></table><table class="volver_indice"><tr valign="middle"><td align="left">&nbsp;<a href="index.php">&lt;&lt;Ir al Índice del Manual</a></td><td align="right">&nbsp;</td></tr></table>

</td>
</tr>
</table>
</body>
