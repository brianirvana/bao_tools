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

<table align="center" class="body" width="1100px">
<tr>
<td>
<table align="center" class="titulo_seccion"><tr><td><a name="ver"></a>- RoleMasters -</td></tr></table><br><br>
<table align="center" width="1000px">
<tr>
<td>
<span class="size">El Staff de Role Masters tiene diversas funciones y tareas, la mayor�a de ellas fuera del juego. En primer lugar, fueron los encargados de idear, diagramar y dise�ar tanto las Misiones Reales y Ca�ticas. Por otro lado, los Role Masters ser�n los encargados de diagramar nuevas Quests, fomentar el rol, entre muchas otras m�s que cambiar�n el rumbo y la historia del servidor, poniendo a prueba el valor de todos los participantes. 

Adem�s, los Role Masters (RM's) podr�n ayudar a los Game Masters (GM's) con la organizaci�n de eventos o juegos dentro del servidor, para lograr as� un mayor orden y un mejor funcionamiento de los distintos entretenimientos. Estas dos �reas interactuar�n para lograr que los usuarios disfruten de la mejor manera los eventos que BenderAO les ofrece.

La comunidad podr� sugerirle al Staff de Role Masters nuevos juegos, entretenimientos y quests para aplicar al servidor. Ser�n ellos los que decidir�n y evaluar�n el posible funcionamiento y desarrollo de dichas propuestas.

A continuaci�n la lista del staff de RMs:<br><br>

<u>Directores:</u><br>
Maetsuki<br><br>

<u>Coordinadores:</u><br>
Kimmy<br><br>

<u>RMs Semidioses:</u><br>
<br><br>

<u>RMs Consejeros:</u><br>
<br>
<br><br>
<br>

Cualquier duda que tengas podr�s acurdir al <span class="resaltarcmd"> <font size="2">Sistema de soporte </font></span> y consultarle a cualquiera de ellos.
 </span>
 </td></tr></table><br><br>
 
 <center><a href="Soporte.php#ver">Anterior</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href="index.php#ver"> Siguiente</a></center>
<br><br><table class="titulo_seccion"><tr><td>---</td></tr></table><table class="volver_indice"><tr valign="middle"><td align="left">&nbsp;<a href="index.php">&lt;&lt;Ir al �ndice del Manual</a></td><td align="right">&nbsp;</td></tr></table>
 

 </td>
 </tr>
 </table>
</td>
</tr>
</table>


</body>
</table>

