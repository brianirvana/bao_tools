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
<table class="titulo_seccion"><tr><td><a name="ver"></a>- Anillos y Sombreros -</td></tr></table><br><table width="98%" align="center"><tr><td><center>Anillos con defensa mágica:</center><br>

<table align="center" width="90%">
<tr>
<td class="tdresaltar">IMAGEN</td>
<td class="tdresaltar">NOMBRE</td>
<td class="tdresaltar" width="18%">DEFENSA MÁGICA MIN/MAX</td>
<td class="tdresaltar">PRECIO</td>
<td class="tdresaltar">CLASES PERMITIDAS</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/graficos/12000.gif" width="32" height="32"></td>
<td class="td2">Anillo Mágico</td>
<td class="td2">4 / 6</td>
<td class="td2">N/A</td>
<td class="td2">Bardo, Cazador, Paladín, Clérigo y Asesino</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/graficos/12001.gif" width="32" height="32"></td>
<td class="td2">Anillo de Resistencia Mágica</td>
<td class="td2">8 / 12</td>
<td class="td2">N/A</td>
<td class="td2">Asesino, Bardo y Clérigo</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/graficos/12002.gif" width="32" height="32"></td>
<td class="td2">Anillo de Disolución Mágica</td>
<td class="td2">12 / 15</td>
<td class="td2">N/A</td>
<td class="td2">Asesino, Bardo y Clérigo</td>
</tr>

</table>


<br><br><hr align="center" width="60%"><br><br>


<center>Sombreros con defensa mágica y física:</center><br>

<table align="center" width="90%">
<tr>
<td class="tdresaltar">IMAGEN</td>
<td class="tdresaltar">NOMBRE</td>
<td class="tdresaltar">DEFENSA MÁGICA MIN/MAX</td>
<td class="tdresaltar">DEFENSA FÍSICA MIN/MAX</td>
<td class="tdresaltar">PRECIO</td>
<td class="tdresaltar">CLASES PERMITIDAS</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/graficos/10009.gif" width="32" height="32"></td>
<td class="td2">Sombrero de Aprendiz</td>
<td class="td2">3 / 7</td>
<td class="td2">1 / 1</td>
<td class="td2">8000</td>
<td class="td2">Mago</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/graficos/10009.gif" width="32" height="32"></td>
<td class="td2">Sombrero Mágico</td>
<td class="td2">7 / 11</td>
<td class="td2">1 / 1</td>
<td class="td2">15000</td>
<td class="td2">Mago</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/graficos/10011.gif" width="32" height="32"></td>
<td class="td2">Sombrero de Mago</td>
<td class="td2">12 / 16</td>
<td class="td2">1 / 1</td>
<td class="td2">30000</td>
<td class="td2">Mago</td>
</tr>

</table>
</td></tr></table><br><br>

<center>Cascos con defensa mágica y física:</center><br>

<table align="center" width="90%">
<tr>
<td class="tdresaltar">IMAGEN</td>
<td class="tdresaltar">NOMBRE</td>
<td class="tdresaltar">DEFENSA MÁGICA MIN/MAX</td>
<td class="tdresaltar">DEFENSA FÍSICA MIN/MAX</td>
<td class="tdresaltar">PRECIO</td>
<td class="tdresaltar">CLASES PERMITIDAS</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/graficos/18012.gif" width="32" height="32"></td>
<td class="td2">Casco de Tigre</td>
<td class="td2">10 / 13</td>
<td class="td2">10 / 14</td>
<td class="td2">N/A</td>
<td class="td2">Druida</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/graficos/18011.gif" width="32" height="32"></td>
<td class="td2">Casco de Oso</td>
<td class="td2">3 / 5</td>
<td class="td2">10 / 12</td>
<td class="td2">N/A</td>
<td class="td2">Druida</td>
</tr>

</table>
</td></tr></table><br><br>

<center><a href="armas.php#ver">Anterior</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href="armaduras.php#ver"> Siguiente</a></center>
<br><br><table class="titulo_seccion"><tr><td>---</td></tr></table><table class="volver_indice"><tr valign="middle"><td align="left">&nbsp;<a href="index.php">&lt;&lt;Ir al Índice del Manual</a></td><td align="right">&nbsp;</td></tr></table>

</td>
</tr>
</table>
</body>

