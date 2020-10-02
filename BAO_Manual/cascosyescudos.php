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

<table align="Center" class="body" width="1100px">
<tr>
<td>
<table class="titulo_seccion"><tr><td><a name="ver"></a>- Cascos, Escudos y Guantes -</td></tr></table><br><table width="98%" align="center"><tr><td><center><span class="size">Cascos:</span></center><br>

<table align="center" width="90%">
<tr>
<td class="tdresaltar" height="35">IMAGEN</td>
<td class="tdresaltar">NOMBRE</td>
<td class="tdresaltar">DEFENSA MIN/MAX</td>
<td class="tdresaltar">PRECIO</td>
<td class="tdresaltar">CLASES PERMITIDAS</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/graficos/565.gif" width="32" height="32"></td>
<td class="td2">Casco de Hierro</td>
<td class="td2">3 / 8</td>
<td class="td2">4000</td>
<td class="td2">Todas menos Mago y Druida</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/graficos/564.gif" width="32" height="32"></td>
<td class="td2">Casco de Hierro Completo</td>
<td class="td2">10 / 20</td>
<td class="td2">7000</td>
<td class="td2">Herrero, Cazador, Guerrero, Paladín, Bandido, Clérigo y Asesino</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/graficos/373.gif" width="32" height="32"></td>
<td class="td2">Capucha de Cazador</td>
<td class="td2">6 / 14</td>
<td class="td2">9550</td>
<td class="td2">Cazador</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/graficos/717.gif" width="32" height="32"></td>
<td class="td2">Casco de Plata</td>
<td class="td2">20 / 25</td>
<td class="td2">16100</td>
<td class="td2">Herrero, Cazador, Guerrero, Paladín, Bandido, Clérigo y Asesino</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/items/cascoaguila.png" width="32" height="32"></td>
<td class="td2">Casco de Águila</td>
<td class="td2">1 / 5</td>
<td class="td2">2300</td>
<td class="td2">Todas menos mago.</td>

<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/items/cascolobo.png" width="32" height="32"></td>
<td class="td2">Casco de Lobo</td>
<td class="td2">3 / 7</td>
<td class="td2">3000</td>
<td class="td2">Todas menos mago.</td>

<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/items/cascooso.png" width="32" height="32"></td>
<td class="td2">Casco de Oso</td>
<td class="td2">10 / 15 (Resistencia Mágica: 1/5)</td>
<td class="td2">20000</td>
<td class="td2">Druida</td>

<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/items/cascotigre.PNG" width="32" height="32"></td>
<td class="td2">Casco de Tigre</td>
<td class="td2">10 / 15 (Resistencia Mágica: 5/10)</td>
<td class="td2">28000</td>
<td class="td2">Druida</td>
</tr>
</table>
<br>



<br><br><hr align="center" width="60%"><br>


<center><span class="size">Escudos:</span></center><br>


<table align="center" width="90%">
<tr>
<td class="tdresaltar" height="35">IMAGEN</td>
<td class="tdresaltar">NOMBRE</td>
<td class="tdresaltar">DEFENSA MIN/MAX</td>
<td class="tdresaltar">PRECIO</td>
<td class="tdresaltar">CLASES PERMITIDAS</td>
</tr>
<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/graficos/712.gif" width="32" height="32"></td>
<td class="td2">Escudo de Tortuga</td>
<td class="td2">1 / 1</td>
<td class="td2">1500</td>
<td class="td2">Todas menos Mago y Druida</td>
</tr>
<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/graficos/563.gif" width="32" height="32"></td>
<td class="td2">Escudo de Hierro</td>
<td class="td2">1 / 3</td>
<td class="td2">6500</td>
<td class="td2">Guerrero, Paladín, Bandido y Clérigo</td>
</tr>
<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/graficos/3.gif" width="32" height="32"></td>
<td class="td2">Escudo de Plata</td>
<td class="td2">2 / 5</td>
<td class="td2">13000</td>
<td class="td2">Guerrero, Paladín, Bandido y Clérigo</td>
</tr>
</table>


<br><br><hr align="center" width="60%"><br>


<center>Guantes:</center><br>


<table align="center" width="90%">
<tr>
<td class="tdresaltar" height="35">IMAGEN</td>
<td class="tdresaltar">NOMBRE</td>
<td class="tdresaltar">UTILIDAD</td>
<td class="tdresaltar">PRECIO</td>
<td class="tdresaltar">CLASES PERMITIDAS</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/graficos/436.gif" width="32" height="32"></td>
<td class="td2">Guantes de Hurto</td>
<td class="td2">-Permite/incrementa la posibilidad de robar items que no tenga equipado un usuario.<br>-Permite inmovilizar con golpes físicos a un usuario (solo Ladrón).<br>
(ver <a href="indexb32d.php?seccion=habilidades#ver" target="_blank">Sección: Habilidades</a>)</td>
<td class="td2">20000</td>
<td class="td2">Bandido y Ladrón</td>
</tr>

</table></td></tr></table><br><br>

<center><a href="facciones.php#ver">Anterior</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href="hechizos.php#ver"> Siguiente</a></center>
<br><br><table class="titulo_seccion"><tr><td>---</td></tr></table><table class="volver_indice"><tr valign="middle"><td align="left">&nbsp;<a href="index.php">&lt;&lt;Ir al Índice del Manual</a></td><td align="right">&nbsp;</td></tr></table>

</td></tr></table>
</body>


