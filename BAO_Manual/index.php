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

<link rel="shortcut icon" href="http://bender-online.com.ar/favicon.ico"/>

<table align="Center" class="body" width="1100px">
<br/>
<tr>
<td><q
<table class="titulo_seccion"><tr><td></a></td></tr></table><br><br>
<center><span class="resaltarcmd"><u><font size="3"><b>Prólogo</b></font></u></span></center><br><br>
<p align="center"><span class="size"><b>
Llegas al mundo sin saber nada. Comienzas luchando contra las más débiles criaturas,<br>
para finalmente poder combatir los seres más terribles. Pronto te enteras que años atrás un peligroso <br>
guerrero y hechicero negro llamado "Mefistofeles", Rey y líder indiscutido de las hordas del mal, supo <br>
sembrar el pánico entre las ciudades del Ejército Real. Ahora el peligro acecha nuevamente amenazando con quebrantar, <br>de una vez por todas,
la tranquilidad de Las Tierras de Bender.El poderoso Demonio desea hacerse del control total de las<br>
tierras, aquel objetivo que <a name="ver"></a> jamás había alcanzado a concretar.¿Qué métodos y artimañas usará para poder llevar acabo ese siniestro plan?<br> 
Ni los dioses son capaces de anticiparlo. Te advertimos, joven luchador o hechicero, <br>
que ésta aventura no será fácil... pero será la más importante de tu existencia...<br>
Varios siglos atrás el rey de 
las ciudades de Angrod, Ullathorpe, Harrogath y Turgón, crearon la "Armada Real" <br>para combatir a las fuerzas del Caos. Hoy día,
las últimas 3 ciudades, ya sin reyes,<br>
han pasado a ser territorios neutrales. Ahora la gloriosa Angrod es quien deberá hacerle frente a la reconstruída, <br>
y más poderosa que nunca, Murus. <br>Bienvenido a estas Tierras místicas, donde la magia arcana y los poderosos guerreros <br>
cuentan sus historias, donde existe la leyenda de un Dios, más conocido como el gran About, capaz de salvar o acabar con todo el mundo como se lo conoce.<br><br>
Ahora ten viajero, acepta este ropaje, estas bebidas y manzanas. Toma tus cosas <br>
y emprende viaje, un nuevo mundo te está esperando, hazte de amigos y enemigos y vive una nueva aventura en.. <br><br>
<span class="resaltarcmd"><font size="2"><span id="txt">¡Las Tierras de BenderAO!</span></b></font></span></p>
<br><br>

<center><a href="crearpersonaje.php?seccion=Launcher_opciones#ver">Siguiente</a>
<br><br><br>
<a target="_blank" href="http://www.bender-online.com.ar/web/index.php?op=Descargas"><center>
<img src="imagenes\manual\presentacion_mov.gif" width="300" Height="150" alt="" border="0" /></a><br><br></center>
<table class="titulo_seccion"><tr><td>---</td></tr></table><table class="volver_indice"><tr valign="middle"><td align="left">&nbsp;<a href="index.php?seccion=prologo#ver">&lt;&lt;Ir al Índice del Manual</a></td><td align="right">&nbsp;</td></tr></table>
</td>
</tr>
</table>
</body>


</php>
