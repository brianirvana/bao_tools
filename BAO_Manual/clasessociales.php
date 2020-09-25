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
<td><div align="left"><span class="resaltarcmd"><font size="3"><br>&nbsp&nbsp<u>Asesino:</u></font></span></div><br><div align="left">Sigiloso y sanguinario, la caracter�stica especial de esta clase es APU�ALAR, <br>esto significa que de un golpe podr�as dejar a tu enemigo pr�cticamente muerto, <br>su evasi�n es la mejor y no conoce el miedo <br>contra quienes intenten golpearle.</div></td>
<td><br><br><img width="115px" height="115px" ALT="Mago(Img. perdida)" src="imagenes\juego/mago.JPG"></td>
<td><div align="left"><span class="resaltarcmd"><font size="3"><br>&nbsp&nbsp<u>Mago:</u></font></span></div><br><div align="left">Si est�s buscando un experto y adicto a la magia, encantamientos e invocaciones, esta clase es la indicada. El Mago posee demasiada man�, aunque la desventaja de esta clase luchadora es el hecho de tener escasa vida como tambi�n la evasi�n. Opone buena resistencia frente a los conjuros y magias negras gracias a los sombreros especiales que utiliza, pero los magos son y ser�n siempre vulnerables a los ataques tanto cuerpo a cuerpo como a distancia. </td></div>
</tr>
</div>

<div>
<tr>
<td><br><br><img width="115px" height="115px" ALT="Bardo (Img perdida)" src="imagenes\juego/bardo.JPG"></td>
<td width="500"><div align="left"><span class="resaltarcmd"><font size="3"><br>&nbsp&nbsp<u>Bardo:</u></font></span></div><br><div align="left">Una clase muy pr�ctica frente a las clases con ataques cuerpo a cuerpo, ya que posee una gran evasi�n. Lo cual significa que representar� un desaf�o para los enemigos que se atrevan a golpearle.
Sus ataques m�gicos son muy poderosos, a�n m�s cuando usa el �tem especial que le otorga una bonificaci�n de poder m�gico [El La�d M�gico].</td></div>
<td><br><br><img width="115px" height="115px" ALT="Cazador (Img. perdida)" src="imagenes\juego/cazador.JPG"></td>
<td><div align="left"><span class="resaltarcmd"><font size="3"><br>&nbsp&nbsp<u>Cazador:</u></font></span></div><br><div align="left">Es una clase que no utiliza artes arcanas, pero que es muy h�bil usando armas a distancias. Sus fuertes ataques a distancia, hacen que cualquier adversario piense bien antes de acercarse a �l, aunque si se encuentra solo frente a diversas amenazas... el hecho de no poder utilizar magia le trae muchos problemas.</td></div>
</tr>
</div>


<div>
<tr>
<td><br><br><img width="115px" height="115px" ALT="Clerigo (Img. perdida)" src="imagenes\juego/clerigo.JPG"></td>
<td><div align="left"><span class="resaltarcmd"><font size="3"><br>&nbsp&nbsp<u>Clerigo:</u></font></span></div><br><div align="left">Sabios y fuertes, es una clase que se especializa tanto en las artes m�gicas como la lucha de cuerpo a cuerpo. Aunque sus golpes no sean los m�s fuertes, puede combinar sus dos especialidades y obtener beneficio en combate por ello.
As� como el druida y el bardo, el cl�rigo tiene mucho man�, pero no tanto como el Mago.</td></div>
<td><br><br><img width="115px" height="115px" ALT="Druida (Img. perdida)" src="imagenes\juego/druida.JPG"></td>
<td><div align="left"><span class="resaltarcmd"><font size="3"><br>&nbsp&nbsp<u>Druida:</u></font></span></div><br><div align="left">Amantes de la naturaleza, una clase que se especializa en domar criaturas y utilizarlas como mascotas para hacer su voluntad. Tambi�n sabe conjurar encantamientos para invocar otros tipos de criaturas que acuden a su ayuda, lo que le permite erradicar la soledad durante su entrenamiento. A pesar de no tiene tanta man� como el Mago, es la �nica clase que posee una bonificaci�n de reducci�n de man� al lanzar hechizos con la Flauta M�gica.</td></div>
</tr>
</div>

<div>
<tr>
<td><br><br><img width="115px" height="115px" ALT="Guerrero (Img. perdida)" src="imagenes\juego/guerrero.JPG"></td>
<td><div align="left"><span class="resaltarcmd"><font size="3"><br>&nbsp&nbsp<u>Guerrero:</u></font></span></div><br><div align="left">Una clase que desconoce el arte de la magia pero que al utilizar la fuerza y su destreza en combate, resulta imponente. Sus golpes pueden llegar a ser incre�blemente devastadores y mortales si equipa un arma de alto calibre. Posee tambi�n muchos puntos de vida, lo que ayuda a contrarrestar su punto d�bil que es no poder usar magias... volvi�ndolo una presa f�cil ante una emboscada si no est� bien acompa�ado. En esos casos es siempre de gran utilidad portar un arco y flechas en casos extremos de emergencia.
Ventajas: Muchos puntos de vida, mucha fuerza, mucha defensa f�sica.</td></div>
<td><br><br><img width="115px" height="115px" ALT="Paladin(Img. perdida)" src="imagenes\juego/paladin.JPG"></td>
<td><div align="left"><span class="resaltarcmd"><font size="3"><br>&nbsp&nbsp<u>Paladin:</u></font></span></div><br><div align="left">El palad�n es una clase con mucha vida y una gran fuerza, ideal para un encuentro solitario contra otra clase que luche cuerpo a cuerpo ya que sus golpes son dolorosos, pero no tanto como los del guerrero. Una de las desventajas del Palad�n es que su man� que es muy limitada y eso dificulta sus peleas contra clases m�gicas.</td></div>

</tr>
</div>

<div>
<tr>
<td><br><br><img width="115px" height="115px" ALT="Pirata(Img. perdida)" src="imagenes\juego/pirata.JPG"></td>
<td><div align="left"><span class="resaltarcmd"><font size="3"><br>&nbsp&nbsp<u>Pirata:</u></font></span></div><br><div align="left">Reyes de los mares, los piratas aprenden a navegar m�s r�pidamente que las dem�s clases de combate. Carece de man� y no es la mejor clase para entablar un combate mort�fero, pero son indispensables en las l�neas defensivas. 
Gracias a su gale�n, puede llevar m�s items que las dem�s clases sociales, y proteger los tesoros enemigos bajo su codicioso medio de transporte para luego reclamarlos como suyos.</td></div>
<td><br><br><img width="115px" height="115px" ALT="Ladron(Img. perdida)" src="imagenes\juego/ladron.JPG"></td>
<td><div align="left"><span class="resaltarcmd"><font size="3"><br>&nbsp&nbsp<u>Ladron:</u></font></span></div><br><div align="left"> Una clase que no usa magias, y es experta en la habilidad robar, items y monedas de oro de los dem�s. Posee la habilidad, tambi�n de caminar oculto sin que puedan verlo.</td></div>
</tr>
</div>


<div>
<tr>
<td><br><br><img width="115px" height="115px" ALT="Bandido (Img perdida)" src="imagenes\juego/bandido.JPG"></td>
<td><div align="left"><span class="resaltarcmd"><font size="3"><br>&nbsp&nbsp<u>Bandido:</u></font></span></div><br><div align="left">Puede caminar oculto durante un peque�o lapso de tiempo, el efecto se remueve si el usuario ataca a alguien o es atacado.
Golpe cr�tico con espada vikinga (80% sumado al golpe)
La probabilidad de ataque critico, si tienes 100 skills en el skill WRESTLING, tu probabilidad de golpe critico ser� alrededor de 20% por golpe.</td></div>
<td><br><br><img width="115px" height="115px" ALT="Trabajador(Img. NO FUNCIONA LA MIERDA ESTA)" src="imagenes\juego/Trabajador2.jpg"></td>
<td><div align="left"><span class="resaltarcmd"><font size="3"><br>&nbsp&nbsp<u>Trabajador:</u></font></span></div><br><div align="left">Clase experta en la habilidad Carpinter�a, Herrer�a, Miner�a, Pesca y Tala.</td></div>
</div>
</tr>

</table>

</table><br><br>
<center><a href="primerospasos.php#ver"> Anterior</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href="skills.php#ver"> Siguiente</a></center>
<br><br><table class="titulo_seccion"><tr><td>---</td></tr></table><table class="volver_indice"><tr valign="middle"><td align="left">&nbsp;<a href="index.php">&lt;&lt;Ir al �ndice del Manual</a></td></tr></table>
<td>
</tr>
</table>

</body>

<!-- Mirrored from aogamers.com.ar.elserver.com/?seccion=clases by HTTrack Website Copier/3.x [XR&CO'2008], Sat, 30 May 2009 09:47:31 GMT -->
<!-- Added by HTTrack --><!-- /Added by HTTrack -->
</php>
