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

<table align="Center" class="body" width="1100px">
<tr>
<td>

<table class="titulo_seccion"><tr><td><a name="ver"></a>- Herrería -</td></tr></table><br><table width="98%" align="center"><tr><td><script type="text/javascript" src="dats/table_sort.js"></script>

<center>

<table border="0" align="center" width="75%"><tr>
<td><img src="imagenes/juego/pj_yunque.jpg" width="146" height="112"></td><td width="3%"></td>
<td align="left">
El oficio de la herrería sirve para construir items a base de lingotes, una vez que tengas un <span class="resaltarcmd">MARTILLO DE Trabajador</span> deberás equiparlo con <span class="resaltarcmd">TECLA EQUIPAR (E)</span>, luego buscar un yunque dentro de una herrería, presionar <span class="resaltarcmd">TECLA USAR (U o DOBLE CLICK)</span> y hacer click sobre el yunque, de esta forma se abrirá una ventana que mostrará el listado de items que el personaje podrá construir según la clase y puntos de habilidad en herrería.

<br><br><i><u>Temas Relacionados</u></i>: <a href="macrosycentinela.php?seccion=macros_centinela#ver" target="_blank">Sección: Macros y Centinela</a>
</td>
</tr></table>

</center>

<br><br><br>

Importante: Todos los ítems pueden construírse con 1 lingote especial de donante, salvo los que digan otra cantidad<br><br><br>

<table align="center" width="80%">

<thead>

<tr>
<th style="border:0;width:0px"></th>
<th class="tdresaltar">IMAGEN</th>
<th class="tdresaltar"><a href="#" onclick="this.blur(); return sortTable('herreria_armas', 2, true);" title="Organizar">ARMA/HERRAMIENTA</a></th>
<th class="tdresaltar" width="30%"><a href="#" onclick="this.blur(); return sortTable('herreria_armas', 3, true);" title="Organizar">LINGOTES REQUERIDOS</a><br><img src="imagenes/items/lingoh.gif" width="32" height="32" alt="Hierro"> / <img src="imagenes/items/lingop.gif" width="32" height="32" alt="Plata"> / <img src="imagenes/items/lingoo.gif" width="32" height="32" alt="Oro"></th>
<th class="tdresaltar"><a href="#" onclick="this.blur(); return sortTable('herreria_armas', 4, true);" title="Organizar">PUNTOS DE HABILIDAD REQUERIDOS EN HERRERÍA SEGÚN LA CLASE</a></th>
</tr>

</thead>

<tbody id="herreria_armas">


<tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/509.gif" width="32" height="32"></td><td class=td7>Daga</td><td class=td7>2 / 0 / 0</td><td class=td7><b>10 (Trabajador)</b><br>40 (Demás Clases)</td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/509.gif" width="32" height="32"></td><td class=td7>Daga Envenenada</td><td class=td7>5 / 0 / 0</td><td class=td7><b>10 (Trabajador)</b><br>40 (Demás Clases)</td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/509.gif" width="32" height="32"></td><td class=td7>Daga +1</td><td class=td7>7 / 0 / 0</td><td class=td7><b>15 (Trabajador)</b><br>60 (Demás Clases)</td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/710.gif" width="32" height="32"></td><td class=td7>Daga +2</td><td class=td7>28 / 0 / 0</td><td class=td7><b>35 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/711.gif" width="32" height="32"></td><td class=td7>Daga +3</td><td class=td7>38 / 3 / 0</td><td class=td7><b>50 (Trabajador)</b><br></td></tr><tr>
<td style="border:0;width:0px" height="36"></td><td class=tdresaltar>
<img src="imagenes/graficos/16089.gif" width="32" height="32"></td><td class=td7>Daga +4</td><td class=td7>50 / 3 / 0</td><td class=td7><b>75 (Trabajador)</b><br></td></tr><tr>
	<td style="border:0;width:0px" height="54">&nbsp;</td><td class=tdresaltar>
	<img src="imagenes/graficos/20008.gif" width="32" height="32"></td><td class=td7>
	Daga Aguzada</td><td class=td7>100 / 100 / 5</td><td class=td7><b>100 	(Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/594.gif" width="32" height="32"></td><td class=td7>Espada Corta</td><td class=td7>15 / 0 / 0</td><td class=td7><b>40 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/504.gif" width="32" height="32"></td><td class=td7>Espada Larga</td><td class=td7>3 / 0 / 0</td><td class=td7><b>25 (Trabajador)</b><br>100 (Demás Clases)</td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/504.gif" width="32" height="32"></td><td class=td7>Espada Dos Manos</td><td class=td7>16 / 0 / 0</td><td class=td7><b>20 (Trabajador)</b><br>80 (Demás Clases)</td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/507.gif" width="32" height="32"></td><td class=td7>Horquilla</td><td class=td7>1 / 0 / 0</td><td class=td7><b>10 (Trabajador)</b><br>40 (Demás Clases)</td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/505.gif" width="32" height="32"></td><td class=td7>Hacha</td><td class=td7>2 / 0 / 0</td><td class=td7><b>15 (Trabajador)</b><br>60 (Demás Clases)</td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/569.gif" width="32" height="32"></td><td class=td7>Sable</td><td class=td7>33 / 0 / 0</td><td class=td7><b>30 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/708.gif" width="32" height="32"></td><td class=td7>Martillo de Guerra</td><td class=td7>33 / 0 / 0</td><td class=td7><b>30 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/709.gif" width="32" height="32"></td><td class=td7>Cimitarra</td><td class=td7>150 / 20 / 0</td><td class=td7><b>59 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/567.gif" width="32" height="32"></td><td class=td7>Espada Vikinga</td><td class=td7>60 / 0 / 0</td><td class=td7><b>70 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/589.gif" width="32" height="32"></td><td class=td7>Hacha de Bárbaro</td><td class=td7>105 / 0 / 0</td><td class=td7><b>63 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/568.gif" width="32" height="32"></td><td class=td7>Katana</td><td class=td7>43 / 0 / 0</td><td class=td7><b>55 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/572.gif" width="32" height="32"></td><td class=td7>Hacha de Guerra Dos Filos</td><td class=td7>85 / 2 / 0</td><td class=td7><b>86 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/713.gif" width="32" height="32"></td><td class=td7>Espada de Plata</td><td class=td7>140 / 220 / 0</td><td class=td7><b>90 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45">&nbsp;</td><td class=tdresaltar><img src="imagenes/graficos/713.gif" width="32" height="32"></td><td class=td7>
Espada Mitrhil</td><td class=td7>140 /220 / 35</td><td class=td7><b>100 
(Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/570.gif" width="32" height="32"></td><td class=td7>Hacha Larga de Guerra</td><td class=td7>90 / 0 / 0</td><td class=td7><b>90 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/10007.gif" width="32" height="32"></td><td class=td7>Báculo Engarzado</td><td class=td7>100 / 50 / 0</td><td class=td7><b>85 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/715.gif" width="32" height="32"></td><td class=td7>Vara de Mago</td><td class=td7>50 / 100 / 200</td><td class=td7><b>90 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/items/espadanegra.bmp" width="32" height="32"></td><td class=td7>Espada Negra Mata Dragones</td><td class=td7>550 / 550 / 650 (ó 3 Lingotes de Donante)</td><td class=td7><b>100 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/616.gif" width="32" height="32"></td><td class=td7>Piquete de Minero</td><td class=td7>3 / 0 / 0</td><td class=td7><b>12 (Trabajador)</b><br>48 (Demás Clases)</td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/615.gif" width="32" height="32"></td><td class=td7>Serrucho</td><td class=td7>2 / 0 / 0</td><td class=td7><b>12 (Trabajador)</b><br>48 (Demás Clases)</td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/571.gif" width="32" height="32"></td><td class=td7>Hacha de Leñador</td><td class=td7>5 / 0 / 0</td><td class=td7><b>12 (Trabajador)</b><br>48 (Demás Clases)</td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/729.gif" width="32" height="32"></td><td class=td7>Martillo de Herrero</td><td class=td7>2 / 0 / 0</td><td class=td7><b>20 (Trabajador)</b><br>80 (Demás Clases)</td></tr>
</tbody>
</table>

<br><br><br>

<table align="center" width="80%">

<thead>

<tr>
<th style="border:0;width:0px"></th>
<th class="tdresaltar">IMAGEN</th>
<th class="tdresaltar"><a href="#" onclick="this.blur(); return sortTable('herreria_armaduras', 2, true);" title="Organizar">ARMADURA</a></th>
<th class="tdresaltar" width="30%"><a href="#" onclick="this.blur(); return sortTable('herreria_armaduras', 3, true);" title="Organizar">LINGOTES REQUERIDOS</a><br><img src="imagenes/items/lingoh.gif" width="32" height="32" alt="Hierro"> / <img src="imagenes/items/lingop.gif" width="32" height="32" alt="Plata"> / <img src="imagenes/items/lingoo.gif" width="32" height="32" alt="Oro"></th>
<th class="tdresaltar" width="372"><a href="#" onclick="this.blur(); return sortTable('herreria_armaduras', 4, true);" title="Organizar">PUNTOS DE HABILIDAD REQUERIDOS EN HERRERÍA SEGÚN LA CLASE</a></th>
</tr>

</thead>

<tbody id="herreria_armaduras">


<tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/565.gif" width="32" height="32"></td><td class=td7>Casco de Hierro</td><td class=td7>10 / 0 / 0</td>
	<td class=td7 width="372"><b>45 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/564.gif" width="32" height="32"></td><td class=td7>Casco de Hierro Completo</td><td class=td7>65 / 0 / 0</td>
	<td class=td7 width="372"><b>75 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/717.gif" width="32" height="32"></td><td class=td7>Casco de Plata</td><td class=td7>50 / 180 / 0</td>
	<td class=td7 width="372"><b>85 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45">&nbsp;</td><td class=tdresaltar>
	<img src="imagenes/items/cascooso.png" width="32" height="32"></td><td class=td7>
	Casco de Oso</td><td class=td7>100 / 50 / 0</td><td class=td7 width="372">
	<b>90 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45">&nbsp;</td><td class=tdresaltar>
	<img src="imagenes/graficos/18012.gif" width="32" height="32"></td><td class=td7>
	Casco de Tigre</td><td class=td7>100 / 100 / 10</td>
	<td class=td7 width="372"><b>80 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/712.gif" width="32" height="32"></td><td class=td7>Escudo de Tortuga</td><td class=td7>5 / 0 / 0</td>
	<td class=td7 width="372"><b>20 (Trabajador)</b><br>80 (Demás Clases)</td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/563.gif" width="32" height="32"></td><td class=td7>Escudo de Hierro</td><td class=td7>60 / 0 / 0</td>
	<td class=td7 width="372"><b>55 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/3.gif" width="32" height="32"></td><td class=td7>Escudo de Plata</td><td class=td7>80 / 50 / 0</td>
	<td class=td7 width="372"><b>85 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/566.gif" width="32" height="32"></td><td class=td7>Escudo Imperial</td><td class=td7>50 / 5 / 0</td>
	<td class=td7 width="372"><b>70 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/12042.gif" width="32" height="32"></td><td class=td7>Escudo Infernal</td><td class=td7>50 / 5 / 0</td>
	<td class=td7 width="372"><b>70 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/760.gif" width="32" height="32"></td><td class=td7>Manto de Noble</td><td class=td7>66 / 0 / 0</td>
	<td class=td7 width="372"><b>50 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/678.gif" width="32" height="32"></td><td class=td7>Cota de Mallas</td><td class=td7>105 / 0 / 0</td>
	<td class=td7 width="372"><b>65 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/775.gif" width="32" height="32"></td><td class=td7>Cota de Mallas (H/E/EO-M)</td><td class=td7>105 / 0 / 0</td>
	<td class=td7 width="372"><b>65 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/10022.gif" width="32" height="32"></td><td class=td7>Cota de Mallas (E/G)</td><td class=td7>105 / 0 / 0</td>
	<td class=td7 width="372"><b>65 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/999.gif" width="32" height="32"></td><td class=td7>Cota de Mallas Larga (E/G)</td><td class=td7>330 / 0 / 0</td>
	<td class=td7 width="372"><b>80 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/901.gif" width="32" height="32"></td><td class=td7>Armadura de Campeón (H/E/EO)</td><td class=td7>320 / 0 / 0</td>
	<td class=td7 width="372"><b>80 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/613.gif" width="32" height="32"></td><td class=td7>Armadura de Placas Completa</td><td class=td7>392 / 0 / 0</td>
	<td class=td7 width="372"><b>70 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/11021.gif" width="32" height="32"></td><td class=td7>Armadura de Placas Completa +1</td><td class=td7>505 / 0 / 0</td>
	<td class=td7 width="372"><b>85 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/11023.gif" width="32" height="32"></td><td class=td7>Armadura de Placas Completa +2</td><td class=td7>680 / 0 / 0</td>
	<td class=td7 width="372"><b>90 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/663.gif" width="32" height="32"></td><td class=td7>Armadura de Placas Completa (E/G)</td><td class=td7>392 / 0 / 0</td>
	<td class=td7 width="372"><b>70 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/11019.gif" width="32" height="32"></td><td class=td7>Armadura de Placas Completa +1 (E/G)</td><td class=td7>505 / 0 / 0</td>
	<td class=td7 width="372"><b>85 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/11017.gif" width="32" height="32"></td><td class=td7>Armadura de Placas Completa +2 (E/G)</td><td class=td7>680 / 0 / 0</td>
	<td class=td7 width="372"><b>90 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/769.gif" width="32" height="32"></td><td class=td7>Armadura de Placas Rojas (H/E/EO-M)</td><td class=td7>425 / 200 / 0</td>
	<td class=td7 width="372"><b>82 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/765.gif" width="32" height="32"></td><td class=td7>Armadura de Placas Azul</td><td class=td7>500 / 200 / 0</td>
	<td class=td7 width="372"><b>80 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/773.gif" width="32" height="32"></td><td class=td7>Armadura de Placas de Gala</td><td class=td7>600 / 122 / 0</td>
	<td class=td7 width="372"><b>85 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/779.gif" width="32" height="32"></td><td class=td7>Trampa Visual (H/E/EO-M)</td><td class=td7>360 / 0 / 0</td>
	<td class=td7 width="372"><b>80 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/930.gif" width="32" height="32"></td><td class=td7>Placas Combinadas (H/E/EO-M)</td><td class=td7>210 / 70 / 0</td>
	<td class=td7 width="372"><b>80 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/903.gif" width="32" height="32"></td><td class=td7>Suprema Armadura Dorada (H/E/EO)</td><td class=td7>150 / 50 / 100</td>
	<td class=td7 width="372"><b>85 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/676.gif" width="32" height="32"></td><td class=td7>Armadura de las Sombras</td><td class=td7>329 / 0 / 0</td>
	<td class=td7 width="372"><b>75 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/10032.gif" width="32" height="32"></td><td class=td7>Armadura de Elite (E/G)</td><td class=td7>314 / 0 / 0</td>
	<td class=td7 width="372"><b>75 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/776.gif" width="32" height="32"></td><td class=td7>Armadura Bruñida (E/G)</td><td class=td7>500 / 200 / 0</td>
	<td class=td7 width="372"><b>82 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/983.gif" width="32" height="32"></td><td class=td7>Armadura Pesada de Hierro y Bronce (E/G)</td><td class=td7>600 / 100 / 0</td>
	<td class=td7 width="372"><b>85 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/772.gif" width="32" height="32"></td><td class=td7>Armadura de la Ciénaga</td><td class=td7>650 / 200 / 0</td>
	<td class=td7 width="372"><b>90 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/771.gif" width="32" height="32"></td><td class=td7>Armadura Escarlata</td><td class=td7>800 / 250 / 0</td>
	<td class=td7 width="372"><b>100 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/812.gif" width="32" height="32"></td><td class=td7>Dama de las Tinieblas (H/E/EO-M)</td><td class=td7>1000 / 400 / 800 (ó 5 Lingotes de Donante)</td>
	<td class=td7 width="372"><b>100 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/761.gif" width="32" height="32"></td><td class=td7>Armadura Legendaria</td><td class=td7>1000 / 400 / 600 (ó 5 Lingotes de Donante)</td>
	<td class=td7 width="372"><b>100 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/756.gif" width="32" height="32"></td><td class=td7>Armadura de Dragón</td><td class=td7>1000 / 1000 / 1000 (ó 5 Lingotes de Donante)</td>
	<td class=td7 width="372"><b>100 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/757.gif" width="32" height="32"></td><td class=td7>Armadura de Dragón (H/E/EO-M)</td><td class=td7>1000 / 1000 / 1000 (ó 5 Lingotes de Donante)</td>
	<td class=td7 width="372"><b>100 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/758.gif" width="32" height="32"></td><td class=td7>Armadura de Dragón (E/G)</td><td class=td7>1000 / 1000 / 1000 (ó 5 Lingotes de Donante)</td>
	<td class=td7 width="372"><b>100 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/950.gif" width="32" height="32"></td><td class=td7>Manto del Dragón (H/E/EO)</td><td class=td7>1000/ 1100 / 1200 (ó 5 Lingotes de Donante)</td>
	<td class=td7 width="372"><b>100 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/12000.gif" width="32" height="32"></td><td class=td7>Anillo Mágico</td><td class=td7>50 / 0 / 0</td>
	<td class=td7 width="372"><b>50 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/12001.gif" width="32" height="32"></td><td class=td7>Anillo de Resistencia Mágica</td><td class=td7>50 / 50 / 0</td>
	<td class=td7 width="372"><b>75 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/12002.gif" width="32" height="32"></td><td class=td7>Anillo de Disolución Mágica</td><td class=td7>50 / 150 / 200</td>
	<td class=td7 width="372"><b>90 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/686.gif" width="32" height="32"></td><td class=td7>Armadura Real</td><td class=td7>43 / 0 / 0</td>
	<td class=td7 width="372"><b>35 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/768.gif" width="32" height="32"></td><td class=td7>Armadura Real (E/G)</td><td class=td7>43 / 0 / 0</td>
	<td class=td7 width="372"><b>35 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/11105.gif" width="32" height="32"></td><td class=td7>Armadura de Gran Sacerdote Imperial</td><td class=td7>132 / 0 / 0</td>
	<td class=td7 width="372"><b>70 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/797.gif" width="32" height="32"></td><td class=td7>Armadura de Gran Sacerdotisa Imperial (H/E/EO-M)</td><td class=td7>132 / 0 / 0</td>
	<td class=td7 width="372"><b>70 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/684.gif" width="32" height="32"></td><td class=td7>Armadura Nobilísima</td><td class=td7>169 / 0 / 0</td>
	<td class=td7 width="372"><b>70 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/11115.gif" width="32" height="32"></td><td class=td7>Armadura Nobilísima (E/G)</td><td class=td7>169 / 0 / 0</td>
	<td class=td7 width="372"><b>70 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/11101.gif" width="32" height="32"></td><td class=td7>Armadura de Ilustre Caballero</td><td class=td7>250 / 63 / 0</td>
	<td class=td7 width="372"><b>80 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/11100.gif" width="32" height="32"></td><td class=td7>Armadura de Ilustre Caballero (E/G)</td><td class=td7>250 / 63 / 0</td>
	<td class=td7 width="372"><b>80 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/810.gif" width="32" height="32"></td><td class=td7>Armadura Magna</td><td class=td7>250 / 63 / 0</td>
	<td class=td7 width="372"><b>80 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/810.gif" width="32" height="32"></td><td class=td7>Armadura Magna (H/E/EO-M)</td><td class=td7>250 / 70 / 0</td>
	<td class=td7 width="372"><b>80 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/687.gif" width="32" height="32"></td><td class=td7>Armadura Legionaria</td><td class=td7>43 / 0 / 0</td>
	<td class=td7 width="372"><b>35 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/691.gif" width="32" height="32"></td><td class=td7>Armadura Legionaria (E/G)</td><td class=td7>43 / 0 / 0</td>
	<td class=td7 width="372"><b>35 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/11110.gif" width="32" height="32"></td><td class=td7>Armadura de Gran Sacerdote Demoníaco</td><td class=td7>132 / 0 / 0</td>
	<td class=td7 width="372"><b>70 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/11108.gif" width="32" height="32"></td><td class=td7>Armadura Lóbrega</td><td class=td7>169 / 0 / 0</td>
	<td class=td7 width="372"><b>70 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/770.gif" width="32" height="32"></td><td class=td7>Armadura Lóbrega (H/E/EO-M)</td><td class=td7>169 / 0 / 0</td>
	<td class=td7 width="372"><b>70 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/11109.gif" width="32" height="32"></td><td class=td7>Armadura Lóbrega (E/G)</td><td class=td7>169 / 0 / 0</td>
	<td class=td7 width="372"><b>70 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/11103.gif" width="32" height="32"></td><td class=td7>Armadura de Pequeño Pandemonium (E/G)</td><td class=td7>250 / 63 / 0</td>
	<td class=td7 width="372"><b>80 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="45"></td><td class=tdresaltar><img src="imagenes/graficos/11102.gif" width="32" height="32"></td><td class=td7>Armadura Infame</td><td class=td7>250 / 63 / 0</td>
	<td class=td7 width="372"><b>80 (Trabajador)</b></td></tr>
</tbody>
</table></td></tr></table><br><br>

<center><a href="armaduras.php#ver">Anterior</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href="facciones.php#ver"> Siguiente</a></center>
<br><br><table class="titulo_seccion"><tr><td>---</td></tr></table><table class="volver_indice"><tr valign="middle"><td align="left">&nbsp;<a href="index.php">&lt;&lt;Ir al Índice del Manual</a></td><td align="right">&nbsp;</td></tr></table>
</td>
</tr>
</table>
</body>

