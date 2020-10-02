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
<table class="titulo_seccion"><tr><td><a name="ver"></a>- Navegación -</td></tr></table><br><table width="98%" align="center"><tr><td><center>

<table width="75%" align="center" border="0"><tr>
<td><img src="imagenes/juego/pj_navegando.gif" width="137" height="98"></td><td width="3%"></td>
<td align="left">
El mundo de BenderAO contiene lagos, mares y océanos a través de los cuales podes llegar a nuevas y diversas tierras.
<br>
Una vez que tengas una <span class="resaltarcmd">BARCA</span> en el inventario debes seleccionarla y presionar <span class="resaltarcmd">TECLA USAR (U o DOBLE CLICK)</span> cerca de una costa o muelle.
<span class="resaltarcmd">Trabajadores y Piratas* navegan a partir de nivel 25, mientras que el resto de las clases lo harán a partir del nivel 28.</span>
La habilidad "navegación" ha sido deshabilitada.

* NOTA IMPORTANTE: El GALEÓN solamente puede ser utilizado por PIRATAS y TRABAJADORES,
el resto de las clases no cuentan con muchos conocimientos marítimos, por ende la GALERA es el mejor recurso que les queda.
</td>
</tr></table>

</center>

<br><br>

A continuación una lista con las barcas existentes:<br><br>

<table align="center" width="96%">
<tr>
<td class="tdresaltar" rowspan="2">IMAGEN</td>
<td class="tdresaltar" rowspan="2">NOMBRE</td>
<td class="tdresaltar" colspan="2">NIVEL REQUERIDO</td>
<td class="tdresaltar" rowspan="2">ATAQUE MIN/MAX</td>
<td class="tdresaltar" rowspan="2">DEFENSA MIN/MAX</td>
<td class="tdresaltar" rowspan="2">CLASES QUE UTILIZAN</td>
<td class="tdresaltar" rowspan="2">PRECIO/MISION</td>
</tr>
<tr>
<td class="td7">Pirata<br>Trabajador</td>
<td class="td7">Demás Clases</td>
</tr>
<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/juego/barca_barca.gif" width="91" height="66"><!-- <br><img src="imagenes/juego/barca_barca_armada.gif" width="90" height="78"><br><img src="imagenes/juego/barca_barca_legion.gif" width="90" height="77"> --></td>
<td class="td2">Barca</td>
<td class="td2">25</td>
<td class="td2">28</td>
<td class="td2">10 / 25</td>
<td class="td2">5 / 10</td>
<td class="td2">Todas</td>
<td class="td2">Se consigue en misión de Carpintería*</td>
</tr>
<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/juego/barca_galera.gif" width="96" height="65"><!-- <br><img src="imagenes/juego/barca_galera_armada.gif" width="96" height="73"><br><img src="imagenes/juego/barca_galera_legion.gif" width="93" height="73"> --></td>
<td class="td2">Galera</td>
<td class="td2">25</td>
<td class="td2">28</td>
<td class="td2">25 / 45</td>
<td class="td2">10 / 20</td>
<td class="td2">Todas</td>
<td class="td2">53000</td>
</tr>
<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/juego/barca_galeon.gif" width="97" height="68"><!-- <br><img src="imagenes/juego/barca_galeon_armada.gif" width="95" height="78"><br><img src="imagenes/juego/barca_galeon_legion.gif" width="89" height="79"> --></td>
<td class="td2">Galeón</td>
<td class="td2">25</td>
<td class="td2">-</td>
<td class="td2">45 / 105</td>
<td class="td2">20 / 30</td>
<td class="td2">Pirata y Trabajador</td>
<td class="td2">87000</td>
</tr>
</table>


<br><br>

<b><u>Barcas Faccionarias:</u></b><br>
Si tu personaje pertenece a una facción la barca que utilize se verá con el color predominante de esa facción.
<br>
<img src="imagenes/juego/barca_armada.gif" width="94" height="62"> <img src="imagenes/juego/barca_legion.gif" width="96" height="67">
<BR><BR>
<b><u>Barcas según tu Status:</u></b> <BR>
Dependiendo de tu Status, ya sea <b><font color="#6600FF">&lt;CIUDADANO&gt; </font></b> o <b><font color="#FF0000">&lt;CRIMINAL&gt;</font></b> la barca cambia la bandera.Tal como se muestra en las siguientes imágenes : <BR>
<img src="imagenes/juego/barca_barca_armada.gif" width="94" height="62"> <img src="imagenes\juego/barca_barca_legion.gif" width="96" height="67">

<BR><BR>

<table id="menuinfoespecial" align="center" width="80%">
<tr>
<td align="center" valign="middle" style="background:url(imagenes/manual/menuinfo_fondo_arrow.gif);"><img src="imagenes/manual/menuinfo_arrow.gif"> <font color="#FFFFFF"><b>Importante</b></font> <img src="imagenes/manual/menuinfo_arrow.gif"></td>
</tr>
<tr>
<td align="left" valign="top" style="background:url(imagenes/manual/menuinfo_fondo.gif) bottom repeat-x;padding-left:3px;">

<img src="imagenes/manual/menuinfo_flechita.gif"> El pirata, al tener equipado el Galeón, si llega a ser asesinado en altamar una porción de sus pertenencias (50%) quedarán en su inventario, mientras que 
el resto de los items, tendrán un 50% de probabilidades de preservarse en el inventario o bien, que caigan en el fondo del mar.<table><tr><td height="3"></td></tr></table>
<img src="imagenes/manual/menuinfo_flechita.gif">Ver sección de Misiones<table><tr><td height="3"></td></tr></table>

</td>
</tr>
</table>
</td></tr></table><br><br>

<center><a href="domar.php#ver">Anterior</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href="macrosycentinela.php#ver"> Siguiente</a></center>
<br><br><table class="titulo_seccion"><tr><td>---</td></tr></table><table class="volver_indice"><tr valign="middle"><td align="left">&nbsp;<a href="index.php">&lt;&lt;Ir al Índice del Manual</a></td><td align="right">&nbsp;</td></tr></table>

</td>
</tr>
</table>
</body>