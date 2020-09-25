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
<table class="titulo_seccion"><tr><td><a name="ver"></a>- Mapa 1 -</td></tr></table><br><table width="98%" align="center"><tr><td><center>
<br>
<img src="imagenes/juego/Mapa1.jpg" width="580" height="580" border="0"></center>
<br><br>
<table class="titulo_seccion"><tr><td><a name="ver"></a>- Mapa 2-</td></tr></table><br><table width="98%" align="center"><tr><td><center>
<br>
<img src="imagenes/juego/Mapa2.jpg" width="580" height="580" border="0"></center>
<br><br>
<table class="titulo_seccion"><tr><td><a name="ver"></a>- Mapa 3-</td></tr></table><br><table width="98%" align="center"><tr><td><center>
<br>
<img src="imagenes/juego/Mapa3.jpg" width="580" height="580" border="0"></center>
<br><br>
<table width="1000px" align="center">
<tr>
<td><span class="size">
<center><u><span class="resaltar">Descripción:</span></u><br><br></center>

En BenderAO existen 3 tipos de mapas: <br>
1) El primero detalla la mayoría de las ciudades, la entrada a los dungeons, islas y continentes. <br>
2) El segundo nos muestra el interior de las cavernas, dungeons y todas las zonas que no son de fácil acceso. <br>
3) El tercer mapa es el lugar donde se realizan los eventos automáticos, conviven en paz los <Game Masters> de estas tierras y también se realizan experimentos para mejorar la calidad del mundo y no afectar la jugabilidad de otros usuarios.
