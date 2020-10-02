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
<br>
<tr>
<td>
<table class="titulo_seccion"><tr><td><a name="ver"></a>- Misiones -</td></tr></table><br><table width="98%" align="center"><tr><td>En 
BenderAO hay varias misiones, las cuales tienen facilidad para concretar y el resultado es obtener objetos, oro y muchisimas cosas mas las cuales haran que su estadia sea mas factible.

<br><br><br>

<table align="center" width="92%">
<tr>
<td class="tdresaltar3" width="15%">MISIONES</td>
<td class="tdresaltar3">DESCRIPCION</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="90">MISION N°1<br>Cacería de Lobos</td>
<td class="td3">1- Matar 20 lobos<br>2- Entregar las pieles de lobos</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="90">MISION N°2<br>Tumulto en la ciudad</td>
<td class="td3">1- Hablar con el sacerdote de Ullathorpe (Clic derecho para hablar)<br>2- Hablar con Cullighan de Ullathorpe<br>3- Conseguir/Comprar 100 pollos<br>4- Llevarle los 100 pollos a Cullighan de Ullathorpe<br>5- Hablar con Nelmasil de Ullathorpe<br>6- Hablar con uno de los sastres de Ullathorpe<br>7- Matar 30 serpientes<br>8- Volver a hablar con la sastre de Ullathorpe<br>9- Decirle al gobernador quién es el ladrón  </td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="90">MISION N°3<br>Conviértete en Mercenario</td>
<td class="td3">1- Matar 10 ciudadanos diferentes en menos de 30 min.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="90">MISION N°4<br>Consigue tu primer Barca a cambio de una misión.</td>
<td class="td3">1- Matar 10 árboles encantados en menos de 30 minutos.<br>2- Consigue y entrega un hacha de leñador<br>3- Consigue y entrega un Serrucho</td>
</tr>


<tr class='colorcolumna1'><td class="tdresaltar" height="90">MISION N°5<br>Cacería de Ogros y Tarántulas</td>
<td class="td3">1- Matar 1 Ogro<br>2- Matar 5 Tarántulas</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="90">MISION N°6<br>Cacería de Murciélagos</td>
<td class="td3">1- Matar 20 murciélagos</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="90">MISION N°7<br>Cacería de Osos Pardos</td>
<td class="td3">1- Matar 15 Osos Pardos<br>2- Entregar las pieles de osos</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="90">MISION N°8<br>Cacería de Hombres Lobo y Araña</td>
<td class="td3">1- Matar 20 Hombres lobos<br>2- Matar 1 Araña Gigante</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="90">MISION N°9<br>Cacería de Osos Polares</td>
<td class="td3">1- Matar 25 Osos Polares <br>2- Entregar las 25 pieles de Osos Polares<br>3- Entregar Libro a Sonaur en Ullathorpe<br>4- Matar 25 Dragones de las Profundidades<br>5- Entregar 25 Amuletos de Dragón de Agua a Johan en Ullathorpe</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="90">MISION N°10<br>Conviértete en Mercenario</td>
<td class="td3">1- Matar 10 criminales diferentes en menos de 30 min.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="90">MISION N°11<br>¡Consigue Apocalipsis BenderAO!</td>
<td class="td3">1- Matar 5 Unicornios, puedes encontrarlos en Dungeon Lava.<br>2- Matar 1 Tutankamon, puedes encontrarlos en La Gran Pirámide.<br>3- Hablar con el vendedor de magia de Atlanthis, la ciudad perdida.<br>4- Entregar la Última lágrima de una Sirena a Johan, en ullathorpe.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="90">MISION N°12<br>Antiguas civilizaciones</td>
<td class="td3">1- Matar dos ogros <br>2- Matar dos ogros egipcios<br>3- Matar dos momias pequeñas protectoras<br>4- Matar dos guardianes de Tutankamón<br>5- Matar dos Anubis<br>6- Matar dos momias gigantes<br>7- Matar dos Tutankamón</td>
</tr>

</table>

<br><br>

</table>
<br><br>
<center><a href="razasyatributos.php#ver"> Anterior</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href="comandos.php#ver"> Siguiente</a></center>
</td></tr></table><br><br><table class="titulo_seccion"><tr><td>---</td></tr></table><table class="volver_indice"><tr valign="middle"><td align="left">&nbsp;<a href="index.php">&lt;&lt;Ir al Índice del Manual</a></td><td align="right">&nbsp;</td></tr></table>
</body>

<meta http-equiv="content-type" content="text/php;charset=ISO-8859-1">
</php>
