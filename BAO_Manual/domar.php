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
<table class="titulo_seccion"><tr><td><a name="ver"></a>- Domar animales -</td></tr></table><br><table width="98%" align="center"><tr><td><script type="text/javascript" src="dats/table_sort.js"></script><br>

La doma consiste en domesticar criaturas para hacerlas mascotas, deberás presionar <span class="resaltarcmd">TECLA DOMAR (D)</span> y luego hacer click en una criatura. Éstas serán fieles compañeras de aventuras, ya que te defenderán en caso de que alguien te ataque.

<br><br>

Las mascotas obedecerán órdenes, para lo cuál pueden clickear en su mascota y utilizar el comando <span class="resaltarcmd">/QUIETO</span> para que se quede en el lugar y deje de atacar, o <span class="resaltarcmd">/ACOMPAÑAR</span> para que continúe siguiéndolos.

<br><br><br>




<table id="menuinfoespecial" align="center" width="40%">
<tr>
<td align="center" valign="middle" style="background:url(imagenes/manual/menuinfo_fondo_arrow.gif);"><img src="imagenes/manual/menuinfo_arrow.gif"></td>
</tr>
<tr>
<td align="left" valign="top" style="background:url(imagenes/manual/menuinfo_fondo.gif) bottom repeat-x;padding-left:3px;">

<b>Domar criaturas depende de:</b><br>
<table><tr><td height="3"></td></tr></table>
<img src="imagenes/manual/menuinfo_flechita.gif"> Carisma del personaje.
<table><tr><td height="3"></td></tr></table>
<img src="imagenes/manual/menuinfo_flechita.gif"> Puntos de habilidad en Domar.
<table><tr><td height="3"></td></tr></table>
<img src="imagenes/manual/menuinfo_flechita.gif"> Clase del personaje.

</td>
</tr>
</table>


<br><br>

<u><b>Cálculo para Domar:</b></u><br>
Carisma * skills en domar animales= puntos para domar.

<br><br>

<I>Luego el resultado que dé, tiene que ser mayor o igual a los Puntos Domable de la Criatura (ver tabla de abajo).</I>

<br><br>
<table align="center" class="tablasinborde">
<tr>
<td class="tdresaltar">CRIATURA</td>
<td class="tdresaltar">DEMÁS CLASES:</td>
<td class="tdresaltar">DRUIDA CON FLAUTA MÁGICA EQUIPADA:</td>
<td class="tablasinborde" width="5%"></td>
</tr>

<tr>
<td class="td2 colorcolumna1">Pavo Real</td>
<td class="td2 colorcolumna1">30</td>
<td class="td2 colorcolumna1">21</td>
</tr>

<tr>
<td class="td2 colorcolumna2">Gallo</td>
<td class="td2 colorcolumna2">30</td>
<td class="td2 colorcolumna2">21</td>
</tr>

<tr>
<td class="td2 colorcolumna2">Cerdo</td>
<td class="td2 colorcolumna2">50</td>
<td class="td2 colorcolumna2">35</td>
</tr>

<tr>
<td class="td2 colorcolumna2">Vaca</td>
<td class="td2 colorcolumna2">70</td>
<td class="td2 colorcolumna2">49</td>
</tr>

<tr>
<td class="td2 colorcolumna2">Cuervo</td>
<td class="td2 colorcolumna2">800</td>
<td class="td2 colorcolumna2">560</td>
</tr>

<tr>
<td class="td2 colorcolumna2">Gallo Salvaje</td>
<td class="td2 colorcolumna2">400</td>
<td class="td2 colorcolumna2">280</td>
</tr>

<tr>
<td class="td2 colorcolumna1">Conejo</td>
<td class="td2 colorcolumna1">30</td>
<td class="td2 colorcolumna1">21</td>
</tr>

<tr>
<td class="td2 colorcolumna1">Hormiga</td>
<td class="td2 colorcolumna1">5</td>
<td class="td2 colorcolumna1">3</td>
</tr>

<tr>
<td class="td2 colorcolumna2">Murciélago</td>
<td class="td2 colorcolumna2">400</td>
<td class="td2 colorcolumna2">280</td>
</tr>

<tr>
<td class="td2 colorcolumna1">Serpiente</td>
<td class="td2 colorcolumna1">400</td>
<td class="td2 colorcolumna1">280</td>
</tr>

<tr>
<td class="td2 colorcolumna2">Rata Salvaje</td>
<td class="td2 colorcolumna2">600</td>
<td class="td2 colorcolumna2">420</td>
</tr>

<tr>
<td class="td2 colorcolumna1">Escorpión</td>
<td class="td2 colorcolumna1">600</td>
<td class="td2 colorcolumna1">420</td>
</tr>

<tr>
<td class="td2 colorcolumna2">Águila</td>
<td class="td2 colorcolumna2">600</td>
<td class="td2 colorcolumna2">420</td>
</tr>

<tr>
<td class="td2 colorcolumna1">Vaca Salvaje</td>
<td class="td2 colorcolumna1">1100</td>
<td class="td2 colorcolumna1">770</td>
</tr>

<tr>
<td class="td2 colorcolumna2">Lobo y Hombre Lobo</td>
<td class="td2 colorcolumna2">1250</td>
<td class="td2 colorcolumna2">875</td>
</tr>

<tr>
<td class="td2 colorcolumna1">Goblin</td>
<td class="td2 colorcolumna1">1500</td>
<td class="td2 colorcolumna1">1050</td>
</tr>

<tr>
<td class="td2 colorcolumna2">Osezno </td>
<td class="td2 colorcolumna2">1520</td>
<td class="td2 colorcolumna2">1064</td>
</tr>

<tr>
<td class="td2 colorcolumna1">Duende</td>
<td class="td2 colorcolumna1">1700</td>
<td class="td2 colorcolumna1">1190</td>
</tr>

<tr>
<td class="td2 colorcolumna2">Tarántula</td>
<td class="td2 colorcolumna2">2100</td>
<td class="td2 colorcolumna2">1470</td>
</tr>

<tr>
<td class="td2 colorcolumna1">Orco Brujo</td>
<td class="td2 colorcolumna1">2100</td>
<td class="td2 colorcolumna1">1470</td>
</tr>

<tr>
<td class="td2 colorcolumna2">Tortuga y Tortuga de Mar</td>
<td class="td2 colorcolumna2">2010</td>
<td class="td2 colorcolumna2">1407</td>
</tr>

<tr>
<td class="td2 colorcolumna1">Jabalí Salvaje</td>
<td class="td2 colorcolumna1">250</td>
<td class="td2 colorcolumna1">175</td>
</tr>

<tr>
<td class="td2 colorcolumna2">Tigre de vengala</td>
<td class="td2 colorcolumna2">350</td>
<td class="td2 colorcolumna2">245</td>
</tr>

<tr>
<td class="td2 colorcolumna2">Tigre Salvaje</td>
<td class="td2 colorcolumna2">2100</td>
<td class="td2 colorcolumna2">1470</td>
</tr>

<tr>
<td class="td2 colorcolumna1">Hormiga gigante</td>
<td class="td2 colorcolumna1">400</td>
<td class="td2 colorcolumna1">280</td>
</tr>

<tr>
<td class="td2 colorcolumna2">Gorila Polar</td>
<td class="td2 colorcolumna2">2200</td>
<td class="td2 colorcolumna2">1540</td>
</tr>

<tr>
<td class="td2 colorcolumna1">Oso Pardo</td>
<td class="td2 colorcolumna1">2200</td>
<td class="td2 colorcolumna1">1540</td>
</tr>

<tr>
<td class="td2 colorcolumna1">Mago Malvado</td>
<td class="td2 colorcolumna1">2220</td>
<td class="td2 colorcolumna1">1554</td>
</tr>
</table>

<br><br>

<table id="menuinfoespecial" align="center" width="60%">
<tr>
<td align="center" valign="middle" style="background:url(imagenes/manual/menuinfo_fondo_arrow.gif);"><img src="imagenes/manual/menuinfo_arrow.gif"></td>
</tr>
<tr>
<td align="left" valign="top" style="background:url(imagenes/manual/menuinfo_fondo.gif) bottom repeat-x;padding-left:3px;">

<b>Aviso:</b><br>
<table><tr><td height="3"></td></tr></table>
<img src="imagenes/manual/menuinfo_flechita.gif"> El máximo de mascotas que puedes tener es 3.
<table><tr><td height="3"></td></tr></table>
<p><img src="imagenes/manual/menuinfo_flechita.gif"> Al desloguear las criaturas se van con vos y vuelven con vos.<BR>
  <img src="imagenes/manual/menuinfo_flechita.gif">El druida requiere un 30% menos de puntos para domar animales solamente con flauta mágica equipada.
  
</p>
<p><img src="imagenes/manual/menuinfo_flechita.gif" alt="" />No pod&eacute;s domar mas de 2 mascotas del mismo tipo a la vez.</p></td>
</tr>
</table>
</td></tr></table><br><br>

<center><a href="carpinteria.php#ver">Anterior</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href="navegacion.php#ver"> Siguiente</a></center>
<br><br><table class="titulo_seccion"><tr><td>---</td></tr></table><table class="volver_indice"><tr valign="middle"><td align="left">&nbsp;<a href="index.php">&lt;&lt;Ir al Índice del Manual</a></td><td align="right">&nbsp;</td></tr></table>

</td>
</tr>
</table>
</body>

