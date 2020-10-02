<?
  // No almacenar en el cache del navegador esta p�gina.
		header('Content-Type: text/html; charset=utf-8');
		header("Expires: Mon, 26 Jul 1997 05:00:00 GMT");             		// Expira en fecha pasada
		header("Last-Modified: " . gmdate("D, d M Y H:i:s") . " GMT");		// Siempre p�gina modificada
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
<table class="titulo_seccion"><tr><td><a name="ver"></a>- Game Masters -</td></tr></table><br><table width="98%" align="center"><tr><td>En estas tierras existen h�roes legendarios llamados Game Masters (GMs), quienes poseen los poderes necesarios para evitar todo tipo de problemas dentro del juego. A los GMs se los puede llamar mediante el comando <span class="resaltarcmd">/GM</span>, una vez que el mensaje sea enviado llegar� autom�ticamente a cualquiera de los GMs que se encuentren en el juego y s�lo bastar� que uno se desocupe para que se teletransporte hacia donde se encuentra el personaje que lo llam�, entonces deber�s realizar las preguntas de forma r�pida y responsable, ya que otros usuarios esperan tambi�n al GM para hacerle preguntas.<br><br>
<br><span class="size">
El comando s�lo se debe utilizar cuando se encuentren en una situaci�n en la cual afrontan un problema de fuerza mayor que no pueden solucionar o est�n frente a una duda que no tiene respuesta dentro del manual. Ser� penado con la c�rcel a todo aquel que use de forma incorrecta este comando como llamar para pedir oro o que utilice un lenguaje agresivo hacia un GM o cualquier otro usuario.
<br><br>
Para denunciar alg�n acto ilegal que veas en el juego usa el comando <span class="resaltarcmd">/DENUNCIAR</span>.
<br><br>
Los GMs tienen orden de banear (prohibir la entrada al juego) a todas aquellas personas que se las encuentre usando programas externos que modifiquen la jugabilidad o perjudiquen a otros jugadores, conforme lo que establece el reglamento del juego.
<br>
Para conocer cu�les son las reglas del juego y c�mo debe ser el comportamiento dentro del juego deber�s leer la <b>
<a target="_new" href="http://www.bender-online.com.ar/web/?op=Reglamento">Web Reglamento de 
BenderAO</a></b>.<br><br>A continuaci�n la lista del staff de Game masters:<br><br>

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

Cualquier duda que tengas, puedes acudir, tambi�n,  al <a href="Soporte.php#ver"> Sistema de Soporte </a> y consultarle a cualquiera de los GMs de la lista.
</span>
</td></tr></table>
<br><br><br>

<center><a href="legion.php#ver">Anterior</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href="Soporte.php#ver"> Siguiente</a></center>
<br><br><table class="titulo_seccion"><tr><td>---</td></tr></table><table class="volver_indice"><tr valign="middle"><td align="left">&nbsp;<a href="index.php">&lt;&lt;Ir al �ndice del Manual</a></td><td align="right">&nbsp;</td></tr></table>
</td>
</tr>
</table>




</body>
