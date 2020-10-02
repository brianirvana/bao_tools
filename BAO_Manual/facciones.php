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
<table class="titulo_seccion"><tr><td><a name="ver"></a>- Ítems Faccionarios -</td></tr></table><br><table width="98%" align="center"><tr><td><script type="text/javascript" src="dats/table_sort.js"></script>
<span class="resaltar"><center> Armada Real </center><br><br></span>

<span class="size">En la sastrería de la Armada Real podrás comprar y vender algunos Ítems faccionarios o también podrás construirlos utilizando la herrería.

</span>

<br><br><br>
<span class="size">
<center><u>Armaduras:</u></center><br>
</span>

<table align="center" width="95%">

<thead>

<tr>
<th style="border:0;width:0px"></th>
<th class="tdresaltar">IMAGEN</th>
<th class="tdresaltar"><a href="#" onclick="this.blur(); return sortTable('armadurasarmadareal', 2, true);" title="Organizar">NOMBRE</a></th>
<th class="tdresaltar"><a href="#" onclick="this.blur(); return sortTable('armadurasarmadareal', 3, true);" title="Organizar">DEFENSA MIN/MAX</a></th>
<th class="tdresaltar"><a href="#" onclick="this.blur(); return sortTable('armadurasarmadareal', 4, true);" title="Organizar">RAZA</a></th>
<th class="tdresaltar"><a href="#" onclick="this.blur(); return sortTable('armadurasarmadareal', 5, true);" title="Organizar">GÉNERO</a></th>
<th class="tdresaltar"><a href="#" onclick="this.blur(); return sortTable('armadurasarmadareal', 6, true);" title="Organizar">PRECIO</a></th>
<th class="tdresaltar"><a href="#" onclick="this.blur(); return sortTable('armadurasarmadareal', 7, true);" title="Organizar">CLASES PERMITIDAS</a></th>
</tr>

</thead>

<tbody id="armadurasarmadareal">


<tr><td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/759.gif" width="32" height="32"></td><td class=td7>Manto de Sacerdote del Imperio</td><td class=td7>6 / 12</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>2900</td><td class=td7>Druida, Bardo y 
	Clérigo</td></tr><tr><td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/768.gif" width="32" height="32"></td><td class=td7>Armadura Real (E/G)</td><td class=td7>7 / 13</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>3010</td><td class=td7>
	Pirata, Trabajador,<br>
	Guerrero, Cazador, Paladín, Bandido, Ladrón y Asesino.</td></tr><tr><td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/793.gif" width="32" height="32"></td><td class=td7>Túnica de Maga del Imperio (H/E/EO-M)</td><td class=td7>5 / 12</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Mujer</td><td class=td7>2800</td><td class=td7>Mago</td></tr><tr><td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/794.gif" width="32" height="32"></td><td class=td7>Túnica de Mago del Imperio</td><td class=td7>5 / 12</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>2800</td><td class=td7>Mago</td></tr><tr><td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/797.gif" width="32" height="32"></td><td class=td7>Armadura de Gran Sacerdotisa Imperial (H/E/EO-M)</td><td class=td7>15 / 22</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Mujer</td><td class=td7>9240</td><td class=td7>
Cazador, Guerrero, Pirata, Trabajador, Paladín, Asesino, Bandido y<br>
Ladrón.</td></tr><tr><td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/686.gif" width="32" height="32"></td><td class=td7>Armadura Real</td><td class=td7>7 / 13</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>3010</td><td class=td7>Pirata, Pescador, Minero, Carpintero, Herrero, Cazador, Leñador, Guerrero, Paladín, Bandido, Ladrón y Asesino</td></tr><tr><td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/799.gif" width="32" height="32"></td><td class=td7>Túnica de Mago del Imperio (E/G)</td><td class=td7>5 / 12</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>2800</td><td class=td7>Mago</td></tr><tr><td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/684.gif" width="32" height="32"></td><td class=td7>Armadura Nobilísima</td><td class=td7>15 / 25</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>11830</td><td class=td7>
Cazador, Guerrero,<br>
Pirata, Trabajador, Paladín, Asesino, Bandido y Ladrón.</td></tr><tr><td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/11111.gif" width="32" height="32"></td><td class=td7>Vestimenta Imperial</td><td class=td7>1 / 3</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>175</td><td class=td7>Todas</td></tr><tr><td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/11112.gif" width="32" height="32"></td><td class=td7>Vestimenta Imperial (E/G)</td><td class=td7>1 / 3</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>175</td><td class=td7>Todas</td></tr><tr><td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/10026.gif" width="32" height="32"></td><td class=td7>Túnica Conspicua de Mago Imperial</td><td class=td7>15 / 20</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>9500</td><td class=td7>Mago</td></tr><tr><td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/11105.gif" width="32" height="32"></td><td class=td7>Armadura de Gran Sacerdote Imperial</td><td class=td7>15 / 22</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>9240</td><td class=td7>Druida, Bardo y 
Clérigo</td></tr><tr><td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/11115.gif" width="32" height="32"></td><td class=td7>Armadura Nobilísima (E/G)</td><td class=td7>15 / 25</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>11830</td><td class=td7>Todas menos Mago</td></tr><tr><td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/11106.gif" width="32" height="32"></td><td class=td7>Túnica Conspicua de Mago Imperial (E/G)</td><td class=td7>15 / 20</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>9500</td><td class=td7>Mago</td></tr><tr><td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/683.gif" width="32" height="32"></td><td class=td7>Túnica Palatina</td><td class=td7>30 / 35</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>18000</td><td class=td7>Todas menos Mago</td></tr><tr><td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/11104.gif" width="32" height="32"></td><td class=td7>Pequeña Túnica Palatina (E/G)</td><td class=td7>30 / 35</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>18000</td><td class=td7>Todas menos Mago</td></tr><tr><td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/11101.gif" width="32" height="32"></td><td class=td7>Armadura de Ilustre Caballero</td><td class=td7>35 / 40</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>25060</td><td class=td7>Guerrero, Paladín, Bandido y 
Clérigo</td></tr><tr><td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/810.gif" width="32" height="32"></td><td class=td7>Armadura Magna</td><td class=td7>35 / 40</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>25060</td><td class=td7>Guerrero, Paladín, Bandido y 
	Clérigo</td></tr><tr><td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/810.gif" width="32" height="32"></td><td class=td7>Armadura Magna (H/E/EO-M)</td><td class=td7>35 / 40</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Mujer</td><td class=td7>25900</td><td class=td7>Guerrero, Paladín, Bandido y 
	Clérigo</td></tr><tr><td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/11100.gif" width="32" height="32"></td><td class=td7>Armadura de Ilustre Caballero (E/G)</td><td class=td7>35 / 40</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>25060</td><td class=td7>Guerrero, Paladín, Bandido y 
	Clérigo</td></tr>
</tbody>
</table>

<br><br>
<center><span class="size"><u>Escudos:</u></span></center><br>


<table align="center" width="95%">
<tr>
<td class="tdresaltar">IMAGEN</td>
<td class="tdresaltar">NOMBRE</td>
<td class="tdresaltar" width="9%">DEFENSA MIN/MAX</td>
<td class="tdresaltar">PRECIO</td>
<td class="tdresaltar">CLASES PERMITIDAS</td>
</tr>
<tr>
<td class="tdresaltar"><img src="imagenes/items/escudoreal.png" width="32" height="32"></td>
<td class="td7">Escudo Real</td>
<td class="td7">1 / 1</td>
<td class="td7">350</td>
<td class="td7">Todas menos Mago, Druida, Ladrón y Pirata</td>
</tr>
<tr>
<td class="tdresaltar"><img src="imagenes/graficos/566.gif" width="32" height="32"></td>
<td class="td7">Escudo Imperial</td>
<td class="td7">1 / 4</td>
<td class="td7">7800</td>
<td class="td7">Herrero, Cazador, Leñador, Guerrero, Paladín, Bandido y Clerigo</td>
</tr>
</table>



<br><br><br><hr align="center" width="60%"><br><br>


<span class="size">
<center><u>Segundas Jerarquía</u></center><br>

Las segundas jerarquías son reconocimientos otorgados a los faccionarios que han sabido cumplir fielmente su rol dentro de su status, protegiendo los valores de ésta y difundiendo los preceptos que todo miembro debería tener.
Las distinciones son otorgadas por el Consejo de Angrod previo un análisis del candidato.<br><br>
</span>

<table align="center" width="95%">
<tr>
<td class="tdresaltar">IMAGEN</td>
<td class="tdresaltar">NOMBRE</td>
<td class="tdresaltar" width="70%">DESCRIPCION</td>
<td class="tdresaltar">CLASES PERMITIDAS</td>
</tr>
<tr>
<td class="tdresaltar"><img src="imagenes/graficos/3726.gif" width="32" height="32"></td>
<td class="td7">Cuerno de llamado Real</td>
<td class="td7">Con este objeto, quien lo posea podrá emitir un llamado de ayuda que será escuchado por todos sus compañeros de facción dento del mapa en que él se encuentre.
Este cuerno también es otorgado a los miembros temporales de las cúpulas (y obviamente también a los permanentes).</td>
<td class="td7">Todas</td>
</tr>
</table><br><br>
<span class="size">
<center><u>Armaduras / Túnicas:</u> </center><br><br>
</span>
<table align="center" width="95%">

<thead>

<tr>
<th style="border:0;width:0px"></th>
<th class="tdresaltar">IMAGEN</th>
<th class="tdresaltar"><a href="#" onclick="this.blur(); return sortTable('armadurasarmadareal', 2, true);" title="Organizar">NOMBRE</a></th>
<th class="tdresaltar"><a href="#" onclick="this.blur(); return sortTable('armadurasarmadareal', 3, true);" title="Organizar">DEFENSA MIN/MAX</a></th>
<th class="tdresaltar"><a href="#" onclick="this.blur(); return sortTable('armadurasarmadareal', 4, true);" title="Organizar">RAZA</a></th>
<th class="tdresaltar"><a href="#" onclick="this.blur(); return sortTable('armadurasarmadareal', 5, true);" title="Organizar">GÉNERO</a></th>
<th class="tdresaltar"><a href="#" onclick="this.blur(); return sortTable('armadurasarmadareal', 7, true);" title="Organizar">CLASES PERMITIDAS</a></th>
</tr>

</thead>

<tbody id="armadurasarmadareal">


<tr><td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/3837.bmp" width="32" height="32"></td><td class=td7>Túnica de Médium</td><td class=td7>35 / 35</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>Mago</td></tr><tr><td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/3821.bmp" width="32" height="32"></td><td class=td7>Armadura Abacial</td><td class=td7>40 / 40</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>Clérigo</td></tr><tr><td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/3805.bmp" width="32" height="32"></td><td class=td7>Armadura Fatricida</td><td class=td7>35 / 35</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>Asesino</td></tr><tr><td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/3809.bmp" width="32" height="32"></td><td class=td7>Túnica Bandolera</td><td class=td7>30 / 30</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>Bandido</td></tr><tr><td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/3845.bmp" width="32" height="32"></td><td class=td7>Vestimenta de Pillaje</td><td class=td7>37 / 37</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>Pirata</td></tr><tr><td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/3843.bmp" width="32" height="32"></td><td class=td7>Armadura de Valedor</td><td class=td7>42 / 42</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>Paladín</td></tr><tr><td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/3817.bmp" width="32" height="32"></td><td class=td7>Armadura de Zamarra</td><td class=td7>45 / 45</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>Cazador</td></tr><tr><td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/3813.bmp" width="32" height="32"></td><td class=td7>Túnica de Trovador</td><td class=td7>35 / 35</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>Bardo</td></tr><tr><td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/3825.bmp" width="32" height="32"></td><td class=td7>Túnica Amansa</td><td class=td7>32 / 32</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>Druida</td></tr><tr><td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/3829.bmp" width="32" height="32"></td><td class=td7>Armadura de Aguerrido</td><td class=td7>47 / 47</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>Guerrero</td></tr>
</tbody>
</table>
<br><br><br>

<span class="resaltar"><center> Legión Oscura</center></span><br><br>
<span class="size">En la sastrería de la Legión Oscura podrás comprar y vender algunos Ítems faccionarios o también podrás construirlos utilizando la herrería.</span>

<br><br><br>

<center><u>Armaduras:</u></center><br>


<table align="center" width="95%">

<thead>

<tr>
<th style="border:0;width:0px"></th>
<th class="tdresaltar">IMAGEN</th>
<th class="tdresaltar"><a href="#" onclick="this.blur(); return sortTable('armaduraslegionoscura', 2, true);" title="Organizar">NOMBRE</a></th>
<th class="tdresaltar"><a href="#" onclick="this.blur(); return sortTable('armaduraslegionoscura', 3, true);" title="Organizar">DEFENSA MIN/MAX</a></th>
<th class="tdresaltar"><a href="#" onclick="this.blur(); return sortTable('armaduraslegionoscura', 4, true);" title="Organizar">RAZA</a></th>
<th class="tdresaltar"><a href="#" onclick="this.blur(); return sortTable('armaduraslegionoscura', 5, true);" title="Organizar">GÉNERO</a></th>
<th class="tdresaltar"><a href="#" onclick="this.blur(); return sortTable('armaduraslegionoscura', 6, true);" title="Organizar">PRECIO</a></th>
<th class="tdresaltar"><a href="#" onclick="this.blur(); return sortTable('armaduraslegionoscura', 7, true);" title="Organizar">CLASES PERMITIDAS</a></th>
</tr>

</thead>

<tbody id="armaduraslegionoscura">


<tr><td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/687.gif" width="32" height="32"></td><td class=td7>Armadura Legionaria</td><td class=td7>7 / 13</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>3010</td><td class=td7>Pirata, Pescador, Minero, Carpintero, Herrero, Cazador, Leñador, Guerrero, Paladín, Bandido, Ladrón y Asesino</td></tr><tr><td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/691.gif" width="32" height="32"></td><td class=td7>Armadura Legionaria (E/G)</td><td class=td7>7 / 13</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>3010</td><td class=td7>Todas menos Mago</td></tr><tr><td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/785.gif" width="32" height="32"></td><td class=td7>Túnica de Maga Oscura (H/E/EO-M)</td><td class=td7>5 / 12</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Mujer</td><td class=td7>2800</td><td class=td7>Mago</td></tr><tr><td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/795.gif" width="32" height="32"></td><td class=td7>Túnica de Mago Oscuro</td><td class=td7>5 / 12</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>2800</td><td class=td7>Mago</td></tr><tr><td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/800.gif" width="32" height="32"></td><td class=td7>Manto de Sacerdote Demoníaco</td><td class=td7>6 / 12</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>2900</td><td class=td7>
<br>
Bardo,<br>
Clérigo y Druida.<br>
</td></tr><tr><td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/774.gif" width="32" height="32"></td><td class=td7>Túnica de Mago Oscuro (E/G)</td><td class=td7>5 / 12</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>2800</td><td class=td7>Mago</td></tr><tr><td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/688.gif" width="32" height="32"></td><td class=td7>Túnica Egregia de Mago Oscuro</td><td class=td7>15 / 20</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>9500</td><td class=td7>Mago</td></tr><tr><td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/770.gif" width="32" height="32"></td><td class=td7>Armadura Lóbrega (H/E/EO-M)</td><td class=td7>15 / 25</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Mujer</td><td class=td7>11830</td><td class=td7>Pirata, Pescador, Minero, Carpintero, Herrero, Cazador, Leñador, Guerrero, Paladín, Bandido, Ladrón y Asesino</td></tr><tr><td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/11113.gif" width="32" height="32"></td><td class=td7>Vestimenta Legionaria</td><td class=td7>1 / 3</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>175</td><td class=td7>Todas</td></tr><tr><td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/11114.gif" width="32" height="32"></td><td class=td7>Vestimenta Legionaria (E/G)</td><td class=td7>1 / 3</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>175</td><td class=td7>Todas</td></tr><tr><td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/11108.gif" width="32" height="32"></td><td class=td7>Armadura Lóbrega</td><td class=td7>15 / 25</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>11830</td><td class=td7>Pirata, Pescador, Minero, Carpintero, Herrero, Cazador, Leñador, Guerrero, Paladín, Bandido, Ladrón y Asesino</td></tr><tr><td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/11110.gif" width="32" height="32"></td><td class=td7>Armadura de Gran Sacerdote Demoníaco</td><td class=td7>15 / 22</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>9240</td><td class=td7>Bardo y 
Clérigo</td></tr><tr><td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/11109.gif" width="32" height="32"></td><td class=td7>Armadura Lóbrega (E/G)</td><td class=td7>15 / 25</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>11830</td><td class=td7>
	Cazador, Guerrero, Pirata,<br>
	Trabajador, Paladín, Asesino, Bandido y Ladrón.</td></tr><tr><td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/11107.gif" width="32" height="32"></td><td class=td7>Túnica Egregia de Mago Oscuro (E/G)</td><td class=td7>15 / 20</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>9500</td><td class=td7>Mago</td></tr><tr><td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/806.gif" width="32" height="32"></td><td class=td7>Túnica Avernal</td><td class=td7>30 / 35</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>18000</td><td class=td7>Todas menos Mago</td></tr><tr><td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/11116.gif" width="32" height="32"></td><td class=td7>Pequeña Túnica Avernal (E/G)</td><td class=td7>30 / 35</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>18000</td><td class=td7>Todas menos Mago</td></tr><tr><td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/11103.gif" width="32" height="32"></td><td class=td7>Armadura de Pequeño Pandemonium (E/G)</td><td class=td7>35 / 40</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>25060</td><td class=td7>Guerrero, Paladín, Bandido y 
Clérigo</td></tr><tr><td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/11102.gif" width="32" height="32"></td><td class=td7>Armadura Infame</td><td class=td7>35 / 40</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>25060</td><td class=td7>Guerrero, Paladín, Bandido y 
	Clérigo</td></tr>
</tbody>
</table>


<br><br>



<center><span class="size"><u>Escudos:</u></span></center><br>


<table align="center" width="95%">
<tr>
<td class="tdresaltar">IMAGEN</td>
<td class="tdresaltar">NOMBRE</td>
<td class="tdresaltar" width="9%">DEFENSA MIN/MAX</td>
<td class="tdresaltar">PRECIO</td>
<td class="tdresaltar">CLASES PERMITIDAS</td>
</tr>
<tr>
<td class="tdresaltar"><img src="imagenes/items/escudolegionario.png" width="32" height="32"></td>
<td class="td7">Escudo Legionario</td>
<td class="td7">1 / 1</td>
<td class="td7">350</td>
<td class="td7">Todas menos Mago, Druida, Ladrón y Pirata</td>
</tr>
<tr>
<td class="tdresaltar"><img src="imagenes/graficos/12042.gif" width="32" height="32"></td>
<td class="td7">Escudo Infernal</td>
<td class="td7">1 / 4</td>
<td class="td7">7800</td>
<td class="td7">Herrero, Cazador, Leñador, Guerrero, Paladín, Bandido y Clérigo</td>
</tr>
</table>
<br><br>
<span class="size"><center><u>Segundas Jerarquías:</u></center><br>
<br>
Las segundas jerarquías son reconocimientos otorgados a los faccionarios que han sabido cumplir fielmente su rol dentro de su status, protegiendo los valores de ésta y difundiendo los preceptos que todo miembro debería tener.
Las distinciones son otorgadas por el Concilio de las Sombras previo un análisis del candidato.<br><br>
</span><br>
<table align="center" width="95%">
<tr>
<td class="tdresaltar">IMAGEN</td>
<td class="tdresaltar">NOMBRE</td>
<td class="tdresaltar" width="70%">DESCRIPCION</td>
<td class="tdresaltar">CLASES PERMITIDAS</td>
</tr>
<tr>
<td class="tdresaltar"><img src="imagenes/graficos/3725.gif" width="32" height="32"></td>
<td class="td7">Cuerno de llamado Legionario</td>
<td class="td7">Con este objeto, quien lo posea podrá emitir un llamado de ayuda que será escuchado por todos sus compañeros de facción dento del mapa en que él se encuentre.
Este cuerno también es otorgado a los miembros temporales de las cúpulas (y obviamente también a los permanentes).</td>
<td class="td7">Todas</td>
</tr>
</table><br><br>

<center><span class="size"><u>Armaduras / Túnicas:</u></span> </center><br><br>

<table align="center" width="95%">

<thead>

<tr>
<th style="border:0;width:0px"></th>
<th class="tdresaltar">IMAGEN</th>
<th class="tdresaltar"><a href="#" onclick="this.blur(); return sortTable('armadurasarmadareal', 2, true);" title="Organizar">NOMBRE</a></th>
<th class="tdresaltar"><a href="#" onclick="this.blur(); return sortTable('armadurasarmadareal', 3, true);" title="Organizar">DEFENSA MIN/MAX</a></th>
<th class="tdresaltar"><a href="#" onclick="this.blur(); return sortTable('armadurasarmadareal', 4, true);" title="Organizar">RAZA</a></th>
<th class="tdresaltar"><a href="#" onclick="this.blur(); return sortTable('armadurasarmadareal', 5, true);" title="Organizar">GÉNERO</a></th>
<th class="tdresaltar"><a href="#" onclick="this.blur(); return sortTable('armadurasarmadareal', 7, true);" title="Organizar">CLASES PERMITIDAS</a></th>
</tr>

</thead>

<tbody id="armaduraslegionoscura">


<tr><td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/3881.bmp" width="32" height="32"></td><td class=td7>Túnica de Augur</td><td class=td7>35 / 35</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>Mago</td></tr><tr><td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/3865.bmp" width="32" height="32"></td><td class=td7>Armadura Ábate</td><td class=td7>40 / 40</td><td class=td7>Enano<br>Gnomo</td><td class=td7>Ambos</td><td class=td7>Clérigo</td></tr><tr><td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/3849.bmp" width="32" height="32"></td><td class=td7>Armadura de Sicario</td><td class=td7>35 / 35</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>Asesino</td></tr><tr><td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/3877.bmp" width="32" height="32"></td><td class=td7>Túnica Corsaria</td><td class=td7>30 / 30</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>Bandido</td></tr><tr><td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/3891.bmp" width="32" height="32"></td><td class=td7>Vestimenta Bucanera</td><td class=td7>37 / 37</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>Pirata</td></tr><tr><td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/3885.bmp" width="32" height="32"></td><td class=td7>Armadura Adalid</td><td class=td7>42 / 42</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>Paladín</td></tr><tr><td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/3861.bmp" width="32" height="32"></td><td class=td7>Armadura de Lobero</td><td class=td7>45 / 45</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>Cazador</td></tr><tr><td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/3859.bmp" width="32" height="32"></td><td class=td7>Túnica Juglar</td><td class=td7>35 / 35</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>Bardo</td></tr><tr><td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/3871.bmp" width="32" height="32"></td><td class=td7>Túnica Desbrava</td><td class=td7>32 / 32</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>Druida</td></tr><tr><td style=border:0;width:0px></td><td class=tdresaltar><img src="imagenes/graficos/3873.bmp" width="32" height="32"></td><td class=td7>Armadura Bélica</td><td class=td7>47 / 47</td><td class=td7>Humano<br>Elfo<br>Elfo Oscuro</td><td class=td7>Ambos</td><td class=td7>Guerrero</td></tr>
</tbody>
</table>


</td></tr></table><br><br>

<center><a href="herreria.php#ver">Anterior</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href="cascosyescudos.php#ver"> Siguiente</a></center>
<br><br><table class="titulo_seccion"><tr><td>---</td></tr></table><table class="volver_indice"><tr valign="middle"><td align="left">&nbsp;<a href="index.php">&lt;&lt;Ir al Índice del Manual</a></td><td align="right">&nbsp;</td></tr></table>

</td>
</tr>
</table>
</body>
