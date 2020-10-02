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
<table class="titulo_seccion"><tr><td><a name="ver"></a>- Armaduras, Tunicas y Ropas -</td></tr></table><br><table width="98%" align="center"><tr><td><script type="text/javascript" src="dats/table_sort.js"></script>


Lista completa de todas las armaduras (algunas NO estan implementadas).<br>
Hace CLICK en el título de una celda para "ORGANIZAR POR.." nombre, defensa, etc.

<br><br><br>

<center>Armaduras:</center><br>

<table align="center" width="97%">

<thead>

<tr>
<th style="border:0;width:0px"></th>
<th class="tdresaltar">IMAGEN</th>
<th class="tdresaltar"><a href="#" onclick="this.blur(); return sortTable('armaduras', 2, true);" title="Organizar">NOMBRE</a></th>
<th class="tdresaltar"><a href="#" onclick="this.blur(); return sortTable('armaduras', 3, true);" title="Organizar">DEFENSA MIN/MAX</a></th>
<th class="tdresaltar"><a href="#" onclick="this.blur(); return sortTable('armaduras', 4, true);" title="Organizar">RAZA</a></th>
<th class="tdresaltar"><a href="#" onclick="this.blur(); return sortTable('armaduras', 5, true);" title="Organizar">GÉNERO</a></th>
<th class="tdresaltar"><a href="#" onclick="this.blur(); return sortTable('armaduras', 6, true);" title="Organizar">PRECIO</a></th>
<th class="tdresaltar"><a href="#" onclick="this.blur(); return sortTable('armaduras', 7, true);" title="Organizar">CLASES PERMITIDAS</a></th>
</tr>

</thead>

<tbody id="armaduras">


<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/316.gif" width="32" height="32"></td><td class=td7>Armadura de Cuero</td><td class=td7>10 / 15</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>4600</td><td class=td7>Todas menos Mago y Pirata</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/317.gif" width="32" height="32"></td><td class=td7>Vestimentas Comunes</td><td class=td7>0 / 0</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>50</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/318.gif" width="32" height="32"></td><td class=td7>Vestimentas Comunes</td><td class=td7>0 / 0</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>50</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/319.gif" width="32" height="32"></td><td class=td7>Vestimentas Comunes</td><td class=td7>0 / 0</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>50</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/537.gif" width="32" height="32"></td><td class=td7>Ropa de Clan</td><td class=td7>0 / 0</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>80</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/560.gif" width="32" height="32"></td><td class=td7>Ropa de Clan</td><td class=td7>0 / 0</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>80</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/576.gif" width="32" height="32"></td><td class=td7>Túnica Antigua</td><td class=td7>6 / 15</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>3600</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/610.gif" width="32" height="32"></td><td class=td7>Vestimenta de Mujer (H/E/EO-M)</td><td class=td7>0 / 0</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Mujer</td><td class=td7>50</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/613.gif" width="32" height="32"></td><td class=td7>Armadura de Placas Completa</td><td class=td7>35 / 40</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>37440</td><td class=td7>Guerrero, Paladín, Bandido y Clerigo</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/614.gif" width="32" height="32"></td><td class=td7>Túnica de Monje Gris</td><td class=td7>8 / 12</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>3600</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/661.gif" width="32" height="32"></td><td class=td7>Túnica Roja Burda</td><td class=td7>2 / 5</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>600</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/660.gif" width="32" height="32"></td><td class=td7>Túnica de Sacerdote</td><td class=td7>5 / 10</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>2900</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/661.gif" width="32" height="32"></td><td class=td7>Túnica Roja</td><td class=td7>5 / 10</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>2900</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/662.gif" width="32" height="32"></td><td class=td7>Ropa de Enano (E/G)</td><td class=td7>0 / 0</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>40</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/663.gif" width="32" height="32"></td><td class=td7>Armadura de Placas Completa (E/G)</td><td class=td7>35 / 40</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>37440</td><td class=td7>Minero, Herrero, Guerrero, Paladín, Bandido y Clerigo</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/676.gif" width="32" height="32"></td><td class=td7>Armadura de Asesino</td><td class=td7>30 / 37</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>23030</td><td class=td7>Asesino</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/677.gif" width="32" height="32"></td><td class=td7>Túnica de Viajero</td><td class=td7>20 / 25</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>27000</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/678.gif" width="32" height="32"></td><td class=td7>Cota de Mallas</td><td class=td7>12 / 22</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>10350</td><td class=td7>Pirata, Pescador, Minero, Carpintero, Herrero, Cazador, Leñador, Guerrero, Paladín, Bandido, Clerigo, Ladrón y Asesino</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/679.gif" width="32" height="32"></td><td class=td7>Armadura de Cazador</td><td class=td7>10 / 20</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>20000</td><td class=td7>Cazador</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/689.gif" width="32" height="32"></td><td class=td7>Túnica de Monje Marrón</td><td class=td7>15 / 20</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>15500</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/690.gif" width="32" height="32"></td><td class=td7>Vestido Azul (H/E/EO-M)</td><td class=td7>2 / 3</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Mujer</td><td class=td7>276</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/11021.gif" width="32" height="32"></td><td class=td7>Armadura de Placas Completa +1</td><td class=td7>40 / 45</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>39350</td><td class=td7>Cazador, Guerrero, Paladín, Bandido y Clerigo</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/11023.gif" width="32" height="32"></td><td class=td7>Armadura de Placas Completa +2</td><td class=td7>45 / 50</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>47600</td><td class=td7>Cazador, Guerrero, Paladín, Bandido y Clerigo</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/11019.gif" width="32" height="32"></td><td class=td7>Armadura de Placas Completa +1 (E/G)</td><td class=td7>40 / 45</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>39350</td><td class=td7>Cazador, Guerrero, Paladín, Bandido y Clerigo</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/11017.gif" width="32" height="32"></td><td class=td7>Armadura de Placas Completa +2 (E/G)</td><td class=td7>45 / 50</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>47600</td><td class=td7>Cazador, Guerrero, Paladín, Bandido y Clerigo</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/317.gif" width="32" height="32"></td><td class=td7>Vestimentas Comunes (Newbie)</td><td class=td7>0 / 0</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>-</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/318.gif" width="32" height="32"></td><td class=td7>Vestimentas Comunes (Newbie)</td><td class=td7>0 / 0</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>-</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/319.gif" width="32" height="32"></td><td class=td7>Vestimentas Comunes (Newbie)</td><td class=td7>0 / 0</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>-</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/869.gif" width="32" height="32"></td><td class=td7>Harapos de Mendigo (E/G) (Newbie)</td><td class=td7>0 / 0</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>-</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/756.gif" width="32" height="32"></td><td class=td7>Armadura de Dragón</td><td class=td7>60 / 65</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>540000</td><td class=td7>Cazador, Guerrero, Paladín y Bandido</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/757.gif" width="32" height="32"></td><td class=td7>Armadura de Dragón (H/E/EO-M)</td><td class=td7>60 / 65</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Mujer</td><td class=td7>540000</td><td class=td7>Cazador, Guerrero, Paladín y Bandido.</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/758.gif" width="32" height="32"></td><td class=td7>Armadura de Dragón (E/G)</td><td class=td7>60 / 65</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>540000</td><td class=td7>Cazador, Guerrero, Paladín y Bandido.</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/760.gif" width="32" height="32"></td><td class=td7>Manto de Noble</td><td class=td7>10 / 15</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>4620</td><td class=td7>Herrero, Cazador, Guerrero, Paladín y Bandido</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/761.gif" width="32" height="32"></td><td class=td7>Armadura Legendaria</td><td class=td7>55 / 60</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>328000</td><td class=td7>Cazador, Leñador, Guerrero, Paladín y Bandido</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/762.gif" width="32" height="32"></td><td class=td7>Ropa de Estilo (E/G)</td><td class=td7>1 / 1</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>120</td><td class=td7>Todas</td></tr><tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/812.gif" width="32" height="32"></td><td class=td7>Dama de las Tinieblas (H/E/EO-M)</td><td class=td7>55 / 60</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Mujer</td><td class=td7>398000</td><td class=td7>Guerrero, Paladín y Bandido</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/764.gif" width="32" height="32"></td><td class=td7>White Lady (H/E/EO-M)</td><td class=td7>7 / 9</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Mujer</td><td class=td7>3000</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/765.gif" width="32" height="32"></td><td class=td7>Armadura de Placas Azul</td><td class=td7>40 / 45</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>59000</td><td class=td7>Cazador, Guerrero, Paladín y Bandido</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/766.gif" width="32" height="32"></td><td class=td7>Ropa de Minero</td><td class=td7>12 / 16</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>5000</td><td class=td7>Todas menos Mago y Pirata</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/769.gif" width="32" height="32"></td><td class=td7>Armadura de Placas Rojas (H/E/EO-M)</td><td class=td7>35 / 40</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Mujer</td><td class=td7>53750</td><td class=td7>Cazador, Guerrero, Paladín y Bandido</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/771.gif" width="32" height="32"></td><td class=td7>Armadura Escarlata</td><td class=td7>50 / 55</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>86000</td><td class=td7>Guerrero, Paladín y Bandido</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/772.gif" width="32" height="32"></td><td class=td7>Armadura de la Ciénaga</td><td class=td7>45 / 50</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>69500</td><td class=td7>Guerrero, Paladín y Bandido</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/773.gif" width="32" height="32"></td><td class=td7>Armadura de Placas de Gala</td><td class=td7>42 / 47</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>56640</td><td class=td7>Cazador, Guerrero, Paladín y Bandido</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/775.gif" width="32" height="32"></td><td class=td7>Cota de Mallas (H/E/EO-M)</td><td class=td7>12 / 22</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Mujer</td><td class=td7>7350</td><td class=td7>Pirata, Pescador, Minero, Carpintero, Herrero, Cazador, Leñador, Guerrero, Paladín, Bandido, Clerigo, Ladrón y Asesino</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/776.gif" width="32" height="32"></td><td class=td7>Armadura Bruñida (E/G)</td><td class=td7>40 / 45</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>59000</td><td class=td7>Cazador, Guerrero, Paladín y Bandido</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/777.gif" width="32" height="32"></td><td class=td7>Ropa de Campesino</td><td class=td7>3 / 5</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>650</td><td class=td7>Todas menos Mago y Pirata</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/778.gif" width="32" height="32"></td><td class=td7>Ropa de Campesino (E/G)</td><td class=td7>3 / 5</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>650</td><td class=td7>Todas menos Mago y Pirata</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/779.gif" width="32" height="32"></td><td class=td7>Trampa Visual (H/E/EO-M)</td><td class=td7>30 / 40</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Mujer</td><td class=td7>25200</td><td class=td7>Druida, Pescador, Minero, Carpintero, Herrero, Leñador, Guerrero, Paladín, Bandido, Clerigo y Ladrón</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/780.gif" width="32" height="32"></td><td class=td7>Atuendo Combinado (H/E/EO-M)</td><td class=td7>1 / 3</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Mujer</td><td class=td7>200</td><td class=td7>Todas menos Pirata</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/781.gif" width="32" height="32"></td><td class=td7>Atuendo Azul (H/E/EO-M)</td><td class=td7>1 / 3</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Mujer</td><td class=td7>200</td><td class=td7>Todas menos Pirata</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/782.gif" width="32" height="32"></td><td class=td7>Atuendo Rosa (H/E/EO-M)</td><td class=td7>1 / 3</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Mujer</td><td class=td7>200</td><td class=td7>Todas menos Pirata</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/783.gif" width="32" height="32"></td><td class=td7>Ropa Violeta (E/G)</td><td class=td7>2 / 4</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>410</td><td class=td7>Todas menos Mago y Pirata</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/784.gif" width="32" height="32"></td><td class=td7>Ropa Estuaria (H/E/EO-M)</td><td class=td7>8 / 15</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Mujer</td><td class=td7>4000</td><td class=td7>Todas menos Mago y Pirata</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/786.gif" width="32" height="32"></td><td class=td7>Vestido Indulgente (H/E/EO-M)</td><td class=td7>15 / 20</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Mujer</td><td class=td7>10500</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/787.gif" width="32" height="32"></td><td class=td7>Vestido de Novia Sensual (H/E/EO-M)</td><td class=td7>3 / 10</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Mujer</td><td class=td7>1600</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/789.gif" width="32" height="32"></td><td class=td7>Vestido Calipso (E/G-M)</td><td class=td7>6 / 10</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Mujer</td><td class=td7>3075</td><td class=td7>Todas menos Guerrero</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/791.gif" width="32" height="32"></td><td class=td7>Vestido de Bruja (H/E/EO-M)</td><td class=td7>15 / 20</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Mujer</td><td class=td7>10500</td><td class=td7>Todas menos Guerrero</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/791.gif" width="32" height="32"></td><td class=td7>Vestido de Bruja Especial (H/E/EO-M)</td><td class=td7>19 / 26</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Mujer</td><td class=td7>15200</td><td class=td7>Todas menos Guerrero y Mago</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/792.gif" width="32" height="32"></td><td class=td7>Ropa Legendaria</td><td class=td7>9 / 14</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>3900</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/796.gif" width="32" height="32"></td><td class=td7>Túnica Legendaria</td><td class=td7>30 / 35</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>20000</td><td class=td7>Todas menos Guerrero y Mago</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/801.gif" width="32" height="32"></td><td class=td7>Túnica Roja Especial (E/G)</td><td class=td7>15 / 20</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>50500</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/802.gif" width="32" height="32"></td><td class=td7>Túnica Reforzada (E/G)</td><td class=td7>30 / 35</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>20000</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/803.gif" width="32" height="32"></td><td class=td7>Túnica Reforzada de Mujer (E/G-M)</td><td class=td7>30 / 35</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Mujer</td><td class=td7>50000</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/804.gif" width="32" height="32"></td><td class=td7>Ropa de Enana (E/G-M)</td><td class=td7>2 / 4</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Mujer</td><td class=td7>400</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/806.gif" width="32" height="32"></td><td class=td7>Túnica Negra</td><td class=td7>5 / 8</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>3000</td><td class=td7>Todas menos Guerrero</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/807.gif" width="32" height="32"></td><td class=td7>Armadura de Cuero (H/E/EO-M)</td><td class=td7>10 / 15</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Mujer</td><td class=td7>4600</td><td class=td7>Todas menos Mago y Pirata</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/658.gif" width="32" height="32"></td><td class=td7>Ropa de Pordiosero</td><td class=td7>1 / 1</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>110</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/685.gif" width="32" height="32"></td><td class=td7>Túnica Real Benderiana</td><td class=td7>0 / 0</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>100000</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/10020.gif" width="32" height="32"></td><td class=td7>Armadura de Cazador (E/G)</td><td class=td7>10 / 20</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>20000</td><td class=td7>Cazador</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/10022.gif" width="32" height="32"></td><td class=td7>Cota de Mallas (E/G)</td><td class=td7>12 / 22</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>7350</td><td class=td7>Pirata, Pescador, Minero, Carpintero, Herrero, Cazador, Leñador, Guerrero, Paladín, Bandido, Clerigo, Ladrón y Asesino</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/10024.gif" width="32" height="32"></td><td class=td7>Armadura de Cuero (E/G)</td><td class=td7>10 / 17</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>4700</td><td class=td7>Todas menos Mago y Pirata</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/10028.gif" width="32" height="32"></td><td class=td7>Túnica de Monje Gris (E/G)</td><td class=td7>8 / 12</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>3200</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/10030.gif" width="32" height="32"></td><td class=td7>Túnica de Monje Marron (E/G)</td><td class=td7>6 / 15</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>3400</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/10032.gif" width="32" height="32"></td><td class=td7>Armadura de Elite (E/G)</td><td class=td7>30 / 35</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>21980</td><td class=td7>Todas menos Guerrero y Mago</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/12044.gif" width="32" height="32"></td><td class=td7>Vestimenta de Noble (E/G)</td><td class=td7>3 / 5</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>700</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/9.gif" width="32" height="32"></td><td class=td7>Túnica de Gnomo (E/G)</td><td class=td7>0 / 0</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>40</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/889.gif" width="32" height="32"></td><td class=td7>Túnica de Gran Hechicero (E/G)</td><td class=td7>15 / 20</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>10500</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/873.gif" width="32" height="32"></td><td class=td7>Túnica de Gran Hechicera (E/G-M)</td><td class=td7>15 / 20</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Mujer</td><td class=td7>10500</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/948.gif" width="32" height="32"></td><td class=td7>Vestido Bordado de Gala (H/E/EO-M)</td><td class=td7>0 / 1</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Mujer</td><td class=td7>105</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/940.gif" width="32" height="32"></td><td class=td7>Túnica del Oráculo (H/E/EO-M)</td><td class=td7>1 / 1</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Mujer</td><td class=td7>120</td><td class=td7>Mago, Druida, Bardo, Pirata, Paladín, Bandido, Clerigo, Ladrón y Asesino</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/772.gif" width="32" height="32"></td><td class=td7>Armadura de la Ciénaga (H/E/EO-M)</td><td class=td7>45 / 50</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Mujer</td><td class=td7>69500</td><td class=td7>Guerrero, Paladín y Bandido</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/938.gif" width="32" height="32"></td><td class=td7>Anillas Livianas de Aventurero (H/E/EO)</td><td class=td7>3 / 8</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>1190</td><td class=td7>Pirata, Pescador, Minero, Carpintero, Herrero, Cazador, Leñador, Guerrero, Paladín, Bandido, Clerigo, Ladrón y Asesino</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/897.gif" width="32" height="32"></td><td class=td7>Cota de Anillas Compuesta (H/E/EO)</td><td class=td7>5 / 9</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>2520</td><td class=td7>Todas menos Mago y Bardo</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/915.gif" width="32" height="32"></td><td class=td7>Cota de Anillas Compuesta (H/E/EO-M)</td><td class=td7>5 / 9</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Mujer</td><td class=td7>2520</td><td class=td7>Todas menos Mago y Bardo</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/909.gif" width="32" height="32"></td><td class=td7>Armadura Liviana de Hierro (H/E/EO)</td><td class=td7>8 / 15</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>3990</td><td class=td7>Todas menos Mago y Pirata</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/917.gif" width="32" height="32"></td><td class=td7>Vestido de Arquera (H/E/EO-M)</td><td class=td7>5 / 15</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Mujer</td><td class=td7>3500</td><td class=td7>Cazador</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/942.gif" width="32" height="32"></td><td class=td7>Cotas de Manto Marrón (H/E/EO)</td><td class=td7>8 / 25</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>6800</td><td class=td7>Pirata, Pescador, Minero, Carpintero, Herrero, Cazador, Leñador, Guerrero, Paladín, Bandido, Clerigo, Ladrón y Asesino</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/946.gif" width="32" height="32"></td><td class=td7>Brial del Bosque (H/E/EO)</td><td class=td7>10 / 22</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>6500</td><td class=td7>Pirata, Pescador, Minero, Carpintero, Herrero, Cazador, Leñador, Bandido, Clerigo, Ladrón y Asesino</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/895.gif" width="32" height="32"></td><td class=td7>Anillas Con Manto Verde (H/E/EO)</td><td class=td7>12 / 22</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>7350</td><td class=td7>Pirata, Pescador, Minero, Carpintero, Herrero, Cazador, Leñador, Guerrero, Paladín, Bandido, Clerigo, Ladrón y Asesino</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/907.gif" width="32" height="32"></td><td class=td7>Armadura de Cuero de Oso Pardo (H/E/EO)</td><td class=td7>10 / 20</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>6000</td><td class=td7>Druida, Pirata, Pescador, Minero, Carpintero, Herrero, Cazador, Leñador, Bandido, Clerigo, Ladrón y Asesino</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/922.gif" width="32" height="32"></td><td class=td7>Armadura de Cuero de Oso Pardo (H/E/EO-M)</td><td class=td7>10 / 20</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Mujer</td><td class=td7>6000</td><td class=td7>Druida, Pirata, Pescador, Minero, Carpintero, Herrero, Cazador, Leñador, Bandido, Clerigo, Ladrón y Asesino</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/924.gif" width="32" height="32"></td><td class=td7>Coraza Compuesta Roja (H/E/EO-M)</td><td class=td7>15 / 23</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Mujer</td><td class=td7>12250</td><td class=td7>Pirata, Pescador, Minero, Carpintero, Herrero, Cazador, Leñador, Guerrero, Paladín, Bandido, Clerigo y Ladrón</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/926.gif" width="32" height="32"></td><td class=td7>Anillas Con Manto Verde (H/E/EO-M)</td><td class=td7>12 / 22</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Mujer</td><td class=td7>7350</td><td class=td7>Pirata, Pescador, Minero, Carpintero, Herrero, Cazador, Leñador, Guerrero, Paladín, Bandido, Clerigo, Ladrón y Asesino</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/928.gif" width="32" height="32"></td><td class=td7>Armadura de Cruzada (H/E/EO-M)</td><td class=td7>13 / 23</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Mujer</td><td class=td7>8540</td><td class=td7>Paladín y Clerigo</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/761.gif" width="32" height="32"></td><td class=td7>Armadura Legendaria (H/E/EO-M)</td><td class=td7>55 / 60</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Mujer</td><td class=td7>358000</td><td class=td7>Cazador, Leñador, Guerrero, Paladín y Bandido</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/944.gif" width="32" height="32"></td><td class=td7>Túnica de Morgana (H/E/EO-M)</td><td class=td7>17 / 23</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Mujer</td><td class=td7>13500</td><td class=td7>Todas menos Bardo</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/934.gif" width="32" height="32"></td><td class=td7>Cota de Piquero (H/E/EO)</td><td class=td7>12 / 22</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>7350</td><td class=td7>Pirata, Pescador, Minero, Carpintero, Herrero, Cazador, Leñador, Guerrero, Paladín, Bandido, Clerigo, Ladrón y Asesino</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/773.gif" width="32" height="32"></td><td class=td7>Armadura de Placas de Gala (H/E/EO-M)</td><td class=td7>42 / 47</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>56640</td><td class=td7>Cazador, Guerrero, Paladín y Bandido</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/919.gif" width="32" height="32"></td><td class=td7>Cota de Peto Liso (H/E/EO-M)</td><td class=td7>14 / 24</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Mujer</td><td class=td7>12250</td><td class=td7>Pirata, Pescador, Minero, Carpintero, Herrero, Cazador, Leñador, Guerrero, Paladín, Bandido, Clerigo, Ladrón y Asesino</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/936.gif" width="32" height="32"></td><td class=td7>Anillas Con Manto Desgastado (H/E/EO-M)</td><td class=td7>13 / 24</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Mujer</td><td class=td7>9240</td><td class=td7>Todas menos Mago</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/911.gif" width="32" height="32"></td><td class=td7>Coraza Compuesta de Mujer (H/E/EO-M)</td><td class=td7>17 / 25</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Mujer</td><td class=td7>14000</td><td class=td7>Pirata, Pescador, Minero, Carpintero, Herrero, Cazador, Leñador, Guerrero, Paladín, Bandido, Clerigo, Ladrón y Asesino</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/913.gif" width="32" height="32"></td><td class=td7>Cota de Mallas Enteriza (H/E/EO-M)</td><td class=td7>19 / 25</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Mujer</td><td class=td7>14770</td><td class=td7>Pirata, Pescador, Minero, Carpintero, Herrero, Cazador, Leñador, Guerrero, Paladín, Bandido, Clerigo, Ladrón y Asesino</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/901.gif" width="32" height="32"></td><td class=td7>Armadura de Campeón (H/E/EO)</td><td class=td7>25 / 40</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>32400</td><td class=td7>Pirata, Pescador, Minero, Carpintero, Herrero, Cazador, Leñador, Guerrero, Paladín, Bandido, Clerigo y Ladrón</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/930.gif" width="32" height="32"></td><td class=td7>Placas Combinadas (H/E/EO-M)</td><td class=td7>30 / 37</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Mujer</td><td class=td7>43100</td><td class=td7>Pirata, Pescador, Minero, Carpintero, Herrero, Cazador, Leñador, Guerrero, Paladín, Bandido, Clerigo, Ladrón y Asesino</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/903.gif" width="32" height="32"></td><td class=td7>Suprema Armadura Dorada (H/E/EO)</td><td class=td7>35 / 45</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>51500</td><td class=td7>Cazador, Guerrero, Paladín y Clerigo</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/950.gif" width="32" height="32"></td><td class=td7>Manto del Dragón (H/E/EO)</td><td class=td7>28 / 35</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>22200</td><td class=td7>Cazador, Guerrero, Paladín y Clerigo</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/871.gif" width="32" height="32"></td><td class=td7>Vestimentas de Pescador (E/G)</td><td class=td7>0 / 1</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>100</td><td class=td7>Pescador</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/497.gif" width="32" height="32"></td><td class=td7>Vestido de Novia (E/G-M)</td><td class=td7>7 / 12</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Mujer</td><td class=td7>3400</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/475.gif" width="32" height="32"></td><td class=td7>Atuendo de Gnomo (E/G)</td><td class=td7>1 / 1</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>110</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/861.gif" width="32" height="32"></td><td class=td7>Vestimenta Bordo de Poblador (E/G)</td><td class=td7>1 / 1</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>110</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/852.gif" width="32" height="32"></td><td class=td7>Vestimenta Verde de Poblador (E/G)</td><td class=td7>1 / 1</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>110</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/481.gif" width="32" height="32"></td><td class=td7>Ropaje de Ermitaño (E/G)</td><td class=td7>1 / 2</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>150</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/495.gif" width="32" height="32"></td><td class=td7>Ropaje de Aldeana (E/G-M)</td><td class=td7>1 / 2</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Mujer</td><td class=td7>150</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/846.gif" width="32" height="32"></td><td class=td7>Ropaje de Aldeano (E/G)</td><td class=td7>1 / 2</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>150</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/848.gif" width="32" height="32"></td><td class=td7>Vestimenta Elegante (E/G)</td><td class=td7>1 / 3</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>200</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/854.gif" width="32" height="32"></td><td class=td7>Vestimenta de Minero (E/G)</td><td class=td7>1 / 3</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>200</td><td class=td7>Minero</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/469.gif" width="32" height="32"></td><td class=td7>Gabán de Cuero Pequeño (E/G)</td><td class=td7>2 / 2</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>200</td><td class=td7>Pirata, Pescador, Minero, Carpintero, Herrero, Cazador, Leñador, Guerrero, Paladín, Bandido, Clerigo, Ladrón y Asesino</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/499.gif" width="32" height="32"></td><td class=td7>Alifafe de Serpiente (E/G)</td><td class=td7>2 / 2</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>200</td><td class=td7>Pirata, Pescador, Minero, Carpintero, Herrero, Cazador, Leñador, Guerrero, Paladín, Bandido, Clerigo, Ladrón y Asesino</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/850.gif" width="32" height="32"></td><td class=td7>Ropaje de Herrero (E/G)</td><td class=td7>2 / 3</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>275</td><td class=td7>Herrero</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/863.gif" width="32" height="32"></td><td class=td7>Túnica Sírica Elegante (E/G)</td><td class=td7>1 / 5</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>450</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/865.gif" width="32" height="32"></td><td class=td7>Traje de Capitán Pirata (E/G)</td><td class=td7>2 / 5</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>600</td><td class=td7>Pirata</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/867.gif" width="32" height="32"></td><td class=td7>Traje de Noble (E/G)</td><td class=td7>3 / 5</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>700</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/465.gif" width="32" height="32"></td><td class=td7>Vestimenta de Explorador (E/G)</td><td class=td7>3 / 6</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>900</td><td class=td7>Pirata, Pescador, Minero, Carpintero, Herrero, Cazador, Leñador, Guerrero, Paladín, Bandido, Clerigo, Ladrón y Asesino</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/467.gif" width="32" height="32"></td><td class=td7>Peto de Gladiadora (E/G-M)</td><td class=td7>3 / 8</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Mujer</td><td class=td7>1190</td><td class=td7>Pirata, Pescador, Minero, Carpintero, Herrero, Cazador, Leñador, Guerrero, Paladín, Bandido, Clerigo, Ladrón y Asesino</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/471.gif" width="32" height="32"></td><td class=td7>Hombreras de Amazona (E/G-M)</td><td class=td7>4 / 6</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Mujer</td><td class=td7>1000</td><td class=td7>Pirata, Pescador, Minero, Carpintero, Herrero, Cazador, Leñador, Guerrero, Paladín, Bandido, Clerigo, Ladrón y Asesino</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/477.gif" width="32" height="32"></td><td class=td7>Alifafe de Lobo (E/G)</td><td class=td7>5 / 7</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>1400</td><td class=td7>Druida</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/473.gif" width="32" height="32"></td><td class=td7>Barragán de Cazador (E/G)</td><td class=td7>6 / 9</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>2550</td><td class=td7>Cazador</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/479.gif" width="32" height="32"></td><td class=td7>Barragán Compuesto (E/G)</td><td class=td7>10 / 15</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>4600</td><td class=td7>Druida, Pescador, Minero, Carpintero, Herrero, Cazador, Leñador, Guerrero, Paladín, Bandido, Clerigo, Ladrón y Asesino</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/885.gif" width="32" height="32"></td><td class=td7>Toga de Aprendiz (E/G)</td><td class=td7>5 / 10</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>2700</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/879.gif" width="32" height="32"></td><td class=td7>Vestido Elegante Púrpura (E/G-M)</td><td class=td7>7 / 11</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Mujer</td><td class=td7>3175</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/887.gif" width="32" height="32"></td><td class=td7>Sotana de Gran Hechicero (E/G)</td><td class=td7>8 / 12</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>3200</td><td class=td7>Mago, Druida, Bardo, Clerigo y Ladrón</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/487.gif" width="32" height="32"></td><td class=td7>Cota Liviana Verde (E/G-M)</td><td class=td7>9 / 13</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Mujer</td><td class=td7>3710</td><td class=td7>Todas menos Mago y Druida</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/491.gif" width="32" height="32"></td><td class=td7>Cotas Livianas (E/G)</td><td class=td7>10 / 15</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>4600</td><td class=td7>Pirata, Pescador, Minero, Carpintero, Herrero, Cazador, Leñador, Guerrero, Paladín, Bandido, Clerigo, Ladrón y Asesino</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/489.gif" width="32" height="32"></td><td class=td7>Cotas con Peto Compuesto (E/G-M)</td><td class=td7>13 / 17</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Mujer</td><td class=td7>6020</td><td class=td7>Pirata, Pescador, Minero, Carpintero, Herrero, Cazador, Leñador, Guerrero, Paladín, Bandido, Clerigo, Ladrón y Asesino</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/873.gif" width="32" height="32"></td><td class=td7>Túnica de Gran Hechicera (E/G-M)</td><td class=td7>15 / 20</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Mujer</td><td class=td7>10500</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/485.gif" width="32" height="32"></td><td class=td7>Cota de Peto Púrpura (E/G)</td><td class=td7>12 / 22</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>7350</td><td class=td7>Pirata, Pescador, Minero, Carpintero, Herrero, Cazador, Leñador, Guerrero, Paladín, Bandido, Clerigo, Ladrón y Asesino</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/875.gif" width="32" height="32"></td><td class=td7>Traje de Bruja (E/G-M)</td><td class=td7>15 / 20</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Mujer</td><td class=td7>10500</td><td class=td7>Todas menos Guerrero</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/891.gif" width="32" height="32"></td><td class=td7>Túnica de Gala Roja (E/G)</td><td class=td7>19 / 23</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>13500</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/493.gif" width="32" height="32"></td><td class=td7>Cota de Mallas Enteriza (E/G)</td><td class=td7>20 / 26</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>15330</td><td class=td7>Pirata, Pescador, Minero, Carpintero, Herrero, Cazador, Leñador, Guerrero, Paladín, Bandido, Clerigo, Ladrón y Asesino</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/881.gif" width="32" height="32"></td><td class=td7>Traje Seductor de Pitonisa (E/G-M)</td><td class=td7>25 / 30</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Mujer</td><td class=td7>18000</td><td class=td7>Pirata, Pescador, Minero, Carpintero, Herrero, Cazador, Leñador, Guerrero, Paladín, Bandido, Clerigo, Ladrón y Asesino</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/883.gif" width="32" height="32"></td><td class=td7>Vestido de Gala Turquesa (E/G-M)</td><td class=td7>30 / 35</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Mujer</td><td class=td7>22000</td><td class=td7>Pirata, Pescador, Minero, Carpintero, Herrero, Cazador, Leñador, Guerrero, Paladín, Bandido, Clerigo, Ladrón y Asesino</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/952.gif" width="32" height="32"></td><td class=td7>Sobrevesta Élfica (H/E/EO)</td><td class=td7>0 / 0</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>50</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/956.gif" width="32" height="32"></td><td class=td7>Vestido Aurë (H/E/EO-M)</td><td class=td7>0 / 0</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Mujer</td><td class=td7>50</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/954.gif" width="32" height="32"></td><td class=td7>Vestido de Gala Alcarinqua (H/E/EO-M)</td><td class=td7>0 / 1</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Mujer</td><td class=td7>105</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/971.gif" width="32" height="32"></td><td class=td7>Vestimentas de Poblador Élfico (H/E/EO)</td><td class=td7>1 / 1</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>110</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/975.gif" width="32" height="32"></td><td class=td7>Hábito Liviano de Ritual (H/E/EO)</td><td class=td7>2 / 4</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>420</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/977.gif" width="32" height="32"></td><td class=td7>Vestido Bordado de Elite (H/E/EO-M)</td><td class=td7>2 / 3</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Mujer</td><td class=td7>300</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/967.gif" width="32" height="32"></td><td class=td7>Hábito Liviano de Ritual (H/E/EO-M)</td><td class=td7>2 / 4</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Mujer</td><td class=td7>450</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/973.gif" width="32" height="32"></td><td class=td7>Sírica Élfica Rojiza (H/E/EO-M)</td><td class=td7>3 / 4</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Mujer</td><td class=td7>550</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/969.gif" width="32" height="32"></td><td class=td7>Prenda de la Naturaleza (H/E/EO-M)</td><td class=td7>3 / 5</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Mujer</td><td class=td7>700</td><td class=td7>Druida y Cazador</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/965.gif" width="32" height="32"></td><td class=td7>Ropa de Explorador Élfico (H/E/EO)</td><td class=td7>4 / 5</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>850</td><td class=td7>Todas menos Mago</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/959.gif" width="32" height="32"></td><td class=td7>Manto Élfico Púrpura (H/E/EO-M)</td><td class=td7>5 / 16</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Mujer</td><td class=td7>3550</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/961.gif" width="32" height="32"></td><td class=td7>Hábito de Ritual de Hombre (H/E/EO)</td><td class=td7>11 / 20</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>8000</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/963.gif" width="32" height="32"></td><td class=td7>Hábito de Ritual Femenino (H/E/EO-M)</td><td class=td7>11 / 20</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Mujer</td><td class=td7>8000</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/979.gif" width="32" height="32"></td><td class=td7>Valya Silmeanar (H/E/EO-M)</td><td class=td7>20 / 25</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Mujer</td><td class=td7>15000</td><td class=td7>Pirata, Pescador, Minero, Carpintero, Herrero, Cazador, Leñador, Guerrero, Paladín, Bandido, Clerigo, Ladrón y Asesino</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/1018.gif" width="32" height="32"></td><td class=td7>Vestido de Enana (E/G-M)</td><td class=td7>0 / 0</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Mujer</td><td class=td7>50</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/1007.gif" width="32" height="32"></td><td class=td7>Vestimenta Común (E/G)</td><td class=td7>0 / 0</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>50</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/1013.gif" width="32" height="32"></td><td class=td7>Ropa de Carpintero Enano (E/G)</td><td class=td7>0 / 1</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>100</td><td class=td7>Carpintero</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/1003.gif" width="32" height="32"></td><td class=td7>Ropa de Leñador (E/G)</td><td class=td7>0 / 1</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>100</td><td class=td7>Leñador</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/995.gif" width="32" height="32"></td><td class=td7>Ropa de Minero (E/G)</td><td class=td7>0 / 2</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>125</td><td class=td7>Minero</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/1009.gif" width="32" height="32"></td><td class=td7>Túnica Elegante (E/G)</td><td class=td7>1 / 3</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>200</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/1015.gif" width="32" height="32"></td><td class=td7>Ropaje de Luchador de Las Minas (E/G)</td><td class=td7>2 / 3</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>275</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/989.gif" width="32" height="32"></td><td class=td7>Ropa de Viajero (E/G)</td><td class=td7>2 / 4</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>400</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/987.gif" width="32" height="32"></td><td class=td7>Antigua Armadura Dorada (E/G)</td><td class=td7>3 / 5</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>700</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/1011.gif" width="32" height="32"></td><td class=td7>Alifafe de Pirata (E/G)</td><td class=td7>4 / 16</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>3200</td><td class=td7>Pirata</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/1020.gif" width="32" height="32"></td><td class=td7>Ropas de Buscador (E/G)</td><td class=td7>4 / 17</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>3600</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/985.gif" width="32" height="32"></td><td class=td7>Armadura Grabada Completa (E/G)</td><td class=td7>5 / 19</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>4480</td><td class=td7>Todas menos Mago</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/993.gif" width="32" height="32"></td><td class=td7>Túnica Dorada de Gala (E/G)</td><td class=td7>16 / 18</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>10000</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/981.gif" width="32" height="32"></td><td class=td7>Armadura de Placas Livianas Thor (E/G)</td><td class=td7>18 / 22</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>13350</td><td class=td7>Pirata, Pescador, Minero, Carpintero, Herrero, Cazador, Leñador, Guerrero, Paladín, Bandido, Clerigo, Ladrón y Asesino</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/991.gif" width="32" height="32"></td><td class=td7>Armadura Metal Oscuro (E/G)</td><td class=td7>19 / 23</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>13720</td><td class=td7>Pirata, Pescador, Minero, Carpintero, Herrero, Cazador, Leñador, Guerrero, Paladín, Bandido, Clerigo, Ladrón y Asesino</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/997.gif" width="32" height="32"></td><td class=td7>Túnica de Mahal (E/G)</td><td class=td7>20 / 25</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>15000</td><td class=td7>Todas menos Bardo y Druida</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/1022.gif" width="32" height="32"></td><td class=td7>Armadura de Placas Livianas Thor (E/G-M)</td><td class=td7>18 / 22</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Mujer</td><td class=td7>13350</td><td class=td7>Pirata, Pescador, Minero, Carpintero, Herrero, Cazador, Leñador, Guerrero, Paladín, Bandido, Clerigo, Ladrón y Asesino</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/1001.gif" width="32" height="32"></td><td class=td7>Capa de Monje Cocida con Mithril (E/G)</td><td class=td7>23 / 35</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>19000</td><td class=td7>Pirata, Pescador, Minero, Carpintero, Herrero, Cazador, Leñador, Guerrero, Paladín, Bandido, Clerigo, Ladrón y Asesino</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/999.gif" width="32" height="32"></td><td class=td7>Cota de Mallas Larga (E/G)</td><td class=td7>28 / 40</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>23100</td><td class=td7>Pirata, Pescador, Minero, Carpintero, Herrero, Cazador, Leñador, Guerrero, Paladín, Bandido, Clerigo, Ladrón y Asesino</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/983.gif" width="32" height="32"></td><td class=td7>Armadura Pesada de Hierro y Bronce (E/G)</td><td class=td7>30 / 50</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>54000</td><td class=td7>Pirata, Pescador, Minero, Carpintero, Herrero, Cazador, Leñador, Guerrero, Paladín, Bandido, Clerigo, Ladrón y Asesino</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/1030.gif" width="32" height="32"></td><td class=td7>Vestimenta Esclava (EO)</td><td class=td7>0 / 0</td><td class=td7>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>50</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/1026.gif" width="32" height="32"></td><td class=td7>Harapos de la Cueva (EO)</td><td class=td7>0 / 1</td><td class=td7>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>105</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/1024.gif" width="32" height="32"></td><td class=td7>Armadura Maghtere Roja (EO)</td><td class=td7>10 / 20</td><td class=td7>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>7000</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/1042.gif" width="32" height="32"></td><td class=td7>Armadura de Combate Liviana (EO)</td><td class=td7>14 / 20</td><td class=td7>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>10000</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/1032.gif" width="32" height="32"></td><td class=td7>Piwafwi de Fuego (EO)</td><td class=td7>16 / 20</td><td class=td7>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>11000</td><td class=td7>Todas</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/1035.gif" width="32" height="32"></td><td class=td7>Armadura Melee de Explorador (EO)</td><td class=td7>18 / 22</td><td class=td7>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>13400</td><td class=td7>Pirata, Pescador, Minero, Carpintero, Herrero, Cazador, Leñador, Guerrero, Paladín, Bandido, Clerigo, Ladrón y Asesino</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/1037.gif" width="32" height="32"></td><td class=td7>Piwafwi Purpura del Silencio (EO-M)</td><td class=td7>20 / 24</td><td class=td7>Elfo Oscuro</td><td class=td7>Mujer</td><td class=td7>14500</td><td class=td7>Pirata, Pescador, Minero, Carpintero, Herrero, Cazador, Leñador, Guerrero, Paladín, Bandido, Clerigo, Ladrón y Asesino</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/1039.gif" width="32" height="32"></td><td class=td7>Piwafwi Alto Narbondel (EO)</td><td class=td7>20 / 25</td><td class=td7>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>15000</td><td class=td7>Pirata, Pescador, Minero, Carpintero, Herrero, Cazador, Leñador, Guerrero, Paladín, Bandido, Clérigo, Ladrón y Asesino</td></tr>
<tr>
<td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/1041.gif" width="32" height="32"></td><td class=td7>Piwafwi Socere de Lloth (EO-M)</td><td class=td7>25 / 35</td><td class=td7>Elfo Oscuro</td><td class=td7>Mujer</td><td class=td7>20000</td><td class=td7>Pirata, Pescador, Minero, Carpintero, Herrero, Cazador, Leñador, Guerrero, Paladín, Bandido, Clerigo, Ladrón y Asesino</td></tr>

</td>
</tr>
</table>
</body>



















<!--

Las vestimentas o armaduras te cubrirán de los pies hasta el cuello para resistir mejor los golpes y permitiran que el personaje no pierda energía ni tenga frío.

<br><br><br><br>


<center>Armaduras:</center><br>

<table align="center" width="92%">
<tr>
<td class="tdresaltar">IMAGEN</td>
<td class="tdresaltar">NOMBRE</td>
<td class="tdresaltar" width="9%">DEFENSA MIN/MAX</td>
<td class="tdresaltar" width="8%">RAZA</td>
<td class="tdresaltar" width="8%">GÉNERO</td>
<td class="tdresaltar">PRECIO</td>
<td class="tdresaltar">CLASES PERMITIDAS</td>
</tr>
<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/Ítems/armaduradecuero.png" width="32" height="32" border="0"></td>
<td class="td2">Armadura de Cuero</td>
<td class="td2">10 / 15</td>
<td class="td2">Alta</td>
<td class="td2">Ambos</td>
<td class="td2">2000</td>
<td class="td2">Todas menos Mago y Pirata</td>
</tr>
<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/Ítems/armaduradecueroe.png" width="32" height="32" border="0"></td>
<td class="td2">Armadura de Cuero (E/G)</td>
<td class="td2">10 / 15</td>
<td class="td2">Mediana</td>
<td class="td2">Ambos</td>
<td class="td2">1800</td>
<td class="td2">Todas menos Mago y Pirata</td>
</tr>
<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/Ítems/armaduradecuerom.png" width="32" height="32" border="0"></td>
<td class="td2">Armadura de Cuero (H/E/EO-M)</td>
<td class="td2">10 / 15</td>
<td class="td2">Alta</td>
<td class="td2">Mujer</td>
<td class="td2">2200</td>
<td class="td2">Todas menos Mago y Pirata</td>
</tr>
<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/Ítems/armaduradecazadore.png" width="32" height="32" border="0"></td>
<td class="td2">Armadura de Cazador (E/G)</td>
<td class="td2">10 / 15</td>
<td class="td2">Mediana</td>
<td class="td2">Ambos</td>
<td class="td2">16800</td>
<td class="td2">Cazador</td>
</tr>
<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/Ítems/cazador.gif" width="32" height="32" border="0"></td>
<td class="td2">Armadura de Cazador</td>
<td class="td2">10 / 15</td>
<td class="td2">Alta</td>
<td class="td2">Ambos</td>
<td class="td2">17000</td>
<td class="td2">Cazador</td>
</tr>
<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/Ítems/cota.gif" width="32" height="32" border="0"></td>
<td class="td2">Cota de Mallas</td>
<td class="td2">12 / 22</td>
<td class="td2">Alta</td>
<td class="td2">Ambos</td>
<td class="td2">7300</td>
<td class="td2">Guerrero, Paladín, Bandido, Carpintero, Cazador, Minero, Ladrón, Clérigo, Herrero, Asesino, Pirata, Pescador y Leñador</td>
</tr>
<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/Ítems/cotam.gif" width="32" height="32" border="0"></td>
<td class="td2">Cota de Mallas (H/E/EO-M)</td>
<td class="td2">12 / 22</td>
<td class="td2">Alta</td>
<td class="td2">Mujer</td>
<td class="td2">7300</td>
<td class="td2">Guerrero, Paladín, Bandido, Carpintero, Cazador, Minero, Ladrón, Clérigo, Herrero, Asesino, Pirata, Pescador y Leñador</td>
</tr>
<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/Ítems/cotademallase.png" width="32" height="32" border="0"></td>
<td class="td2">Cota de Mallas (E/G)</td>
<td class="td2">12 / 22</td>
<td class="td2">Mediana</td>
<td class="td2">Ambos</td>
<td class="td2">7200</td>
<td class="td2">Guerrero, Paladín, Bandido, Carpintero, Cazador, Minero, Ladrón, Clérigo, Herrero, Asesino, Pirata, Pescador y Leñador</td>
</tr>
<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/Ítems/mantonoble.gif" width="32" height="32" border="0"></td>
<td class="td2">Manto de Noble</td>
<td class="td2">10 / 15</td>
<td class="td2">Alta</td>
<td class="td2">Ambos</td>
<td class="td2">4000</td>
<td class="td2">Guerrero, Paladín, Bandido, Cazador y Herrero</td>
</tr>
<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/Ítems/10032.png" width="32" height="32" border="0"></td>
<td class="td2">Armadura de Elite (E/G)</td>
<td class="td2">30 / 35</td>
<td class="td2">Mediana</td>
<td class="td2">Ambos</td>
<td class="td2">20000</td>
<td class="td2">Todas menos Guerrero y Mago</td>
</tr>
<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/Ítems/sombras.gif" width="32" height="32" border="0"></td>
<td class="td2">Armadura de las Sombras</td>
<td class="td2">30 / 37</td>
<td class="td2">Alta</td>
<td class="td2">Ambos</td>
<td class="td2">21840</td>
<td class="td2">Asesino</td>
</tr>
<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/Ítems/placas.gif" width="32" height="32" border="0"></td>
<td class="td2">Armadura de Placas Completa</td>
<td class="td2">35 / 40</td>
<td class="td2">Alta</td>
<td class="td2">Ambos</td>
<td class="td2">27440</td>
<td class="td2">Guerrero, Paladín, Bandido y Clérigo</td>
</tr>
<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/Ítems/11021.png" width="32" height="32" border="0"></td>
<td class="td2">Armadura de Placas Completa +1</td>
<td class="td2">40 / 45</td>
<td class="td2">Alta</td>
<td class="td2">Ambos</td>
<td class="td2">35350</td>
<td class="td2">Guerrero, Paladín, Bandido, Cazador y Clérigo</td>
</tr>
<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/Ítems/11023.png" width="32" height="32" border="0"></td>
<td class="td2">Armadura de Placas Completa +2</td>
<td class="td2">45 / 50</td>
<td class="td2">Alta</td>
<td class="td2">Ambos</td>
<td class="td2">47600</td>
<td class="td2">Guerrero, Paladín, Bandido, Cazador y Clérigo</td>
</tr>
<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/Ítems/placase.gi