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

<link rel="shortcut icon" href="http://bender-online.com.ar/favicon.ico"/>

<table align="Center" class="body" width="1100px">
<br/>
<tr>
<td><q
<table class="titulo_seccion"><tr><td></a></td></tr></table><br><br>
<center><span class="resaltarcmd"><u><font size="3"><b>Pr�logo</b></font></u></span></center><br><br>
<p align="center"><span class="size"><b>
Llegas al mundo sin saber nada. Comienzas luchando contra las m�s d�biles criaturas,<br>
para finalmente poder combatir los seres m�s terribles. Pronto te enteras que a�os atr�s un peligroso <br>
guerrero y hechicero negro llamado "Mefistofeles", Rey y l�der indiscutido de las hordas del mal, supo <br>
sembrar el p�nico entre las ciudades del Ej�rcito Real. Ahora el peligro acecha nuevamente amenazando con quebrantar, <br>de una vez por todas,
la tranquilidad de Las Tierras de Bender.El poderoso Demonio desea hacerse del control total de las<br>
tierras, aquel objetivo que <a name="ver"></a> jam�s hab�a alcanzado a concretar.�Qu� m�todos y artima�as usar� para poder llevar acabo ese siniestro plan?<br> 
Ni los dioses son capaces de anticiparlo. Te advertimos, joven luchador o hechicero, <br>
que �sta aventura no ser� f�cil... pero ser� la m�s importante de tu existencia...<br>
Varios siglos atr�s el rey de 
las ciudades de Angrod, Ullathorpe, Harrogath y Turg�n, crearon la "Armada Real" <br>para combatir a las fuerzas del Caos. Hoy d�a,
las �ltimas 3 ciudades, ya sin reyes,<br>
han pasado a ser territorios neutrales. Ahora la gloriosa Angrod es quien deber� hacerle frente a la reconstru�da, <br>
y m�s poderosa que nunca, Murus. <br>Bienvenido a estas Tierras m�sticas, donde la magia arcana y los poderosos guerreros <br>
cuentan sus historias, donde existe la leyenda de un Dios, m�s conocido como el gran About, capaz de salvar o acabar con todo el mundo como se lo conoce.<br><br>
Ahora ten viajero, acepta este ropaje, estas bebidas y manzanas. Toma tus cosas <br>
y emprende viaje, un nuevo mundo te est� esperando, hazte de amigos y enemigos y vive una nueva aventura en.. <br><br>
<span class="resaltarcmd"><font size="2"><span id="txt">�Las Tierras de BenderAO!</span></b></font></span></p>
<br><br>

<center><a href="crearpersonaje.php?seccion=Launcher_opciones#ver">Siguiente</a>
<br><br><br>
<a target="_blank" href="http://www.bender-online.com.ar/web/index.php?op=Descargas"><center>
<img src="imagenes\manual\presentacion_mov.gif" width="300" Height="150" alt="" border="0" /></a><br><br></center>
<table class="titulo_seccion"><tr><td>---</td></tr></table><table class="volver_indice"><tr valign="middle"><td align="left">&nbsp;<a href="index.php?seccion=prologo#ver">&lt;&lt;Ir al �ndice del Manual</a></td><td align="right">&nbsp;</td></tr></table>
</td>
</tr>
</table>
</body>


</php>
