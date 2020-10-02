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

<table align="center" class="body" border="5" width="1100px">
<tr>
<td>
<table class="titulo_seccion"><tr><td><a name="ver"></a>- Game Masters -</td></tr></table><br><table width="98%" align="center"><tr><td>En estas tierras existen héroes legendarios llamados Game Masters (GMs), quienes poseen los poderes necesarios para evitar todo tipo de problemas dentro del juego. A los GMs se los puede llamar mediante el comando <span class="resaltarcmd">/GM</span>, una vez que el mensaje sea enviado llegará automáticamente a cualquiera de los GMs que se encuentren en el juego y sólo bastará que uno se desocupe para que se teletransporte hacia donde se encuentra el personaje que lo llamó, entonces deberás realizar las preguntas de forma rápida y responsable, ya que otros usuarios esperan también al GM para hacerle preguntas.<br><br>
<br><span class="size">
El comando sólo se debe utilizar cuando se encuentren en una situación en la cual afrontan un problema de fuerza mayor que no pueden solucionar o están frente a una duda que no tiene respuesta dentro del manual. Será penado con la cárcel a todo aquel que use de forma incorrecta este comando como llamar para pedir oro o que utilice un lenguaje agresivo hacia un GM o cualquier otro usuario.
<br><br>
Para denunciar algún acto ilegal que veas en el juego usa el comando <span class="resaltarcmd">/DENUNCIAR</span>.
<br><br>
Los GMs tienen orden de banear (prohibir la entrada al juego) a todas aquellas personas que se las encuentre usando programas externos que modifiquen la jugabilidad o perjudiquen a otros jugadores, conforme lo que establece el reglamento del juego.
<br>
Para conocer cuáles son las reglas del juego y cómo debe ser el comportamiento dentro del juego deberás leer la <b>
<a target="_new" href="http://www.bender-online.com.ar/web/?op=Reglamento">Web Reglamento de 
BenderAO</a></b>.<br><br>A continuación la lista del staff de Game masters:<br><br>

<u>Director del Proyecto:</u><br>
About<br>
Kimmy<br><br>

<u>Directores:</u><br>
LeaWaney<br><br>

<u>Coordinadores:</u><br>
Claybroke<br>
VesslaN (Eventos)<br>
Junzik (Consultas)<br><br>

<u>Game Masters:</u><br>
Junzik<br>
VesslaN<br>
<br><br>

<u>Consejeros:</u><br>
Fenicio<br>
Blou<br>
<br>

Cualquier duda que tengas, puedes acudir, también,  al <a href="Soporte.php#ver"> Sistema de Soporte </a> y consultarle a cualquiera de los GMs de la lista.
</span>
</td></tr></table>
<br><br><br>

<center><a href="legion.php#ver">Anterior</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href="Soporte.php#ver"> Siguiente</a></center>
<br><br><table class="titulo_seccion"><tr><td>---</td></tr></table><table class="volver_indice"><tr valign="middle"><td align="left">&nbsp;<a href="index.php">&lt;&lt;Ir al Índice del Manual</a></td><td align="right">&nbsp;</td></tr></table>
</td>
</tr>
</table>




</body>
