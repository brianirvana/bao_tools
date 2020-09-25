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

<table align="Center" class="body" width="1100px">
<tr>
<td>
<table class="titulo_seccion"><tr><td><a name="ver"></a>- Reputaci�n y Estados -</td></tr></table><br><table width="98%" align="center"><tr><td><span class="size">
En el mundo de Bender Online imperan ciertas leyes, por ejemplo existen estados por los cuales se deduce nuestra reputaci�n, los cuales podr�s ver al clickear en el <span class="resaltarcmd">BOT�N ESTAD�STICAS</span>.
Los puntos de reputaci�n son bandido, ladr�n, burgu�s, asesino, noble y plebe; seg�n nuestro comportamiento los mismos suben o bajan una cantidad de puntos X.<br>
Cuando el estado del personaje es criminal solo se suman puntos a bandido/asesino y cuando se es ciudadano a noble/plebe.
</span>
<br><br><br>

<u><span class="resaltar">Color de nick seg�n el estado:</span></u><br><br><span class="size">
Al pasar el mouse sobre un personaje podr�s ver el estado del personaje, si es <b><font color="#6600FF">&lt;CIUDADANO&gt; aparecer� en azul</font></b> y si es <b><font color="#FF0000">&lt;CRIMINAL&gt; aparecer� en rojo</font></b>, los dem�s colores que veas son de "GMs", es decir Dioses, Semidioses, RoleMasters, Consejeros, GameMasters, etc.

<br><br><br><br>

<u><span class="resaltar">Algunos ejemplos de como y cuanto se modifica cada estado:</span></u><br><br>
-Resucitar un usuario usuario: +500 puntos nobleza/asesino.<br>
-Matar una criatura hostil: +500 puntos nobleza/asesino.<br>
-Matar una criatura no hostil: +1000 puntos asesino y +100 puntos bandido.<br>
-Tratar de golpear o hacer da�o a una criatura no hostil: +100 puntos bandido.<br>
-Matar un Guardia del Caos: +500 puntos nobleza.<br>
-Matar un Guardia Imperial: +1000 puntos asesino y +100 puntos bandido.<br>
-Tratar de golpear o hacer da�o a un Guardia Imperial: +200 puntos asesino y baja a 0 los puntos de nobleza y plebe.<br>
-Inmovilizar o paralizar un Guardia Imperial: +500 puntos asesino y baja a 0 los puntos de nobleza y plebe.<br>
-Cada intento de robo: +25 puntos ladr�n, +100 puntos bandido y baja a 0 los puntos de nobleza y plebe.<br>
-Tratar de golpear o hacer da�o a una mascota de un ciudadano: +100 puntos bandido y baja a 0 los puntos de nobleza y plebe.<br>
-Matar una mascota de un criminal: +500 puntos nobleza.<br>
-Lanzar celeridad, fuerza o curar heridas a un criminal: +10000 puntos bandido y -50% nobleza y plebe.<br>
-Lanzar invisibilidad o resucitar a un criminal: +100 puntos bandido, hace criminal a nuestro personaje y vuelve a 0 los puntos de nobleza y plebe.<br>
-Plebe/bandido se gana usando herramientas de trabajo (talar, pescar, etc.), cada uso da: +2 puntos plebe/bandido.<br>
-Usuario ciudadano ataca a un ciudadano: Hace criminal a nuestro personaje y vuelve a 0 los puntos de nobleza y plebe. <br>
-Usuario ciudadano mata a un ciudadano: Hace criminal a nuestro personaje y vuelve a 0 los puntos de nobleza y plebe.<br>
-Atacar la criatura que otro ciudadano est� atacando.<br>
<br><br><br>

<u><span class="resaltar">Formas de convertirse en CRIMINAL:</span></u><br><br>
-Atacando a un Guardia Imperial.<br>
-Atacando a un usuario Ciudadano.<br>
-Rob�ndole a alg�n usuario ciudadano.<br>
-Atacando criaturas no hostiles.<br>
-Atacando mascotas propias o de usuarios Ciudadanos.<br>
-Atacando criaturas que est�n siendo atacadas por Ciudadanos.<br><br>
En cuanto la reputaci�n del personaje cambie a criminal los guardias de los pueblos lo atacar�n y matar�n hasta que deje de serlo.<br>

<br><br><br><br>

<u><span class="resaltar">Algunas formas de sacarse los puntos "criminales" para volver a ser Ciudadano:</span></u><br><br>
-Solo se puede volver a ser ciudadano con misiones</td></tr></table><br><br>

<center><a href="party.php#ver">Anterior</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href="interactuarycomercio.php#ver"> Siguiente</a></center>
<br><br><table class="titulo_seccion"><tr><td>---</td></tr></table><table class="volver_indice"><tr valign="middle"><td align="left">&nbsp;<a href="index.php">&lt;&lt;Ir al �ndice del Manual</a></td><td align="right">&nbsp;</td></tr></table>

</span></td>
</tr>
</table>
</body>
