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
<table align="center" class="body" width="1100px">
<tr>
<td>
<table align="center" class="titulo_seccion"><tr><td><a name="ver"></a>- Macros y Centinela -</td></tr></table><br><table width="98%" align="center"><tr><td>
<span class="size"><p><center>Los macros permiten a un usuario repetir determinada acción automáticamente 
infinitas veces, BenderAO consta con dos tipos de macros que aca se aclaran:</center></p></span>
<br><br><br>
<center><u><span class="resaltar">MACRO DE TRABAJO</span></u></center><br><br>

<table border="0" align="center" width="95%"><tr>
<td align="center"><img src="imagenes/juego/macro_trabajo.gif" width="128" height="12"><br><br><img src="imagenes\juego/MacTrabajo.png"></td><td width="2%"></td>
<td align="left">

<span class="size"><u>Pasos:</u><br>
1) Selecciona y/o equipa la herramienta de trabajo (caña, hacha, serrucho, piquete, minerales, etc.).<br>
2) Deja seleccionada la herramienta y apretá la <span class="resaltarcmd">TECLA MACRO TRABAJO (F8)</span>.<br>
3) Deja el mouse sobre el agua, árbol, etc. y empezará a trabajar.<br>
En el caso de ser un trabajo que requiera selección de un ítem por medio de una ventana (ej. herrería, carpintería, etc.), pone el mouse sobre una fragua, yunque, etc. y espera a que aparezca la ventana de creación de 
ítems, selecciona un ítem y apreta el botón construir.<br>
4) Para apagar el macro presiona nuevamente la misma tecla (F8).<br><br>

<u>A tener en cuenta:</u><br>
-Mientras trabaja el macro se puede hablar y ocultarse en el juego.<br>
-El macro trabaja a 850ms.<br>
-Cualquier acción excepto las de hablar y ocultarse, desactivará el macro, ya sea mover el personaje, minimizar el juego, seleccionar otro item, etc.
</span>
</td>
</tr></table>





<br><br><br><hr noshade width="55%" size="1" color="#959595" align="center"><br><br>







<center><u><span class="resaltar">MACRO DE HECHIZOS/HITEAR</span></u></center><br><br>

<table border="0" align="center" width="95%"><tr>
<td align="center"><img src="imagenes/juego/macro_hechizos2.gif" width="146" height="15"><br><br><img src="imagenes/juego/macro_hechizos.gif" width="37" height="34"></td><td width="2%"></td>
<td align="left">
<span class="size">
<u>Pasos:</u><br>
1) Selecciona el hechizo que quieras lanzar.<br>
2) Deja el mouse en la pantalla de juego o directamente sobre una criatura/usuario.<br>
3) Presiona <span class="resaltarcmd">TECLA MACRO HECHIZOS (F7)</span> y el macro empezará a lanzar el hechizo automáticamente cada cierto tiempo.<br>
4) Para apagar el macro presiona nuevamente la misma tecla (F7).<br>
HIT = Presiona F9 mirando al npc al cual le quieras pegar.
</span>
</td>
</tr></table>


<br><br><br><hr noshade width="55%" size="1" color="#959595" align="center"><br><br>
<center><u><span class="resaltar">CENTINELA</span></u><br><br>

<table border="0" align="center" width="95%"><tr>
<td align="center"><img src="imagenes/juego/cartel_centinela.gif" width="24" height="48"><br><br><img src="imagenes/juego/pj_centinela.gif" width="138" height="173"></td><td width="2%"></td>
<td align="left">
<span class="size">
El Centinela es un NPC automatizado o BOT, su función es chequear cada cierto tiempo a los usuarios para controlar que estén trabajando de forma asistida.
<br><br>
Si te llegara a aparecer el centinela te pedirá que escribas una clave aleatoria utilizando el comando <span class="resaltarcmd">/CENTINELA</span>.

<br><br><br>

<u>Atención:</u><br><br>
<font color="#FFCC33"><b>-Es aconsejable desloguear y volver a loguear el personaje 
después de haber estado trabajando (con macro de trabajo o manualmente) porque existe la posibilidad de que 
aparezca el centinela.</b></font><br><br>
-Tenés 1 minuto para mandar la clave o de lo contrario el personaje será 
ejecutado y llevado de nuevo a su hogar, y por último se cerrará el juego. Por ende, perderás todos los objetos obtenidos en el momento (Incluído Piquete de Minero Donante y Hacha de Leñador Donante)<br><br>
-En caso de urgencia podes desloguear el personaje y será como haber mandado la clave.<br><br>
-Si por alguna razón no viste la clave que pidió el centinela hacele doble clic y la repetirá.<br><br>
-También es factible que haya algún GM chequeando manualmente a los usuarios.
</span>
</td>
</tr></table>
</center>
</td></tr></table><br><br>

<center><a href="navegacion.php#ver">Anterior</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href="criaturashostiles.php#ver"> Siguiente</a></center>
<br><br><table class="titulo_seccion"><tr><td>---</td></tr></table><table class="volver_indice"><tr valign="middle"><td align="left">&nbsp;<a href="index.php">&lt;&lt;Ir al Índice del Manual</a></td><td align="right">&nbsp;</td></tr></table>

</td>
</tr></tr></td></table></table>


</body>
