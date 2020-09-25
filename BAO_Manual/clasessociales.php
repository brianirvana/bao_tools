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

<table align="Center" class="body" width="1100px">
<br>
<tr>
<td>
<table class="titulo_seccion"><tr><td><a name="ver"></a>- Clases -</td></tr></table><br><table width="98%" align="center"><tr><td><center></center>
<br>
<table cellpadding="5" cellspacing="5" border="0" align="center" width="100%">

<div>
<tr>
<td> <br><br><br><img src="imagenes\juego/asesino.JPG" width="115px" height="115px" alt="Asesino (Img perdida)"> </td>
<td><div align="left"><span class="resaltarcmd"><font size="3"><br>&nbsp&nbsp<u>Asesino:</u></font></span></div><br><div align="left">Sigiloso y sanguinario, la característica especial de esta clase es APUÑALAR, <br>esto significa que de un golpe podrías dejar a tu enemigo prácticamente muerto, <br>su evasión es la mejor y no conoce el miedo <br>contra quienes intenten golpearle.</div></td>
<td><br><br><img width="115px" height="115px" ALT="Mago(Img. perdida)" src="imagenes\juego/mago.JPG"></td>
<td><div align="left"><span class="resaltarcmd"><font size="3"><br>&nbsp&nbsp<u>Mago:</u></font></span></div><br><div align="left">Si estás buscando un experto y adicto a la magia, encantamientos e invocaciones, esta clase es la indicada. El Mago posee demasiada maná, aunque la desventaja de esta clase luchadora es el hecho de tener escasa vida como también la evasión. Opone buena resistencia frente a los conjuros y magias negras gracias a los sombreros especiales que utiliza, pero los magos son y serán siempre vulnerables a los ataques tanto cuerpo a cuerpo como a distancia. </td></div>
</tr>
</div>

<div>
<tr>
<td><br><br><img width="115px" height="115px" ALT="Bardo (Img perdida)" src="imagenes\juego/bardo.JPG"></td>
<td width="500"><div align="left"><span class="resaltarcmd"><font size="3"><br>&nbsp&nbsp<u>Bardo:</u></font></span></div><br><div align="left">Una clase muy práctica frente a las clases con ataques cuerpo a cuerpo, ya que posee una gran evasión. Lo cual significa que representará un desafío para los enemigos que se atrevan a golpearle.
Sus ataques mágicos son muy poderosos, aún más cuando usa el ítem especial que le otorga una bonificación de poder mágico [El Laúd Mágico].</td></div>
<td><br><br><img width="115px" height="115px" ALT="Cazador (Img. perdida)" src="imagenes\juego/cazador.JPG"></td>
<td><div align="left"><span class="resaltarcmd"><font size="3"><br>&nbsp&nbsp<u>Cazador:</u></font></span></div><br><div align="left">Es una clase que no utiliza artes arcanas, pero que es muy hábil usando armas a distancias. Sus fuertes ataques a distancia, hacen que cualquier adversario piense bien antes de acercarse a él, aunque si se encuentra solo frente a diversas amenazas... el hecho de no poder utilizar magia le trae muchos problemas.</td></div>
</tr>
</div>


<div>
<tr>
<td><br><br><img width="115px" height="115px" ALT="Clerigo (Img. perdida)" src="imagenes\juego/clerigo.JPG"></td>
<td><div align="left"><span class="resaltarcmd"><font size="3"><br>&nbsp&nbsp<u>Clerigo:</u></font></span></div><br><div align="left">Sabios y fuertes, es una clase que se especializa tanto en las artes mágicas como la lucha de cuerpo a cuerpo. Aunque sus golpes no sean los más fuertes, puede combinar sus dos especialidades y obtener beneficio en combate por ello.
Así como el druida y el bardo, el clérigo tiene mucho maná, pero no tanto como el Mago.</td></div>
<td><br><br><img width="115px" height="115px" ALT="Druida (Img. perdida)" src="imagenes\juego/druida.JPG"></td>
<td><div align="left"><span class="resaltarcmd"><font size="3"><br>&nbsp&nbsp<u>Druida:</u></font></span></div><br><div align="left">Amantes de la naturaleza, una clase que se especializa en domar criaturas y utilizarlas como mascotas para hacer su voluntad. También sabe conjurar encantamientos para invocar otros tipos de criaturas que acuden a su ayuda, lo que le permite erradicar la soledad durante su entrenamiento. A pesar de no tiene tanta maná como el Mago, es la única clase que posee una bonificación de reducción de maná al lanzar hechizos con la Flauta Mágica.</td></div>
</tr>
</div>

<div>
<tr>
<td><br><br><img width="115px" height="115px" ALT="Guerrero (Img. perdida)" src="imagenes\juego/guerrero.JPG"></td>
<td><div align="left"><span class="resaltarcmd"><font size="3"><br>&nbsp&nbsp<u>Guerrero:</u></font></span></div><br><div align="left">Una clase que desconoce el arte de la magia pero que al utilizar la fuerza y su destreza en combate, resulta imponente. Sus golpes pueden llegar a ser increíblemente devastadores y mortales si equipa un arma de alto calibre. Posee también muchos puntos de vida, lo que ayuda a contrarrestar su punto débil que es no poder usar magias... volviéndolo una presa fácil ante una emboscada si no está bien acompañado. En esos casos es siempre de gran utilidad portar un arco y flechas en casos extremos de emergencia.
Ventajas: Muchos puntos de vida, mucha fuerza, mucha defensa física.</td></div>
<td><br><br><img width="115px" height="115px" ALT="Paladin(Img. perdida)" src="imagenes\juego/paladin.JPG"></td>
<td><div align="left"><span class="resaltarcmd"><font size="3"><br>&nbsp&nbsp<u>Paladin:</u></font></span></div><br><div align="left">El paladín es una clase con mucha vida y una gran fuerza, ideal para un encuentro solitario contra otra clase que luche cuerpo a cuerpo ya que sus golpes son dolorosos, pero no tanto como los del guerrero. Una de las desventajas del Paladín es que su maná que es muy limitada y eso dificulta sus peleas contra clases mágicas.</td></div>

</tr>
</div>

<div>
<tr>
<td><br><br><img width="115px" height="115px" ALT="Pirata(Img. perdida)" src="imagenes\juego/pirata.JPG"></td>
<td><div align="left"><span class="resaltarcmd"><font size="3"><br>&nbsp&nbsp<u>Pirata:</u></font></span></div><br><div align="left">Reyes de los mares, los piratas aprenden a navegar más rápidamente que las demás clases de combate. Carece de maná y no es la mejor clase para entablar un combate mortífero, pero son indispensables en las líneas defensivas. 
Gracias a su galeón, puede llevar más items que las demás clases sociales, y proteger los tesoros enemigos bajo su codicioso medio de transporte para luego reclamarlos como suyos.</td></div>
<td><br><br><img width="115px" height="115px" ALT="Ladron(Img. perdida)" src="imagenes\juego/ladron.JPG"></td>
<td><div align="left"><span class="resaltarcmd"><font size="3"><br>&nbsp&nbsp<u>Ladron:</u></font></span></div><br><div align="left"> Una clase que no usa magias, y es experta en la habilidad robar, items y monedas de oro de los demás. Posee la habilidad, también de caminar oculto sin que puedan verlo.</td></div>
</tr>
</div>


<div>
<tr>
<td><br><br><img width="115px" height="115px" ALT="Bandido (Img perdida)" src="imagenes\juego/bandido.JPG"></td>
<td><div align="left"><span class="resaltarcmd"><font size="3"><br>&nbsp&nbsp<u>Bandido:</u></font></span></div><br><div align="left">Puede caminar oculto durante un pequeño lapso de tiempo, el efecto se remueve si el usuario ataca a alguien o es atacado.
Golpe crítico con espada vikinga (80% sumado al golpe)
La probabilidad de ataque critico, si tienes 100 skills en el skill WRESTLING, tu probabilidad de golpe critico será alrededor de 20% por golpe.</td></div>
<td><br><br><img width="115px" height="115px" ALT="Trabajador(Img. NO FUNCIONA LA MIERDA ESTA)" src="imagenes\juego/Trabajador2.jpg"></td>
<td><div align="left"><span class="resaltarcmd"><font size="3"><br>&nbsp&nbsp<u>Trabajador:</u></font></span></div><br><div align="left">Clase experta en la habilidad Carpintería, Herrería, Minería, Pesca y Tala.</td></div>
</div>
</tr>

</table>

</table><br><br>
<center><a href="primerospasos.php#ver"> Anterior</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href="skills.php#ver"> Siguiente</a></center>
<br><br><table class="titulo_seccion"><tr><td>---</td></tr></table><table class="volver_indice"><tr valign="middle"><td align="left">&nbsp;<a href="index.php">&lt;&lt;Ir al Índice del Manual</a></td></tr></table>
<td>
</tr>
</table>

</body>

<!-- Mirrored from aogamers.com.ar.elserver.com/?seccion=clases by HTTrack Website Copier/3.x [XR&CO'2008], Sat, 30 May 2009 09:47:31 GMT -->
<!-- Added by HTTrack --><!-- /Added by HTTrack -->
</php>
