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

<table align="Center" class="body" width="1100px">
<tr>
<td>
<table class="titulo_seccion"><tr><td><a name="ver"></a>- Armas -</td></tr></table><br><table width="98%" align="center"><tr><td>Las armas son fundamentales a la hora de batallar, algunas se pueden comprar en comercios y otras solo se pueden fabricar mediante herrería o carpintería.
<br><br><br><br><br> <center>(PRECIOS TENIENDO EN CUENTA 100 EN COMERCIAR)</center><br>
<center>Armas con Poder Mágico:</center><br>

<table align="center" width="90%">
<tr>
<td class="tdresaltar" height="40">IMAGEN</td>
<td class="tdresaltar">NOMBRE</td>
<td class="tdresaltar">INCREMENTO DEL ATAQUE MÁGICO</td>
<td class="tdresaltar">HECHIZOS AFECTADOS POR EL INCREMENTO DEL ATAQUE MÁGICO</td>
<td class="tdresaltar">ATAQUE FÍSICO MÍN/MÁX</td>
<td class="tdresaltar">PRECIO</td>
<td class="tdresaltar">CLASES PERMITIDAS</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="50"><img src="imagenes/graficos/10003.gif" width="32" height="32"></td>
<td class="td2">Vara de Fresno</td>
<td class="td2">+22%</td>
<td class="td2">Todos los hechizos que causen daño físico.</td>
<td class="td2">1 / 1</td>
<td class="td2">10000</td>
<td class="td2">Mago</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="50"><img src="imagenes/graficos/10005.gif" width="32" height="32"></td>
<td class="td2">Bastón Nudoso</td>
<td class="td2">+29%</td>
<td class="td2">Todos los hechizos que causen daño físico.</td>
<td class="td2">1 / 1</td>
<td class="td2">28000</td>
<td class="td2">Mago</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="50"><img src="imagenes/graficos/10007.gif" width="32" height="32"></td>
<td class="td2">Báculo Engarzado</td>
<td class="td2">+32%</td>
<td class="td2">Todos los hechizos que causen daño físico.</td>
<td class="td2">1 / 1</td>
<td class="td2">N/A</td>
<td class="td2">Mago</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="50"><img src="imagenes/graficos/715.gif" width="32" height="32"></td>
<td class="td2">Vara de Mago</td>
<td class="td2">+35%</td>
<td class="td2">Todos los hechizos que causen daño físico.</td>
<td class="td2">5 / 15</td>
<td class="td2">N/A</td>
<td class="td2">Mago</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="50"><img src="imagenes/graficos/707.gif" width="32" height="32"></td>
<td class="td2">Laúd Mágico</td>
<td class="td2">+4%</td>
<td class="td2">Todos los hechizos que causen daño físico.</td>
<td class="td2">-</td>
<td class="td2">N/A</td>
<td class="td2">Bardo</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="50"><img src="imagenes/graficos/643.gif" width="32" height="32"></td>
<td class="td2">Flauta Mágica</td>
<td class="td2">+2%</td>
<td class="td2">Todos los hechizos que causen daño físico.</td>
<td class="td2">-</td>
<td class="td2">N/A</td>
<td class="td2">Druida</td>
</tr>

</table>


<br>

<table id="menuinfoespecial" align="center" width="70%">
<tr>
<td align="center" valign="middle" style="background:url(imagenes/manual/menuinfo_fondo_arrow.gif);"><img src="imagenes/manual/menuinfo_arrow.gif"></td>
</tr>
<tr>
<td align="left" valign="top" style="background:url(imagenes/manual/menuinfo_fondo.gif) bottom repeat-x;padding-left:3px;">

<img src="imagenes/manual/menuinfo_flechita.gif"> <b>Ataque Mágico:</b><br>
El ataque mágico por defecto de cualquier clase es 100% a excepción del mago que tiene 70%, pero solamente con los hechizos afectados por el incremento del ataque mágico, con los demás hechizos tiene 100%.<br><br>
<img src="imagenes/manual/menuinfo_flechita.gif"> <b>Requisitos de Hechizos:</b><br>
Algunos hechizos precisan que tengas equipada algún arma con poder mágico para ser lanzados, más información en <a href="hechizos.php?seccion=magiayhechizos#ver" target="_blank">Sección: Magia y Hechizos</a>.<br><BR>
<img src="imagenes/manual/menuinfo_flechita.gif"> <b>Flauta mágica:</b><BR>
Los hechizos invocadores de mascotas como elementos y llamado de la naturaleza cuestan 80/70% del mana pedido.

</td>
</tr>
</table>




<!-- ##################################################### -->



<br><br><br><hr noshade width="55%" size="1" color="#959595" align="center"><br><br>



<center>Armas Cuerpo a Cuerpo:</center><br>


<table align="center" width="90%">
<tr>
<td class="tdresaltar" width="6%" height="33">IMAGEN</td>
<td class="tdresaltar">NOMBRE</td>
<td class="tdresaltar">DAÑO MÍN/MÁX</td>
<td class="tdresaltar">PRECIO</td>
<td class="tdresaltar">CLASES PERMITIDAS</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/graficos/507.gif" width="32" height="32"></td>
<td class="td2">Horquilla</td>
<td class="td2">1 / 2</td>
<td class="td2">70</td>
<td class="td2">Guerrero-Bandido-Paladín-Cazador-Herrero-Carpintero-Pirata</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/graficos/714.gif" width="32" height="32"></td>
<td class="td2">Garrote</td>
<td class="td2">1 / 3</td>
<td class="td2">100</td>
<td class="td2">Clérigo-Guerrero-Asesino-Bandido-Paladin-Cazador-Pescador-Herrero-Leñador-Minero-Carpintero-Pirata</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/graficos/504.gif" width="32" height="32"></td>
<td class="td2">Espada Larga</td>
<td class="td2">1 / 8</td>
<td class="td2">210</td>
<td class="td2">Clérigo-Guerrero-Asesino-Bandido-Paladin-Cazador-Pescador-Herrero-Leñador-Minero-Carpintero</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/graficos/595.gif" width="32" height="32"></td>
<td class="td2">Mayal Triple</td>
<td class="td2">1 / 5</td>
<td class="td2">140</td>
<td class="td2">Pescador, Minero, Carpintero, Herrero, Cazador, Leñador, Guerrero, Paladín, Bandido, 
Clérigo y Asesino-Pirata</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="38"><img src="imagenes/graficos/505.gif" width="32" height="32"></td>
<td class="td2" height="39">Hacha</td>
<td class="td2" height="39">2 / 6</td>
<td class="td2" height="39">140</td>
<td class="td2" height="39">Guerrero-Bandido-Paladín-Cazador-Herrero-Leñador-Carpintero</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/graficos/504.gif" width="32" height="32"></td>
<td class="td2">Espada Dos Manos</td>
<td class="td2">4 / 9</td>
<td class="td2">1120</td>
<td class="td2">Guerrero-Bandido-Paladín-Cazador-Herrero-Carpintero-Pirata</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/graficos/708.gif" width="32" height="32"></td>
<td class="td2">Martillo de Guerra</td>
<td class="td2">6 / 11</td>
<td class="td2">23100</td>
<td class="td2">Clérigo-Guerrero-Asesino-Bandido-Paladin-Cazador-Pescador-Herrero-Leñador-Minero-Carpintero-Pirata</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/graficos/569.gif" width="32" height="32"></td>
<td class="td2">Sable</td>
<td class="td2">6 / 11</td>
<td class="td2">12310</td>
<td class="td2">Guerrero-Asesino-Bandido-Paladín-Cazador-Herrero-Minero-Pirata</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/graficos/709.gif" width="32" height="32"></td>
<td class="td2">Cimitarra</td>
<td class="td2">8 / 15</td>
<td class="td2">18500</td>
<td class="td2">Clérigo-Guerrero-Asesino-Bardo-Bandido-Paladin-Cazador-Pescador-Herrero-Leñador-Minero-Carpintero</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/graficos/568.gif" width="32" height="32"></td>
<td class="td2">Katana</td>
<td class="td2">7 / 17</td>
<td class="td2">22000</td>
<td class="td2">Clérigo-Guerrero-Asesino-Bandido-Paladin-Cazador-Pescador-Herrero-Leñador-Carpintero</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/graficos/16030.bmp" width="32" height="32"></td>
<td class="td2">Mazo del Juicio</td>
<td class="td2">5 / 16</td>
<td class="td2">28000</td>
<td class="td2">Asesino, Clérigo y Paladín</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/graficos/567.gif" width="32" height="32"></td>
<td class="td2">Espada Vikinga</td>
<td class="td2">6 / 17</td>
<td class="td2">32000</td>
<td class="td2">Guerrero-Bandido-Paladín-Cazador-Herrero-Minero-Carpintero-Pirata</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/graficos/589.gif" width="32" height="32"></td>
<td class="td2">Hacha de Bárbaro</td>
<td class="td2">6 / 19</td>
<td class="td2">N/A</td>
<td class="td2">Guerrero-Bandido-Paladín-Cazador-Herrero</td>
</tr>


<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/graficos/572.gif" width="32" height="32"></td>
<td class="td2">Hacha de Guerra Dos Filos</td>
<td class="td2">11 / 20</td>
<td class="td2">N/A</td>
<td class="td2">Clérigo-Guerrero-Bandido-Paladin</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/graficos/570.gif" width="32" height="32"></td>
<td class="td2">Hacha Larga de Guerra</td>
<td class="td2">10 / 18</td>
<td class="td2">28000</td>
<td class="td2">Guerrero-Bandido-Paladín-Cazador</td>
</tr>


<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/graficos/713.gif" width="32" height="32"></td>
<td class="td2">Espada de Plata</td>
<td class="td2">16 / 20</td>
<td class="td2">N/A</td>
<td class="td2">Guerrero y Paladín</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/graficos/713.gif" width="32" height="32"></td>
<td class="td2">Espada Mitrhil</td>
<td class="td2">16 / 21</td>
<td class="td2">N/A</td>
<td class="td2">Guerrero</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/items/espadanegra.bmp" width="32" height="32"></td>
<td class="td2">Espada Negra Mata Dragones</td>
<td class="td2">100 / 100</td>
<td class="td2">N/A</td>
<td class="td2">Clérigo-Guerrero-Asesino-Bardo-Bandido-Paladin-Cazador-Druida-Pirata-Trabajador</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/items/espbao.bmp" width="32" height="32"></td>
<td class="td2">Espada BenderAO<br>
<b>(SOLO PARA NPCS)</b></td>
<td class="td2">12 / 18</td>
<td class="td2">N/A</td>
<td class="td2">Cazador, Guerrero, Bardo, Paladín, Bandido, Clérigo, Asesino, Druida, Trabajador y Pirata</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/items/hachabao.bmp" width="32" height="32"></td>
<td class="td2">Hacha BenderAO<br>
<b>(SOLO PARA NPCS)</b></td>
<td class="td2">9 / 15</td>
<td class="td2">N/A</td>
<td class="td2">Cazador, Guerrero, Bardo, Paladín, Bandido, Clérigo, Asesino, Druida, Pirata y Trabajador</td>
</tr>

</table>

<br>

<table id="menuinfoespecial" align="center" width="70%">
<tr>
<td align="center" valign="middle" style="background:url(imagenes/manual/menuinfo_fondo_arrow.gif);"><img src="imagenes/manual/menuinfo_arrow.gif"></td>
</tr>
<tr>
<td align="left" valign="top" style="background:url(imagenes/manual/menuinfo_fondo.gif) bottom repeat-x;padding-left:3px;">

<img src="imagenes/manual/menuinfo_flechita.gif"> <b>Espada Vikinga:</b><br>
Si el personaje que la tiene equipada es de clase Bandido hay posibilidad de que 
efectué un golpe crítico (50% más de daño).
<br><br>
<img src="imagenes/manual/menuinfo_flechita.gif"> <b>Espada Mata Dragones:</b><br>
Con esta espada se puede matar de un solo golpe al Gran Dragón Negro (la espada se destruye al matarlo).<br>
Si intentas pegarle a un usuario o a una criatura el daño min./máx. que hará es 1/1 y no se destruirá.

</td>
</tr>
</table>




<!-- ##################################################### -->


<br><br><br><hr noshade width="55%" size="1" color="#959595" align="center"><br><br>




<center>Armas Cuerpo a Cuerpo con Posibilidad de Apuñalar:</center><br>


<table align="center" width="90%">
<tr>
<td class="tdresaltar" width="6%" height="33">IMAGEN</td>
<td class="tdresaltar">NOMBRE</td>
<td class="tdresaltar">DAÑO MÍN/MÁX</td>
<td class="tdresaltar">PRECIO</td>
<td class="tdresaltar">CLASES PERMITIDAS</td>
</tr>


<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/graficos/509.gif" width="32" height="32"></td>
<td class="td2">Daga</td>
<td class="td2">1 / 2</td>
<td class="td2">140</td>
<td class="td2">Todas</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/graficos/594.gif" width="32" height="32"></td>
<td class="td2">Espada Corta</td>
<td class="td2">1 / 5</td>
<td class="td2">1050</td>
<td class="td2">Todas</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/graficos/509.gif" width="32" height="32"></td>
<td class="td2">Daga Envenenada</td>
<td class="td2">2 / 3</td>
<td class="td2">350</td>
<td class="td2">Todas</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/graficos/509.gif" width="32" height="32"></td>
<td class="td2">Daga +1</td>
<td class="td2">2 / 4</td>
<td class="td2">490</td>
<td class="td2">Todas</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/graficos/710.gif" width="32" height="32"></td>
<td class="td2">Daga +2</td>
<td class="td2">3 / 6</td>
<td class="td2">1960</td>
<td class="td2">Todas</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/graficos/711.gif" width="32" height="32"></td>
<td class="td2">Daga +3</td>
<td class="td2">4 / 7</td>
<td class="td2">N/A</td>
<td class="td2">Todas menos Guerrero</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/graficos/711.gif" width="32" height="32"></td>
<td class="td2">Daga +4</td>
<td class="td2">5 / 8</td>
<td class="td2">N/A</td>
<td class="td2">Asesino y Bardo</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/graficos/20008.gif" width="32" height="32"></td>
<td class="td2">Daga Aguzada</td>
<td class="td2">6 / 9</td>
<td class="td2">N/A</td>
<td class="td2">Asesino</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/graficos/509.gif" width="32" height="32"></td>
<td class="td2">Daga (Newbie) <br>
<b>(Solo para NPCS)</b></td>
<td class="td2">1 / 3</td>
<td class="td2">N/A</td>
<td class="td2">Todas</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/items/dagabao.bmp" width="32" height="32"></td>
<td class="td2">Daga BenderAO <br>
<b>(Solo para NPCS)</b></td>
<td class="td2">4 / 6</td>
<td class="td2">N/A</td>
<td class="td2">Todas</td>
</tr>


</table>

<br>

<table id="menuinfoespecial" align="center" width="70%">
<tr>
<td align="center" valign="middle" style="background:url(imagenes/manual/menuinfo_fondo_arrow.gif);"><img src="imagenes/manual/menuinfo_arrow.gif"></td>
</tr>
<tr>
<td align="left" valign="top" style="background:url(imagenes/manual/menuinfo_fondo.gif) bottom repeat-x;padding-left:3px;">

<img src="imagenes/manual/menuinfo_flechita.gif"> <b>Apuñalar:</b><br>
Posibilidad de incrementar el golpe (un Asesino hará 140% más de daño y las demás clases 150%).
<br>
Todas las clases excepto el Asesino necesitan 10 puntos de habilidad en Apuñalar para poder usar esta habilidad.
</td>
</tr>
</table>




<!-- ##################################################### -->



<br><br><br><hr noshade width="55%" size="1" color="#959595" align="center"><br><br>



<center>Armas Cuerpo a Cuerpo que sirven como Herramientas de Trabajo:</center><br>


<table align="center" width="90%">
<tr>
<td class="tdresaltar" width="6%" height="33">IMAGEN</td>
<td class="tdresaltar">NOMBRE</td>
<td class="tdresaltar">DAÑO MÍN/MÁX</td>
<td class="tdresaltar">PRECIO</td>
<td class="tdresaltar">CLASES PERMITIDAS</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/graficos/580.gif" width="32" height="32"></td>
<td class="td2">Caña de Pescar</td>
<td class="td2">1 / 1</td>
<td class="td2">200</td>
<td class="td2">Todas</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/graficos/571.gif" width="32" height="32"></td>
<td class="td2">Hacha de Leñador</td>
<td class="td2">2 / 3</td>
<td class="td2">350</td>
<td class="td2">Todas</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/graficos/616.gif" width="32" height="32"></td>
<td class="td2">Piquete de Minero</td>
<td class="td2">2 / 3</td>
<td class="td2">210</td>
<td class="td2">Todas</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/graficos/615.gif" width="32" height="32"></td>
<td class="td2">Serrucho</td>
<td class="td2">1 / 2</td>
<td class="td2">140</td>
<td class="td2">Todas</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/graficos/729.gif" width="32" height="32"></td>
<td class="td2">Martillo de Herrero</td>
<td class="td2">2 / 2</td>
<td class="td2">140</td>
<td class="td2">Todas</td>
</tr>

</table>



<!-- ##################################################### -->


<br><br><br><hr noshade width="55%" size="1" color="#959595" align="center"><br><br>




<center>Armas de Proyectiles:</center><br>


<table align="center" width="90%">
<tr>
<td class="tdresaltar" width="6%" height="33">IMAGEN</td>
<td class="tdresaltar">NOMBRE</td>
<td class="tdresaltar">DAÑO MÍN/MÁX</td>
<td class="tdresaltar">PERFORACIÓN</td>
<td class="tdresaltar">PRECIO</td>
<td class="tdresaltar">CLASES PERMITIDAS</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/graficos/744.gif" width="32" height="32"></td>
<td class="td2">Arco Simple</td>
<td class="td2">1 / 4</td>
<td class="td2">-</td>
<td class="td2">120</td>
<td class="td2">Todas menos Mago y Druida</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/graficos/10017.gif" width="32" height="32"></td>
<td class="td2">Arco Simple Reforzado</td>
<td class="td2">2 / 4</td>
<td class="td2">4</td>
<td class="td2">2500</td>
<td class="td2">Todas menos Mago y Druida</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/graficos/745.gif" width="32" height="32"></td>
<td class="td2">Arco Compuesto</td>
<td class="td2">4 / 10</td>
<td class="td2">-</td>
<td class="td2">3880</td>
<td class="td2">Bardo, Carpintero, Cazador, Leñador, Guerrero, Paladín, Bandido, Clerigo, Ladrón y Asesino</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/graficos/10018.gif" width="32" height="32"></td>
<td class="td2">Arco Compuesto Reforzado</td>
<td class="td2">6 / 10</td>
<td class="td2">8</td>
<td class="td2">N/A</td>
<td class="td2">Cazador, Guerrero y Bandido</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/graficos/10016.gif" width="32" height="32"></td>
<td class="td2">Arco Engarzado</td>
<td class="td2">6 / 11</td>
<td class="td2">12</td>
<td class="td2">N/A</td>
<td class="td2">Cazador, Guerrero</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/items/marfil.bmp" width="32" height="32"></td>
<td class="td2">Arco de Marfil</td>
<td class="td2">7 / 13</td>
<td class="td2">13</td>
<td class="td2">N/A</td>
<td class="td2">Cazador</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/graficos/10017.gif" width="32" height="32"></td>
<td class="td2">Arco Simple BenderAO<br>
<b>(SOLO PARA NPCS)</b></td>
<td class="td2">5 / 9</td>
<td class="td2">4</td>
<td class="td2">N/A</td>
<td class="td2">Todas menos Mago y Druida</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/items/arcobao.bmp" width="32" height="32"></td>
<td class="td2">Arco BenderAO<br>
<b>(SOLO PARA NPCS)</b></td>
<td class="td2">6/ 10</td>
<td class="td2">12</td>
<td class="td2">N/A</td>
<td class="td2">Cazador, Carpintero, Guerrero, Paladín y Asesino</td>
</tr>


</table>

<br>

<table id="menuinfoespecial" align="center" width="70%">
<tr>
<td align="center" valign="middle" style="background:url(imagenes/manual/menuinfo_fondo_arrow.gif);"><img src="imagenes/manual/menuinfo_arrow.gif"></td>
</tr>
<tr>
<td align="left" valign="top" style="background:url(imagenes/manual/menuinfo_fondo.gif) bottom repeat-x;padding-left:3px;">

<img src="imagenes/manual/menuinfo_flechita.gif"> <b>Perforación:</b><br>
Permite descontar puntos de defensa de cualquier tipo de armadura que tenga equipada un usuario.

</td>
</tr>
</table>




<!-- ##################################################### -->





<br><br><br><hr noshade width="55%" size="1" color="#959595" align="center"><br><br>




<center>Municiones para Armas de Proyectiles:</center><br>


<table align="center" width="90%">
<tr>
<td class="tdresaltar" width="6%" height="33">IMAGEN</td>
<td class="tdresaltar">NOMBRE</td>
<td class="tdresaltar">DAÑO MIN/MAX</td>
<td class="tdresaltar">PRECIO</td>
<td class="tdresaltar">CLASES PERMITIDAS</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/graficos/747.gif" width="32" height="32"></td>
<td class="td2">Flecha</td>
<td class="td2">1 / 3</td>
<td class="td2">6</td>
<td class="td2">Todas menos Mago y Druida</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/graficos/750.gif" width="32" height="32"></td>
<td class="td2">Flecha +1</td>
<td class="td2">1 / 4</td>
<td class="td2">10</td>
<td class="td2">Cazador y Guerrero</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/graficos/749.gif" width="32" height="32"></td>
<td class="td2">Flecha +2</td>
<td class="td2">1 / 5</td>
<td class="td2">N/A</td>
<td class="td2">Cazador</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/graficos/748.gif" width="32" height="32"></td>
<td class="td2">Flecha +3</td>
<td class="td2">1 / 6</td>
<td class="td2">N/A</td>
<td class="td2">Cazador</td>
</tr>

</table>
</td></tr></table><br><br>

<center><a href="interactuarycomercio.php#ver">Anterior</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href="itemsmagicos.php#ver"> Siguiente</a></center>
<br><br><table class="titulo_seccion"><tr><td>---</td></tr></table><table class="volver_indice"><tr valign="middle"><td align="left">&nbsp;<a href="index.php">&lt;&lt;Ir al Índice del Manual</a></td><td align="right">&nbsp;</td></tr></table>
</td>
</tr>
</table>
</body>