<?
  // No almacenar en el cache del navegador esta página.
		header('Content-Type: text/html; charset=utf-8');
		header("Expires: Mon, 26 Jul 1997 05:00:00 GMT");             		// Expira en fecha pasada
		header("Last-Modified: " . gmdate("D, d M Y H:i:s") . " GMT");		// Siempre página modificada
		header("Cache-Control: no-cache, must-revalidate");           		// HTTP/1.1
		header("Pragma: no-cache");                                   		// HTTP/1.0
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
<table class="titulo_seccion"><tr><td><a name="ver"></a>- Minería y Fundición -</td></tr></table><br><table width="98%" align="center"><tr><td><center>
<u><span class="resaltar">MINERÍA</span></u><br><br>

<table width="75%" align="center" border="0"><tr>
<td><img src="imagenes\juego/pj_minando.jpg" width="149" height="135"></td><td width="3%"></td>
<td align="left"><span class="size">
El oficio de la minería consiste en la extracción de minerales, una vez que tengas un <span class="resaltarcmd">PIQUETE DE MINERO</span> deberás equiparlo con la <span class="resaltarcmd">TECLA EQUIPAR (E)</span>, luego buscar un yacimiento, presionar <span class="resaltarcmd">TECLA USAR (U o DOBLE CLICK)</span> y clickear sobre el yacimiento.
<br><br>
La minería depende de la clase y los puntos de habilidad en minería que tenga el personaje, puesto que un Trabajador podrá conseguir entre 
15 y 65 minerales mientras que cualquier otra clase sólo conseguirá de a UNO por vez.
</span>

</td>
</tr></table>


<br><br><br><hr noshade width="55%" size="1" color="#959595" align="center"><br>


<u><span class="resaltar">FUNDICIÓN</span></u><br><br>

<table width="75%" align="center" border="0"><tr>
<td><img src="imagenes\juego/pj_fragua.jpg" width="147" height="126"></td><td width="3%"></td>
<td align="left"><span class="size">
-
El oficio de la fundición consiste en la fundición de minerales para convertirlos en lingotes (útiles para crear armas, armaduras, etc. en la herrería), una vez que tengas una cierta cantidad de <span class="resaltarcmd">MINERALES</span> deberás buscar una fragua, seleccionar los minerales, presionar <span class="resaltarcmd">TECLA USAR (U o DOBLE CLICK)</span> y clickear sobre la fragua.
<br><br>
-
La fundición depende de la clase y los puntos de habilidad en minería que tenga el personaje, puesto que un Trabajador podrá fundir todo tipo de minerales mientras que 
el resto clases solo puede fundir Minerales de Hierro.<p>- Al crear un 
objeto/armadura con lingotes, tendrás la oportunidad de fundirlo por si te 
equivocas, pero solo recuperaras entre el 10% y el 60% de los lingotes 
utilizados para crear el objeto/armadura. <br>
- Para fundir Armaduras, Armas u otros objetos, necesitás ser de clase 
Trabajador (únicamente) y tener 100 skills en herrería.<br>
- Para fundir, solo haz doble clic en el inventario sobre el objeto que deseas 
fundir (solo se funde 1 solo objeto a la vez) y luego hacer clic sobre un Yunke.<br><br><i><u>Temas Relacionados</u></i>: <a href="macrosycentinela.php?seccion=macros_centinela#ver" target="_blank">Sección: Macros y Centinela</a>
</span></td>
</tr></table>





<br><br><span class="size">Tabla con los puntos de habilidad requeridos para fundir minerales:</span><br><br>

<table align="center" width="40%">
<tr>
<td class="tdresaltar">MINERAL</td>
<td class="tdresaltar">PUNTOS DE HABILIDAD EN MINERÍA PARA FUNDIR MINERALES</td>
</tr>
<tr>
<td class="tdresaltar3" height="50"><img src="imagenes\items/hierro.gif" width="32" height="32"></td>
<td class="td7"><b>25 (Trabajador)</b><br><br>75 (Demás Clases)</td>
</tr>
<tr>
<td class="tdresaltar3" height="50"><img src="imagenes\items/plata.gif" width="32" height="32"></td>
<td class="td7"><b>50 (Trabajador)</b></td>
</tr>
<tr>
<td class="tdresaltar3" height="50"><img src="imagenes\items/oro.gif" width="32" height="32"></td>
<td class="td7"><b>100 (Trabajador)</b></td>
</tr>
</table>

<br><br><span class="size">Tabla con la cantidad de minerales requeridos para fundir lingotes:</span><br><br>

<table align="center" width="30%">
<tr>
<td class="tdresaltar">CANTIDAD DE MINERALES PARA FUNDIR 1 LINGOTE</td>
</tr>
<tr>
<td class="td7">700 <img src="imagenes\items/hierro.gif" width="32" height="32"> = 
50 <img src="imagenes\items/lingoh.gif" width="32" height="32"></td>
</tr>
<tr>
<td class="td7">1000 <img src="imagenes\items/plata.gif" width="32" height="32"> = 
50 <img src="imagenes\items/lingop.gif" width="32" height="32"></td>
</tr>
<tr>
<td class="td7">1750&nbsp; <img src="imagenes\items/oro.gif" width="32" height="32"> = 
50 <img src="imagenes\items/lingoo.gif" width="32" height="32"></td>
</tr>
</table>

</center>
</td></tr></table><br><br>

<center><a href="talaypesca.php#ver">Anterior</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href="FAQS.php#ver"> Siguiente</a></center>
<br><br><table class="titulo_seccion"><tr><td>---</td></tr></table><table class="volver_indice"><tr valign="middle"><td align="left">&nbsp;<a href="index.php">&lt;&lt;Ir al Índice del Manual</a></td><td align="right">&nbsp;</td></tr></table>

</td></tr>
</table>
</body>
