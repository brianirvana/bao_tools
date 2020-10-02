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
<table class="titulo_seccion"><tr><td><a name="ver"></a>- Criaturas Hostiles -</td></tr></table><br><table width="98%" align="center"><tr><td>El mundo de 
BenderAO está repleto de criaturas sedientas de sangre que no dudarán en atacarte, puedes informarte más sobre ellas observando esta tabla a continuación:<br><br>

<span class="resaltarcmd"><font size="2"><u>Aclaración sobre Niveles y Experiencias:</u></font></span> Al apretar la tecla "Q" se abre el mapa del juego donde podremos buscar cualquier npc que nostros querramos y ver su vida/xp/drops/zonas en las que se encuentra.<br>
(Para buscar tenes que seleccionar el mapa en el que quieras buscar 1/2 y se puede filtrar por npc o se puede buscar por drop especifico)<br><br>

<center><img src="imagenes/juego/LetraQ.png" width="400" height="400"></center>


<br><br>

<table align="center" width="98%">
<tr>
<td class="tdresaltar">IMAGEN</td>
<td class="tdresaltar" width="9%">NOMBRE</td>
<td class="tdresaltar" width="50">VIDA</td>
<td class="tdresaltar">DAÑO MIN/MAX<br>Y HECHIZOS</td>
<td class="tdresaltar" width="6%">PUNTE<br>RÍA</td>
<td class="tdresaltar" width="6%">EVA<br>SIÓN</td>
<td class="tdresaltar" width="6%">DEF<br>FÍSICA</td>
<td class="tdresaltar" width="6%">DEF<br>MÁGICA</td>
<td class="tdresaltar">RECOMPENSA</td>
<td class="tdresaltar" width="7%">EXP</td>
<td class="tdresaltar" width="7%">Nivel</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/hormiga.gif" width="29" height="19"></td>
<td class="td2">Hormiga Marabunta</td>
<td class="td2" width="48">5</td>
<td class="td2">1 / 1</td>
<td class="td2">5</td>
<td class="td2">10%</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2">-</td>
<td class="td2">2</td>
<td class="td2">25</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/gallo.gif" width="21" height="27"></td>
<td class="td2">Gallo Salvaje</td>
<td class="td2" width="48">15</td>
<td class="td2">1 / 1</td>
<td class="td2">3</td>
<td class="td2">3</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2">Pollo (1)</td>
<td class="td2">6</td>
<td class="td2">23</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/murcielago.gif" width="25" height="18"></td>
<td class="td2">Murciélago</td>
<td class="td2" width="48">10</td>
<td class="td2">1 / 1</td>
<td class="td2">15</td>
<td class="td2">10</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2"><br>Oro (8)<br>Curar Veneno (1)<br></td>
<td class="td2">1</td>
<td class="td2">15</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/serpiente.gif" width="24" height="23"></td>
<td class="td2">Serpiente</td>
<td class="td2" width="48">22</td>
<td class="td2">1 / 1</td>
<td class="td2">10</td>
<td class="td2">10</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2">Oro (12)<br>Dardo Alpha (1)<br>Curar Heridas Leves (1)</td>
<td class="td2">10</td>
<td class="td2">20</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/anfisbena.gif" width="13" height="17"></td>
<td class="td2">Serpiente de Dos Cabezas</td>
<td class="td2" width="48">210</td>
<td class="td2">1 / 5<br>(Mordida Venenosa)</td>
<td class="td2">100</td>
<td class="td2">25</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2">Oro (40)<br>Poción Violeta (5)</td>
<td class="td2">22</td>
<td class="td2">8</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/rata.gif" width="30" height="19"></td>
<td class="td2">Rata Salvaje</td>
<td class="td2" width="48">15</td>
<td class="td2">2 / 4</td>
<td class="td2">10</td>
<td class="td2">20</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2">-</td>
<td class="td2">10</td>
<td class="td2">30</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/escorpion.gif" width="21" height="21"></td>
<td class="td2">Escorpión</td>
<td class="td2" width="48">32</td>
<td class="td2">1 / 3 (Picadura Venenosa)</td>
<td class="td2">30</td>
<td class="td2">10</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2">Oro (16)<br>Curar Heridas Leves (1)<br>Curar Veneno (1)<br>Dardo Alpha (1)<br>Poción Violeta (5)<br></td>
<td class="td2">14</td>
<td class="td2">18</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/quark.gif" width="33" height="24"></td>
<td class="td2">Quark</td>
<td class="td2" width="48">2.500</td>
<td class="td2">4 / 100<br>(Paralizar)<br>(Tormenta de Fuego 35 / 45)<br>(Descarga Eléctrica 67 / 85)<br>(Apocalipsis 85 / 102)<br>(Turbación)<br>(Rayo 73 / 85)<br>(Antrax 98 / 103)</td>
<td class="td2">365</td>
<td class="td2">125</td>
<td class="td2">30</td>
<td class="td2">30</td>
<td class="td2">Oro (40000)</td>
<td class="td2">55.000</td>
<td class="td2">45</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/lobo.gif" width="55" height="34"></td>
<td class="td2">Lobo</td>
<td class="td2" width="48">75</td>
<td class="td2">1 / 18</td>
<td class="td2">80</td>
<td class="td2">35</td>
<td class="td2">8</td>
<td class="td2">2</td>
<td class="td2">Piel de Lobo (1)</td>
<td class="td2">33</td>
<td class="td2">25</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/goblin.gif" width="25" height="34"></td>
<td class="td2">Goblin</td>
<td class="td2" width="48">110</td>
<td class="td2">4 / 12</td>
<td class="td2">60</td>
<td class="td2">40</td>
<td class="td2">50</td>
<td class="td2">0</td>
<td class="td2">Oro (60)<br>Flecha Eléctrica (1)<br>Curar Veneno (1)<br>Curar Heridas Leves (1)</td>
<td class="td2">40</td>
<td class="td2">28</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/esqueleto.gif" width="21" height="50"></td>
<td class="td2">Esqueleto</td>
<td class="td2" width="48">50</td>
<td class="td2">1 / 8</td>
<td class="td2">30</td>
<td class="td2">35</td>
<td class="td2">10</td>
<td class="td2">0</td>
<td class="td2">Oro (32)</td>
<td class="td2">33</td>
<td class="td2">23</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/esqueleto_guerrero.gif" width="26" height="51"></td>
<td class="td2">Esqueleto Guerrero</td>
<td class="td2" width="48">150</td>
<td class="td2">8 / 18</td>
<td class="td2">60</td>
<td class="td2">50</td>
<td class="td2">19</td>
<td class="td2">0</td>
<td class="td2">Oro (140)<br>Celeridad (1)7%<br>Torpeza (1)7%<br>Flecha Mágica (1)9%<br>Fuerza (1)7%<br>Debilidad (1)7%<br>Invocación de Ultratumba (1)10%</td>
<td class="td2">99</td>
<td class="td2">23</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/duende.gif" width="26" height="34"></td>
<td class="td2">Duende</td>
<td class="td2" width="48">210</td>
<td class="td2">8 / 32</td>
<td class="td2">80</td>
<td class="td2">60</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2">Oro (92)</td>
<td class="td2">46</td>
<td class="td2">15</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/duende.gif" width="26" height="34"></td>
<td class="td2">Duende Mágico</td>
<td class="td2" width="48">310</td>
<td class="td2">2 / 10<br>(Curar Heridas Leves 1 / 7)</td>
<td class="td2">80</td>
<td class="td2">60</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2">Curar Heridas Leves (1)<br>Curar Heridas Graves (1)</td>
<td class="td2">68</td>
<td class="td2">25</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/bandido.gif" width="25" height="52"></td>
<td class="td2">Bandido</td>
<td class="td2" width="48">200</td>
<td class="td2">15 / 39</td>
<td class="td2">70</td>
<td class="td2">50</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2">Oro (200)</td>
<td class="td2">88</td>
<td class="td2">15</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/zombie.gif" width="22" height="51"></td>
<td class="td2">Zombie</td>
<td class="td2" width="48">250</td>
<td class="td2">4 / 12</td>
<td class="td2">100</td>
<td class="td2">20</td>
<td class="td2">20</td>
<td class="td2">15</td>
<td class="td2">Oro (84)</td>
<td class="td2">110</td>
<td class="td2">20</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/lord_zombie.gif" width="19" height="52"></td>
<td class="td2">Lord Zombie</td>
<td class="td2" width="48">350</td>
<td class="td2">10 / 25<br>(Mordida Venenosa)</td>
<td class="td2">150</td>
<td class="td2">55</td>
<td class="td2">30</td>
<td class="td2">5</td>
<td class="td2">Oro (220)<br>Casco de Hierro (1)<br>Espada Corta (1)<br>Curar Heridas Leves (1)<br>Flecha Eléctrica (1)<br>Misil Mágico (1)8%<br>Llamado Nigromante (1)<br>Poción Violeta (5)</td>
<td class="td2">154</td>
<td class="td2">26</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/cerdo.gif" width="42" height="24"></td>
<td class="td2">Cerdo Salvaje</td>
<td class="td2" width="48">45</td>
<td class="td2">3 / 5</td>
<td class="td2">10</td>
<td class="td2">15</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2">Chuleta (1)</td>
<td class="td2">10</td>
<td class="td2">10</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/vaca.gif" width="70" height="48"></td>
<td class="td2">Vaca Salvaje</td>
<td class="td2" width="48">65</td>
<td class="td2">2 / 5</td>
<td class="td2">25</td>
<td class="td2">15</td>
<td class="td2">2</td>
<td class="td2">0</td>
<td class="td2">Chuleta (1)</td>
<td class="td2">10</td>
<td class="td2">10</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/gorila.gif" width="41" height="72"></td>
<td class="td2">Gorila [Protector del Misil Mágico]</td>
<td class="td2" width="48">1000</td>
<td class="td2">10 / 70</td>
<td class="td2">160</td>
<td class="td2">70</td>
<td class="td2">10</td>
<td class="td2">5</td>
<td class="td2">Oro (540)<br>Misil Mágico (1)10%</td>
<td class="td2">440</td>
<td class="td2">15</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/ucorno.gif" width="80" height="80"></td>
<td class="td2">Árbol Encantado</td>
<td class="td2" width="48">1500</td>
<td class="td2">1 / 2<br>(Golpe Venenoso)</td>
<td class="td2">500</td>
<td class="td2">10</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2">Poción Violeta<br>Leña (200)<br>Oro (400)</td>
<td class="td2">1320</td>
<td class="td2">0</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/ucorno.gif" width="80" height="80"></td>
<td class="td2">Árbol de Jungla</td>
<td class="td2" width="48">1500</td>
<td class="td2">50 / 150<br>(Golpe Venenoso)</td>
<td class="td2">150</td>
<td class="td2">50</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2">Leña (10)</td>
<td class="td2">660</td>
<td class="td2">0</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/enth.gif" width="145" height="145"></td>
<td class="td2">Enth</td>
<td class="td2" width="48">1500</td>
<td class="td2">85 / 90</td>
<td class="td2">350</td>
<td class="td2">150</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2"><br>Oro (400)<br>Leña (50)<br>Poción Violeta (5)<br></td>
<td class="td2">1650</td>
<td class="td2">38</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/hormiga_gigante.gif" width="19" height="48"></td>
<td class="td2">Hormiga Gigante</td>
<td class="td2" width="48">550</td>
<td class="td2">1 / 30</td>
<td class="td2">350</td>
<td class="td2">5</td>
<td class="td2">5</td>
<td class="td2">0</td>
<td class="td2">Oro (1200)</td>
<td class="td2">242</td>
<td class="td2">25</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/unicornio.gif" width="76" height="59"></td>
<td class="td2">Unicornio</td>
<td class="td2" width="48">3500</td>
<td class="td2">55 / 145<br>(Descarga Eléctrica 67 / 85)</td>
<td class="td2">150</td>
<td class="td2">140</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2">Oro (6000)</td>
<td class="td2">8.470</td>
<td class="td2">45</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/orco.gif" width="21" height="46"></td>
<td class="td2">Orco</td>
<td class="td2" width="48">350</td>
<td class="td2">5 / 35</td>
<td class="td2">100</td>
<td class="td2">75</td>
<td class="td2">30</td>
<td class="td2">0</td>
<td class="td2">Oro (176)<br>Hacha (1)</td>
<td class="td2">231</td>
<td class="td2">32</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/tortuga.gif" width="61" height="41"></td>
<td class="td2">Tortuga Gigante</td>
<td class="td2" width="48">550</td>
<td class="td2">35 / 45</td>
<td class="td2">100</td>
<td class="td2">45</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2">Escudo de Tortuga (1)<br>Escudo de Hierro (1)2%</td>
<td class="td2">242</td>
<td class="td2">29</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/oso.gif" width="41" height="51"></td>
<td class="td2">Oso Pardo</td>
<td class="td2" width="48">600</td>
<td class="td2">65 / 100</td>
<td class="td2">250</td>
<td class="td2">65</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2">Piel de Oso Pardo (1)</td>
<td class="td2">264</td>
<td class="td2">32</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/oso_polar.gif" width="41" height="51"></td>
<td class="td2">Oso Polar</td>
<td class="td2" width="48">2600</td>
<td class="td2">65 / 200</td>
<td class="td2">250</td>
<td class="td2">65</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2">Oro (2000)<br>Piel de Oso Polar (1)</td>
<td class="td2">1.716</td>
<td class="td2">35</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/asesino.gif" width="27" height="55"></td>
<td class="td2">Asesino</td>
<td class="td2" width="48">850</td>
<td class="td2">15 / 139</td>
<td class="td2">200</td>
<td class="td2">200</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2">Oro (800)</td>
<td class="td2">748</td>
<td class="td2">26</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/anfisbena.gif" width="16" height="16"></td>
<td class="td2">Anfisbena</td>
<td class="td2" width="48">75</td>
<td class="td2">5 / 5</td>
<td class="td2">30</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2">-</td>
<td class="td2">33</td>
<td class="td2">18</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/ozesno.gif" width="27" height="46"></td>
<td class="td2">Osezno</td>
<td class="td2" width="48">400</td>
<td class="td2">55 / 70</td>
<td class="td2">230</td>
<td class="td2">60</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2">Piel de Oso Pardo (1)</td>
<td class="td2">176</td>
<td class="td2">29</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/licantropo.gif" width="29" height="53"></td>
<td class="td2">Hombre Lobo</td>
<td class="td2" width="48">700</td>
<td class="td2">35 / 95</td>
<td class="td2">180</td>
<td class="td2">55</td>
<td class="td2">8</td>
<td class="td2">0</td>
<td class="td2">Oro (320)<br>Espada Corta (1)<br>Espada dos Manos (1)<br>Espada Larga (1)<br>Hacha (1)<br>Llamado a la Naturaleza (1)5%</td>
<td class="td2">539</td>
<td class="td2">24</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/tarantula.gif" width="48" height="40"></td>
<td class="td2">Tarántula</td>
<td class="td2" width="48">1200</td>
<td class="td2">75 / 100<br>(Mordida Venenosa)</td>
<td class="td2">150</td>
<td class="td2">70</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2">Oro (900)<br>Curar Veneno (1)<br>Poción Violeta (5)</td>
<td class="td2">2.904</td>
<td class="td2">38</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/arania_pollito.gif" width="48" height="40"></td>
<td class="td2">Araña Pollito Gigante</td>
<td class="td2" width="48">1800</td>
<td class="td2">75 / 150<br>(Mordida Venenosa)</td>
<td class="td2">150</td>
<td class="td2">70</td>
<td class="td2">10</td>
<td class="td2">0</td>
<td class="td2">Oro (1500)<br>Poción Violeta (5)</td>
<td class="td2">5.148</td>
<td class="td2">40</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/arania_gigante.gif" width="57" height="35"></td>
<td class="td2">Araña Gigante</td>
<td class="td2" width="48">1000</td>
<td class="td2">75 / 100<br>(Mordida Venenosa)</td>
<td class="td2">150</td>
<td class="td2">85</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2">Oro (712)<br>Toxina (1)<br>Flecha Eléctrica (1)<br>Misil Mágico (1)4%<br>Poción Violeta (5)</td>
<td class="td2">880</td>
<td class="td2">27</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/gusano.gif" width="27" height="21"></td>
<td class="td2">Gusano de Arena</td>
<td class="td2" width="48">1100</td>
<td class="td2">75 / 100</td>
<td class="td2">150</td>
<td class="td2">70</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2">Oro (872)</td>
<td class="td2">484</td>
<td class="td2">25</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/murlock.jpg" width="68" height="68"></td>
<td class="td2">Murlock</td>
<td class="td2" width="48">45000</td>
<td class="td2">50 / 400<br>(Paralizar)<br>(Misil Mágico 35 / 40)<br>(Tormenta de Fuego 35 / 45)<br>(Descarga Eléctrica 67 / 85)<br>(Rayo 73 / 85)<br>Apocalipsis 85 / 102)<br>(Antrax 98 / 103)<br>(Turbación)<br>(Terrible hambre de Igôr)</td>
<td class="td2">350</td>
<td class="td2">300</td>
<td class="td2">10</td>
<td class="td2">0</td>
<td class="td2">Oro (20000)<br>Resucitar (1)75%<br>Tormenta de Fuego (1)65%</td>
<td class="td2">19.800</td>
<td class="td2">0</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/ladyjeffer.jpg" width="68" height="68"></td>
<td class="td2">Lady Jeffer</td>
<td class="td2" width="48">45000</td>
<td class="td2">50 / 400<br>(Paralizar)<br>(Misil Mágico 35 / 40)<br>(Tormenta de Fuego 35 / 45)<br>(Descarga Eléctrica 67 / 85)<br>(Rayo 73 / 85)<br>Apocalipsis 85 / 102)<br>(Antrax 98 / 103)<br>(Turbación)<br>(Terrible hambre de Igôr)</td>
<td class="td2">350</td>
<td class="td2">300</td>
<td class="td2">10</td>
<td class="td2">0</td>
<td class="td2">Oro (20000)<br>Apocalipsis (1)70%<br>Descarga Eléctrica (1)65%</td>
<td class="td2">9.990</td>
<td class="td2">0</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/nuker.jpg" width="68" height="68"></td>
<td class="td2">Nuker</td>
<td class="td2" width="48">45000</td>
<td class="td2">50 / 400<br>(Paralizar)<br>(Misil Mágico 35 / 40)<br>(Tormenta de Fuego 35 / 45)<br>(Descarga Eléctrica 67 / 85)<br>(Rayo 73 / 85)<br>Apocalipsis 85 / 102)<br>(Antrax 98 / 103)<br>(Turbación)<br>(Terrible hambre de Igôr)</td>
<td class="td2">350</td>
<td class="td2">300</td>
<td class="td2">10</td>
<td class="td2">0</td>
<td class="td2">Oro (20000)</td>
<td class="td2">19.800</td>
<td class="td2">0</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/shandler.jpg" width="68" height="68"></td>
<td class="td2">Shandler</td>
<td class="td2" width="48">45000</td>
<td class="td2">50 / 400<br>(Paralizar)<br>(Misil Mágico 35 / 40)<br>(Tormenta de Fuego 35 / 45)<br>(Descarga Eléctrica 67 / 85)<br>(Rayo 73 / 85)<br>Apocalipsis 85 / 102)<br>(Antrax 98 / 103)<br>(Turbación)<br>(Terrible hambre de Igôr)</td>
<td class="td2">350</td>
<td class="td2">300</td>
<td class="td2">10</td>
<td class="td2">0</td>
<td class="td2">Oro (20000)<br>Antrax (1)65%<br>Rayo (1)65%</td>
<td class="td2">9.900</td>
<td class="td2">0</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/cosainvisible.gif" width="27" height="21"></td>
<td class="td2">No ves nada interesante (Merodeador Invisible)</td>
<td class="td2" width="48">15000</td>
<td class="td2">120 / 350<br>(Apocalipsis NPC 175 / 200)<br>(Ira de Dios 132 / 220)<br>(Inmunidad a Parálisis)</td>
<td class="td2">450</td>
<td class="td2">200</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2">Oro (2000)<br>Invisibilidad (1)40%<br>Inmovilizar (1)25%<br>Poción Roja (250)<br>Poción Azul (350)</td>
<td class="td2">3.300</td>
<td class="td2">0</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/gorila_polar.gif" width="41" height="72"></td>
<td class="td2">Gorila Polar</td>
<td class="td2" width="48">2350</td>
<td class="td2">90 / 130</td>
<td class="td2">160</td>
<td class="td2">70</td>
<td class="td2">10</td>
<td class="td2">10</td>
<td class="td2">Oro (1600)</td>
<td class="td2">4.653</td>
<td class="td2">42</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/cospicua.jpg" width="68" height="68"></td>
<td class="td2">Cospicua</td>
<td class="td2" width="48">3600</td>
<td class="td2">65 / 180<br>(Tormenta de Fuego 35 / 45)<br>(Descarga Eléctrica 67 / 85)</td>
<td class="td2">250</td>
<td class="td2">65</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2">Oro (2000)</td>
<td class="td2">7.128</td>
<td class="td2">43</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/avepronfundidades.gif" width="84" height="61"></td>
<td class="td2">Ave de las Profundidades*</td>
<td class="td2" width="48">200</td>
<td class="td2">120 / 180<br>(Remover Invisibilidad)</td>
<td class="td2">999</td>
<td class="td2">250</td>
<td class="td2">50</td>
<td class="td2">0</td>
<td class="td2">Oro (800)</td>
<td class="td2">4200</td>
<td class="td2">50</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/guardiandragon.gif" width="45" height="46"></td>
<td class="td2">Guardián de las Profundidades</td>
<td class="td2" width="48">3500</td>
<td class="td2">70 / 50<br>(Inmune a Parálisis)</td>
<td class="td2">200</td>
<td class="td2">150</td>
<td class="td2">0</td>
<td class="td2">100</td>
<td class="td2">Oro (1000)</td>
<td class="td2">3.850</td>
<td class="td2">33</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/guardiandragon.gif" width="45" height="46"></td>
<td class="td2">Dragón de las Profundidades</td>
<td class="td2" width="48">2000</td>
<td class="td2">90 / 150<br>(Paralizar)<br>(Tormenta de Fuego 35 / 45)</td>
<td class="td2">300</td>
<td class="td2">250</td>
<td class="td2">50</td>
<td class="td2">0</td>
<td class="td2">Oro (600)<br>Poción Violeta (5)<br>Amuleto de Dragón de Agua (1)75%</td>
<td class="td2">2.200</td>
<td class="td2">33</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/espiritu_guardian.gif" width="58" height="67"></td>
<td class="td2">Djinn de Viento</td>
<td class="td2" width="48">4200</td>
<td class="td2">75 / 140<br>(Paralizar)<br>(Descarga Eléctrica 67 / 85)</td>
<td class="td2">200</td>
<td class="td2">250</td>
<td class="td2">45</td>
<td class="td2">0</td>
<td class="td2">Oro (4800)</td>
<td class="td2">3.696</td>
<td class="td2">35</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/ciclope.gif" width="47" height="82"></td>
<td class="td2">Ogro Egipcio</td>
<td class="td2" width="48">3250</td>
<td class="td2">70 / 190</td>
<td class="td2">200</td>
<td class="td2">150</td>
<td class="td2">10</td>
<td class="td2">15</td>
<td class="td2">Oro (1400)<br>Garrote (1)</td>
<td class="td2">2.145</td>
<td class="td2">24</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/ogro.gif" width="58" height="95"></td>
<td class="td2">Ogro</td>
<td class="td2" width="48">2250</td>
<td class="td2">88 / 232</td>
<td class="td2">260</td>
<td class="td2">230</td>
<td class="td2">10</td>
<td class="td2">0</td>
<td class="td2">Oro (1568)<br>Garrote (1)</td>
<td class="td2">1.980</td>
<td class="td2">24</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/beholder.gif" width="59" height="53"></td>
<td class="td2">Beholder</td>
<td class="td2" width="48">1000</td>
<td class="td2">45 / 300</td>
<td class="td2">350</td>
<td class="td2">200</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2">Oro (1440)</td>
<td class="td2">990</td>
<td class="td2">30</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/engendro_de_las_profundidades.jpg" width="60" height="60"></td>
<td class="td2">Engendro de las Profundidades</td>
<td class="td2" width="48">550</td>
<td class="td2">35 / 35</td>
<td class="td2">100</td>
<td class="td2">45</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2">Oro (300)</td>
<td class="td2">363</td>
<td class="td2">27</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/orco_brujo.gif" width="15" height="48"></td>
<td class="td2">Orco Brujo</td>
<td class="td2" width="48">1000</td>
<td class="td2">75 / 150<br>(Misil Mágico 35 / 40)</td>
<td class="td2">200</td>
<td class="td2">160</td>
<td class="td2">30</td>
<td class="td2">0</td>
<td class="td2">Oro (2000)</td>
<td class="td2">1.540</td>
<td class="td2">38</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/lord_orco.gif" width="19" height="59"></td>
<td class="td2">Lord Orco</td>
<td class="td2" width="48">1250</td>
<td class="td2">100 / 200</td>
<td class="td2">170</td>
<td class="td2">100</td>
<td class="td2">30</td>
<td class="td2">0</td>
<td class="td2">Oro (1200)<br>Inmovilizar (1)12%<br>Casco de Hierro Completo (1)3%<br>Escudo de Hierro (1)3%<br>Poción Roja (250)<br>Poción Azul (250)<br>Poción Amarilla (50)<br>Poción Verde (50)</td>
<td class="td2">1.925</td>
<td class="td2">35</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/liche.gif" width="25" height="50"></td>
<td class="td2">Liche</td>
<td class="td2" width="48">1000</td>
<td class="td2">120 / 250</td>
<td class="td2">220</td>
<td class="td2">190</td>
<td class="td2">30</td>
<td class="td2">0</td>
<td class="td2">Oro (1400)</td>
<td class="td2">1210</td>
<td class="td2">30</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/mago_malvado.gif" width="24" height="45"></td>
<td class="td2">Mago Malvado</td>
<td class="td2" width="48">1500</td>
<td class="td2">75 / 126<br>(Misil Mágico 35 / 40)<br>(Paralizar)<br>(Tormenta de Fuego 35 / 45)</td>
<td class="td2">200</td>
<td class="td2">150</td>
<td class="td2">30</td>
<td class="td2">0</td>
<td class="td2">Oro (1320)<br>Tormenta de Fuego (1)18%<br>Paralizar (1)8%<br>Remover Parálisis (1)9%<br>Bastón Nudoso (1)2%<br>Sombrero de Mago (1)<br>Túnica Roja Especial E / G (1)<br>Poción Roja (100)<br>Poción Azul (100)</td>
<td class="td2">1.815</td>
<td class="td2">33</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/bruja.gif" width="22" height="56"></td>
<td class="td2">Bruja</td>
<td class="td2" width="48">3200</td>
<td class="td2">75 / 140<br>(Misil Mágico 35 / 40)<br>(Paralizar)<br>(Tormenta de Fuego 35 / 45)</td>
<td class="td2">200</td>
<td class="td2">250</td>
<td class="td2">30</td>
<td class="td2">0</td>
<td class="td2">Oro (2000)</td>
<td class="td2">4.224</td>
<td class="td2">43</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/medusa.gif" width="51" height="73"></td>
<td class="td2">Medusa [Protectora del Dungeon]</td>
<td class="td2" width="48">16500</td>
<td class="td2">165 / 285<br>(Descarga Eléctrica NPC 90 / 130)<br>(Paralizar)<br>(Inmune a Parálisis)<br>(Remover Invisibilidad)</td>
<td class="td2">320</td>
<td class="td2">260</td>
<td class="td2">50</td>
<td class="td2">25</td>
<td class="td2">Oro (440)<br>Paralizar (1)<br>Remover Parálisis (1)<br>Tormenta de Fuego (1)<br>Misil Mágico (1)<br>Báculo Engarzado (1)<br>Flauta Élfica (1)<br>Laúd Mágico (1)<br>Túnica Legendaria (1)<br>Hacha de Guerra Dos Filos (1)<br>Escudo de Plata (1)<br>Casco de Hierro Completo (1)<br>Daga +4 (1)</td>
<td class="td2">72.600</td>
<td class="td2">40</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/medusa.gif" width="51" height="73"></td>
<td class="td2">Medusa</td>
<td class="td2" width="48">6500</td>
<td class="td2">125 / 215<br>(Tormenta de Fuego 35 / 45)<br>(Descarga Eléctrica 67 / 85)<br>(Paralizar)<br>(Antrax 98 / 103)<br>(Rayo 73 / 85)</td>
<td class="td2">220</td>
<td class="td2">160</td>
<td class="td2">20</td>
<td class="td2">0</td>
<td class="td2">Oro (3000)<br>Poción Roja (150)<br>Poción Azul (150)<br>Poción Amarilla (50)</td>
<td class="td2">15.730</td>
<td class="td2">39</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/medusaroja.gif" width="51" height="73"></td>
<td class="td2">Medusa Roja</td>
<td class="td2" width="48">8900</td>
<td class="td2">205 / 260<br>(Tormenta de Fuego NPC 35 / 45)<br>(Descarga Eléctrica 67 / 85)<br>(Paralizar)<br>(Antrax 98 / 103)<br>(Rayo 73 / 85)</td>
<td class="td2">420</td>
<td class="td2">270</td>
<td class="td2">20</td>
<td class="td2">0</td>
<td class="td2">Oro (3000)<br>Poción Roja (150)<br>Poción Azul (150)<br>Poción Amarilla (50)</td>
<td class="td2">19.140</td>
<td class="td2">40</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/tiburonblanco.gif" width="94" height="33"></td>
<td class="td2">Tiburón Blanco</td>
<td class="td2" width="48">800</td>
<td class="td2">75 / 110</td>
<td class="td2">200</td>
<td class="td2">70</td>
<td class="td2">15</td>
<td class="td2">0</td>
<td class="td2">Oro (600)</td>
<td class="td2">528</td>
<td class="td2">41</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/leviatan.gif" width="94" height="33"></td>
<td class="td2">Leviathan</td>
<td class="td2" width="48">6400</td>
<td class="td2">60 / 250</td>
<td class="td2">220</td>
<td class="td2">180</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2">Oro (2000)</td>
<td class="td2">14.080</td>
<td class="td2">40</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/galeon_pirata.gif" width="88" height="66"></td>
<td class="td2">Galeón Pirata</td>
<td class="td2" width="48">5400</td>
<td class="td2">200 / 250</td>
<td class="td2">400</td>
<td class="td2">150</td>
<td class="td2">15</td>
<td class="td2">0</td>
<td class="td2">-</td>
<td class="td2">2.376</td>
<td class="td2">28</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/galeon_fantasmal.gif" width="94" height="65"></td>
<td class="td2">Galeón Fantasmal</td>
<td class="td2" width="48">3000</td>
<td class="td2">150 / 350<br>(Tormenta de Fuego 35 / 45)</td>
<td class="td2">300</td>
<td class="td2">450</td>
<td class="td2">50</td>
<td class="td2">0</td>
<td class="td2">-</td>
<td class="td2">1.980</td>
<td class="td2">30</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/capitanpirata.gif" width="40" height="70"></td>
<td class="td2">Capitán Pirata</td>
<td class="td2" width="48">3500</td>
<td class="td2">130 / 250<br>(Turbación)</td>
<td class="td2">220</td>
<td class="td2">190</td>
<td class="td2">35</td>
<td class="td2">0</td>
<td class="td2">Oro (1400)</td>
<td class="td2">3.850</td>
<td class="td2">39</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/cocodrilo_marino.jpg" width="140" height="75"></td>
<td class="td2">Cocodrilo Marino</td>
<td class="td2" width="48">2800</td>
<td class="td2">75 / 150</td>
<td class="td2">195</td>
<td class="td2">100</td>
<td class="td2">10</td>
<td class="td2">0</td>
<td class="td2">Oro (1020)</td>
<td class="td2">1848</td>
<td class="td2">43</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/senescal.gif" width="70" height="66"></td>
<td class="td2">Senescal [Gran Castillo]</td>
<td class="td2" width="48">50000</td>
<td class="td2">230 / 250<br>(Inmovilizar)<br>(Descarga Eléctrica NPC 90 / 130)<br>(Apocalipsis NPC 175 / 200)<br>(Flecha NPC 180 / 250)<br>(Inmune a Parálisis)</td>
<td class="td2">200</td>
<td class="td2">250</td>
<td class="td2">30</td>
<td class="td2">0</td>
<td class="td2">Oro (20000)<br>Túnica del Castillo Benderiano (1)<br>Espada de Plata (1)</td>
<td class="td2">3.300</td>
<td class="td2">0</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/golem.gif" width="52" height="69"></td>
<td class="td2">Golem de Piedra</td>
<td class="td2" width="48">40000</td>
<td class="td2">300 / 400</td>
<td class="td2">220</td>
<td class="td2">50</td>
<td class="td2">30</td>
<td class="td2">0</td>
<td class="td2">Oro (10000)<br>Escudo de Hierro (1)3%<br>Casco de Hierro Completo (1)3%<br>Poción Roja (250)<br>Poción Azul (250)<br>Poción Amarilla (50)<br>Poción Verde (50)</td>
<td class="td2">26.400</td>
<td class="td2">28</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/golemdehielo.gif" width="66" height="75"></td>
<td class="td2">Golem de Hielo</td>
<td class="td2" width="48">42000</td>
<td class="td2">100 / 400</td>
<td class="td2">250</td>
<td class="td2">50</td>
<td class="td2">50</td>
<td class="td2">0</td>
<td class="td2">Oro (8000)<br>Escudo de Plata (1)4%<br>Casco de Hierro Completo (1)4%<br>Poción Roja (250)<br>Poción Amarilla (100)<br>Poción Verde (50)<br>Armadura Bruñida (1)4%<br>Armadura de Placas Completa +1 (1)4%<br>Hacha de Guerra Dos Filos (1)4%<br>Espada de Plata (1)4%<br>Arco Engarzado (1)4%<br>Flecha (350)<br>Daga +3 (1)4%</td>
<td class="td2">203.280</td>
<td class="td2">46</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/dragone_negro.jpg" height="80" width="96"></td>
<td class="td2">Gran Dragón Negro Continental</td>
<td class="td2" width="48">200000</td>
<td class="td2">1000 / 5000<br>(Tormenta de Fuego 35 / 45)<br>(Apocalipsis 85 / 102)<br>(Invocar Dragones)<br>
<font color="#FF0000">(Inmune a paralizar)</font></td>
<td class="td2">400</td>
<td class="td2">1000</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2">Oro (40000)<br>Minerales de Oro (1500)1%<br>Armadura de Dragón (1)1%<br>Armadura de Dragón E / G (1)1%<br>Armadura de Dragón H / E / EO - M (1)1%</td>
<td class="td2">220.000</td>
<td class="td2">42</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/dragone_negro.jpg" height="80" width="96"></td>
<td class="td2">El Gran Dragón Negro de Lava</td>
<td class="td2" width="48">200000</td>
<td class="td2">1000 / 5000<br>(Descarga eléctrica NPC 90 / 130)<br>(Apocalipsis 175 / 200)<br>Tormenta de Fuego 35 / 45)<br>(Remover Invisibilidad)<br>(Invocar Dragones)<br>
<font color="#FF0000">(Inmune a paralizar)</font></td>
<td class="td2">400</td>
<td class="td2">1000</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2">Oro (20000)<br>Armadura de Dragón (1)1%<br>Armadura de Dragón E / G (1)1%<br>Armadura de Dragón H / E / EO - M (1)1%</td>
<td class="td2">600.000</td>
<td class="td2">45</td>
</tr>


<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/ashkaroth.gif" width="41" height="65"></td>
<td class="td2">Astaroth</td>
<td class="td2" width="48">6400</td>
<td class="td2">120 / 220<br>(Misil Mágico 35 / 40)<br>(Paralizar)<br>(Tormenta de Fuego 35 / 45)</td>
<td class="td2">200</td>
<td class="td2">120</td>
<td class="td2">30</td>
<td class="td2">30</td>
<td class="td2">Oro (2600)</td>
<td class="td2">14.080</td>
<td class="td2">45</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/decapitadoimpuro.gif" width="22" height="51"></td>
<td class="td2">Decapitado Impuro</td>
<td class="td2" width="48">10000</td>
<td class="td2">110 / 240<br>(Flecha 40 / 60)</td>
<td class="td2">275</td>
<td class="td2">230</td>
<td class="td2">30</td>
<td class="td2">30</td>
<td class="td2">Oro (40000)<br>Poción Roja (150)<br>Poción Azul (150)<br>Poción Amarilla (50)<br>Poción Verde (50)</td>
<td class="td2">2.200</td>
<td class="td2">0</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/elementaldeaguaanciano.gif" width="119" height="119"></td>
<td class="td2">Elemental de Agua Anciano</td>
<td class="td2" width="48">8000</td>
<td class="td2">150 / 250</td>
<td class="td2">250</td>
<td class="td2">250</td>
<td class="td2">30</td>
<td class="td2">30</td>
<td class="td2">Oro (10000)<br>Invocar Elemental de Agua (1)40%</td>
<td class="td2">3.520</td>
<td class="td2">0</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/elemental_fuego_anciano.gif" width="41" height="65"></td>
<td class="td2">Elemental de Fuego Anciano</td>
<td class="td2" width="48">8000</td>
<td class="td2">75 / 140<br>(Tormenta de Fuego 35 / 45)<br>(Apocalipsis 85 / 102)<br>(Inmune a Parálisis)</td>
<td class="td2">250</td>
<td class="td2">250</td>
<td class="td2">30</td>
<td class="td2">0</td>
<td class="td2">Oro (10000)<br>Invocar Elemental de Fuego (1)12%</td>
<td class="td2">3.520</td>
<td class="td2">0</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/dragon_rojo.gif" width="72" height="39"></td>
<td class="td2">Dragón Rojo Infernal</td>
<td class="td2" width="48">5000</td>
<td class="td2">250 / 300<br>(Golpe Preciso)</td>
<td class="td2">380</td>
<td class="td2">250</td>
<td class="td2">50</td>
<td class="td2">0</td>
<td class="td2">Oro (800)</td>
<td class="td2">1000</td>
<td class="td2">32</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/demonio.gif" width="51" height="72"></td>
<td class="td2">Demonio</td>
<td class="td2" width="48">15000</td>
<td class="td2">75 / 350</td>
<td class="td2">230</td>
<td class="td2">220</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2">Oro (64000)</td>
<td class="td2">4.950</td>
<td class="td2">0</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/impugredelodo.gif" width="127" height="161"></td>
<td class="td2">Impugre de Lodo</td>
<td class="td2" width="48">4000</td>
<td class="td2">95 / 150</td>
<td class="td2">180</td>
<td class="td2">90</td>
<td class="td2">10</td>
<td class="td2">10</td>
<td class="td2">Oro (2140)</td>
<td class="td2">6.160</td>
<td class="td2">27</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/impugredebarro.gif" width="105" height="105"></td>
<td class="td2">Impugre de Barro</td>
<td class="td2" width="48">3500</td>
<td class="td2">95 / 185</td>
<td class="td2">180</td>
<td class="td2">150</td>
<td class="td2">10</td>
<td class="td2">10</td>
<td class="td2">Oro (2000)<br>Poción Roja (250)<br>Poción Azul (250)<br>Poción Amarilla (50)<br>Poción Verde (50)</td>
<td class="td2">5.390</td>
<td class="td2">28</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/anubis.jpg" width="96" height="80"></td>
<td class="td2">Anubis</td>
<td class="td2" width="48">4000</td>
<td class="td2">70 / 190</td>
<td class="td2">200</td>
<td class="td2">150</td>
<td class="td2">15</td>
<td class="td2">0</td>
<td class="td2">Oro (1800)<br>Espada Vikinga (1)<br>Casco de Hierro Completo (1)7%<br>Bastón Nudoso (1)<br>Paralizar (1)4%<br>Remover Parálisis (1)5%<br>Descarga Eléctrica (1)3%</td>
<td class="td2">7.040</td>
<td class="td2">30</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/momiagigante.jpg" width="96" height="80"></td>
<td class="td2">Momia Pequeña Protectora</td>
<td class="td2" width="48">4050</td>
<td class="td2">70 / 190</td>
<td class="td2">200</td>
<td class="td2">150</td>
<td class="td2">15</td>
<td class="td2">0</td>
<td class="td2">Oro (1000)<br>Espada Vikinga (1)<br>Casco de Hierro Completo (1)7%<br>Bastón Nudoso (1)<br>Paralizar (1)4%<br>Remover Parálisis (1)5%<br>Descarga Eléctrica (1)3%</td>
<td class="td2">7.128</td>
<td class="td2">30</td>
</tr>


<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/momiablanca.jpg" width="96" height="80"></td>
<td class="td2">Momia Gigante</td>
<td class="td2" width="48">4950</td>
<td class="td2">70 / 190</td>
<td class="td2">200</td>
<td class="td2">150</td>
<td class="td2">15</td>
<td class="td2">0</td>
<td class="td2">Oro (1800)<br>Espada Vikinga (1)<br>Casco de Hierro Completo (1)7%</td>
<td class="td2">8.712</td>
<td class="td2">30</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/graficos/momiaespada.jpg" width="96" height="80"></td>
<td class="td2">Guardián de Tutankamon</td>
<td class="td2" width="48">5850</td>
<td class="td2">70 / 190</td>
<td class="td2">200</td>
<td class="td2">150</td>
<td class="td2">10</td>
<td class="td2">0</td>
<td class="td2">Oro (2600)<br>Espada Vikinga (1)<br>Casco de Hierro Completo (1)7%<br>Bastón Nudoso (1)<br>Paralizar (1)4%<br>Remover Parálisis (1)5%<br>Descarga Eléctrica (1)3%</td>
<td class="td2">10.940</td>
<td class="td2">31</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/tutankamono.gif" width="96" height="80"></td>
<td class="td2">Tutankamon</td>
<td class="td2" width="48">3550</td>
<td class="td2">70 / 190</td>
<td class="td2">200</td>
<td class="td2">150</td>
<td class="td2">10</td>
<td class="td2">0</td>
<td class="td2">Oro (1800)<br>Espada Vikinga (1)<br>Casco de Hierro Completo (1)7%<br>Bastón Nudoso (1)<br>Paralizar (1)4%<br>Remover Parálisis (1)5%<br>Descarga Eléctrica (1)3%</td>
<td class="td2">7.029</td>
<td class="td2">30</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/golem_infernal.gif" width="52" height="69"></td>
<td class="td2">Golem de Lava</td>
<td class="td2" width="48">32800</td>
<td class="td2">280 / 475<br>(Inmune a Parálisis)</td>
<td class="td2">320</td>
<td class="td2">140</td>
<td class="td2">5</td>
<td class="td2">0</td>
<td class="td2">Oro (1360)<br>Hacha de Guerra Dos Filos (1)1%<br>Escudo de Plata (1)1%<br>Casco de Hierro Completo (1)1%<br>Poción Roja (150)<br>Poción Azul (150)</td>
<td class="td2">115.456</td>
<td class="td2">50</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/golemdelavabugartico.gif" width="103" height="103"></td>
<td class="td2">Golem de Lava Bugartico</td>
<td class="td2" width="48">13500</td>
<td class="td2">155 / 295</td>
<td class="td2">295</td>
<td class="td2">120</td>
<td class="td2">5</td>
<td class="td2">0</td>
<td class="td2">Oro (1600)<br>Bastón Nudoso (1)1%<br>Sombrero de Mago (1)1%<br>Hacha de Guerra Dos Filos (1)1%<br>Flauta (1)<br>Laúd (1)<br>Poción Roja (250)<br>Poción Azul (250)</td>
<td class="td2">50.490</td>
<td class="td2">46</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/almainfernal.gif" width="52" height="69"></td>
<td class="td2">Alma Infernal</td>
<td class="td2" width="48">13000</td>
<td class="td2">200 / 320<br>(Flecha 40 / 60)<br>(Paralizar)<br>(Descarga Eléctrica NPC 90 / 130)<br>(Apocalipsis NPC 175 / 200)</td>
<td class="td2">320</td>
<td class="td2">160</td>
<td class="td2">20</td>
<td class="td2">20</td>
<td class="td2">Oro (6200)<br>Bastón Nudoso (1)1%<br>Sombrero de Mago (1)1%<br>Hacha de Guerra Dos Filos (1)1%<br>Flauta (1)1%<br>Laúd (1)1%<br>Poción Roja (250)<br>Poción Azul (250)</td>
<td class="td2">69.498</td>
<td class="td2">55</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/pirata.gif" width="23" height="52"></td>
<td class="td2">Pirata</td>
<td class="td2" width="48">700</td>
<td class="td2">65 / 100</td>
<td class="td2">250</td>
<td class="td2">85</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2">Oro (200)</td>
<td class="td2">616</td>
<td class="td2">36</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/axolotl.gif" width="144" height="170"></td>
<td class="td2">Axolotl [Protector del Mimetismo]</td>
<td class="td2" width="48">10000</td>
<td class="td2">125 / 250<br>(Descarga Eléctrica 67 / 85)<br>(Apocalipsis 85 / 102)<br>(Inmune a Parálisis)</td>
<td class="td2">550</td>
<td class="td2">65</td>
<td class="td2">0</td>
<td class="td2">10</td>
<td class="td2">Mimetismo (1)25%</td>
<td class="td2">8.800</td>
<td class="td2">0</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/enano_de_las_profundidades.jpg" width="66" height="66"></td>
<td class="td2">Enano de las Profundidades</td>
<td class="td2" width="48">7500</td>
<td class="td2">253 / 296<br>
<font color="#FF0000"> (Inmunidad a hechizos)</font></td>
<td class="td2">260</td>
<td class="td2">200</td>
<td class="td2">30</td>
<td class="td2">0</td>
<td class="td2">Oro (2200)<br>Hacha de Guerra Dos Filos (1)1%<br>Escudo de Plata (1)1%<br>Casco de Hierro Completo (1)1%<br>Poción de Remover Parálisis (10)5%<br>Poción Roja (150)</td>
<td class="td2">28.050</td>
<td class="td2">47</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/guerrero_de_las_profundidades.jpg" width="64" height="64"></td>
<td class="td2">Guerrero de las Profundidades</td>
<td class="td2" width="48">13500</td>
<td class="td2">155 / 295<br>
<font color="#FF0000"> (Inmunidad a hechizos)</font></td>
<td class="td2">295</td>
<td class="td2">280</td>
<td class="td2">5</td>
<td class="td2">0</td>
<td class="td2">Oro (1200)<br>Armadura Bruñida (1)1%<br>Armadura de Placas Completa +1 (1)1%<br>Arco Engarzado (1)1%<br>Flechas (350)<br>Daga +3 (1)2%<br>Espada de Plata (1)1%<br>Escudo de Plata (1)1%<br>Casco de Hierro Completo (1)1%<br>Hacha de Guerra Dos Filos (1)<br>Poción Roja (250)<br>Poción Amarilla (100)<br>Poción Verde (50)</td>
<td class="td2">53.460</td>
<td class="td2">49</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/parca.jpg" width="96" height="80"></td></td>
<td class="td2"><font color="black">Parca [Señor de la Muerte]</font></td>
<td class="td2" width="48">12000</td>
<td class="td2">270 / 300<br>(Inmune a parálisis)<br>(Paralizar)<br>(Paraliza NPCs)<br>(Apocalipsis NPC 175 / 200)<br>(Remover Invisibilidad)<br>(Invocación Sombría)</td>
<td class="td2">400</td>
<td class="td2">250</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2">Oro (20000)<br>Resusitar 15%</td>
<td class="td2">118.800</td>
<td class="td2">55</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/cosainvisible.gif" width="96" height="80"></td></td></td>
<td class="td2"><font color="black">Espíritu Ancestral</font></td>
<td class="td2" width="48">2500</td>
<td class="td2">80 / 100<br>(Invisibilidad Intermitente)</td>
<td class="td2">300</td>
<td class="td2">70</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2">Oro (1000)</td>
<td class="td2">1.100</td>
<td class="td2">0</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/brujaoscura.jpg" width="96" height="80"></td>
<td class="td2"><font color="black">Bruja oscura</font></td>
<td class="td2" width="48">6250</td>
<td class="td2">35 / 75<br>(Rayo 73 / 85)<br>(Nigromancia)</td>
<td class="td2">110</td>
<td class="td2">70</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2">Oro (3000)</td>
<td class="td2">4.125</td>
<td class="td2">0</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/protectordelosmuertos.gif" width="53" height="46"></td></td></td>
<td class="td2"><font color="black">Protector de los Muertos</font></td>
<td class="td2" width="48">5200</td>
<td class="td2">50 / 80<br>(Realzar Cadáveres)</td>
<td class="td2">150</td>
<td class="td2">50</td>
<td class="td2">10</td>
<td class="td2">0</td>
<td class="td2">Oro (2000)</td>
<td class="td2">2.288</td>
<td class="td2">0</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/mantaraya.gif" width="37" height="75"></td>
<td class="td2">Manta Raya</td>
<td class="td2" width="48">1850</td>
<td class="td2">15 / 245</td>
<td class="td2">120</td>
<td class="td2">45</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2">Oro (400)</td>
<td class="td2">2.035</td>
<td class="td2">33</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/kraken.gif" width="135" height="135"></td></td></td>
<td class="td2">Kraken [Señor del Océano]</td>
<td class="td2" width="48">15000</td>
<td class="td2">100 / 300<br>(Paralizar)<br>(Antrax 98 / 103)<br>(Descarga Eléctrica NPC 90 / 130)<br>(Remover Invisibilidad)<br>(Inmune a Parálisis)</td>
<td class="td2">500</td>
<td class="td2">140</td>
<td class="td2">125</td>
<td class="td2">75</td>
<td class="td2">Oro (12000)<br>Daga +3 (1)4%<br>Flecha (350)<br>Arco Engarzado (1)4%<br>Armadura Bruñida E / G (1)4%<br>Hacha de Guerra Dos Filos (1)4%br>Casco de Hierro Completo (1)4%<br>Escudo de Plata (1)4%<br>Casco de Plata (1)4%<br>Armadura de Placas Completa +1 (1)4%<br>Poción Roja (250)<br>Poción Amarilla (100)<br>Poción Verde (50)</td>
<td class="td2">30.690</td>
<td class="td2">40</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/guerrero_pretoriano.jpg" width="32" height="60"></td>
<td class="td2">Guerrero Benderiano</td>
<td class="td2" width="48">15000</td>
<td class="td2">180 / 200</td>
<td class="td2">600</td>
<td class="td2">250</td>
<td class="td2">20</td>
<td class="td2">0</td>
<td class="td2">Oro (5000)<br>Hacha de Guerra Dos Filos (1)<br>Armadura de Placas Completa ó Armadura de Placas Completa E / G (1)<br>Casco de Hierro Completo (1)<br>Escudo de Hierro (1)<br>Poción Amarilla (130)<br>Poción Verde (130)<br>Poción Roja (3000)</td>
<td class="td2">2000</td>
<td class="td2">-</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/paladin_pretoriano.jpg" width="32" height="60"></td>
<td class="td2">Paladín Benderiano</td>
<td class="td2" width="48">15000</td>
<td class="td2">180 / 200</td>
<td class="td2">600</td>
<td class="td2">250</td>
<td class="td2">20</td>
<td class="td2">0</td>
<td class="td2">Oro (5000)<br>Hacha de Guerra Dos Filos (1)<br>Armadura de Placas Completa ó Armadura de Placas Completa E / G (1)<br>Casco de Hierro Completo (1)<br>Escudo de Hierro (1)<br>Poción Roja (3000)<br>Poción Azul (4500)</td>
<td class="td2">2000</td>
<td class="td2">-</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/bandido_pretoriano.jpg" width="32" height="60"></td>
<td class="td2">Bandido Benderiano</td>
<td class="td2" width="48">15000</td>
<td class="td2">180 / 200</td>
<td class="td2">600</td>
<td class="td2">250</td>
<td class="td2">20</td>
<td class="td2">0</td>
<td class="td2">Oro (5000)<br>Espada Vikinga (1)<br>Armadura Ciénaga ó Armadura Ciénaga de Mujer (1)<br>Casco de Plata (1)<br>Escudo de Plata (1)<br>Guantes de Hurto (1)<br>Poción Roja (3000)<br>Poción Azul (4500)</td>
<td class="td2">2000</td>
<td class="td2">-</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/asesino_pretoriano.jpg" width="32" height="60"></td>
<td class="td2">Asesino Benderiano</td>
<td class="td2" width="48">15000</td>
<td class="td2">180 / 200</td>
<td class="td2">600</td>
<td class="td2">250</td>
<td class="td2">20</td>
<td class="td2">0</td>
<td class="td2">Oro (5000)<br>Daga +4 ó Daga Aguzada (1)<br>Armadura de las sombras ó Armadura de las sombras E / G (1)<br>Casco de Hierro Completo (1)<br>Escudo de Tortuga (1)<br>Anillo Mágico (1)<br>Poción Roja (3000)<br>Poción Azul (4500)</td>
<td class="td2">2000</td>
<td class="td2">-</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/ladron_pretoriano.jpg" width="32" height="60"></td>
<td class="td2">Ladrón Benderiano</td>
<td class="td2" width="48">3000</td>
<td class="td2">50 / 65<br>(Flecha Incendiaria 180 / 250)<br>(Robo de Items)<br>(Inmune a Parálisis)</td>
<td class="td2">150</td>
<td class="td2">300</td>
<td class="td2">10</td>
<td class="td2">0</td>
<td class="td2">Oro (10000)<br>Guantes de Hurto (1)<br>Casco de Hierro (1)</td>
<td class="td2">2000</td>
<td class="td2">-</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/pirata_pretoriano.jpg" width="32" height="60"></td>
<td class="td2">Pirata Benderiano</td>
<td class="td2" width="48">10000</td>
<td class="td2">100 / 150<br>(Flecha Benderiana 130 / 160)</td>
<td class="td2">350</td>
<td class="td2">220</td>
<td class="td2">10</td>
<td class="td2">0</td>
<td class="td2">Oro (30000)<br>Túnica Legendaria (1)<br>Poción Amarilla (200)<br>Poción Verde (200)</td>
<td class="td2">2000</td>
<td class="td2">-</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/cazador_pretoriano.jpg" width="32" height="60"></td>
<td class="td2">Cazador Benderiano</td>
<td class="td2" width="48">10000</td>
<td class="td2">100 / 150<br>(Flecha Benderiana 130 / 160)</td>
<td class="td2">350</td>
<td class="td2">220</td>
<td class="td2">10</td>
<td class="td2">0</td>
<td class="td2">Oro (5000)<br>Arco de Cazador ó Arco de Marfil (1)<br>Flecha +3 (125)<br>Armadura de Cazador ó Armadura de Cazador (E/G) (1)<br>Capucha de Cazador (1)<br>Escudo de Tortuga (1)<br>Poción Amarilla (200)<br>Poción Verde (200)</td>
<td class="td2">2000</td>
<td class="td2">-</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/clerigo_pretoriano.jpg" width="32" height="60"></td>
<td class="td2">Clerigo Benderiano</td>
<td class="td2" width="48">8000</td>
<td class="td2">70 / 140<br>(Paralizar)<br>(Remover Parálisis)<br>(Paralizar NPCs)<br>(Curar Heridas Graves 20 / 33)<br>(Tormenta Benderiana 65 / 95)</td>
<td class="td2">100</td>
<td class="td2">120</td>
<td class="td2">10</td>
<td class="td2">0</td>
<td class="td2">Oro (5000)<br>Túnica Legendaria ó Túnica Combinada E / G (1)<br>Poción Azul (300)<br>Poción Roja (300)<br>Tormenta de Fuego (1)<br>Anillo Mágico (1)</td>
<td class="td2">4000</td>
<td class="td2">-</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/bardo_pretoriano.jpg" width="32" height="60"></td>
<td class="td2">Bardo Benderiano</td>
<td class="td2" width="48">8000</td>
<td class="td2">70 / 140<br>(Paralizar)<br>(Remover Parálisis)<br>(Paralizar NPCs)<br>(Curar Heridas Graves 20 / 33)<br>(Tormenta Benderiana 65 / 95)</td>
<td class="td2">100</td>
<td class="td2">120</td>
<td class="td2">10</td>
<td class="td2">0</td>
<td class="td2">Oro (5000)<br>Túnica Legendaria ó Túnica Combinada E / G (1)<br>Poción Azul (300)<br>Poción Roja (300)<br>Casco de Hierro (1)<br>Laud Élfico (1)<br>Escudo de Tortuga (1)</td>
<td class="td2">4000</td>
<td class="td2">-</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/mago_pretoriano.jpg" width="32" height="74"></td>
<td class="td2">Mago Benderiano</td>
<td class="td2" width="48">5000</td>
<td class="td2">30 / 60<br>(Apocalipsis 85 / 102)<br>(Remover Invisibilidad)<br>(Inmolación 250 / 300)**</td>
<td class="td2">100</td>
<td class="td2">80</td>
<td class="td2">10</td>
<td class="td2">0</td>
<td class="td2">Oro (5000)<br>Túnica Azul (1)<br>Poción Azul (400)<br>Báculo Engarzado (2)<br>Sombrero de Mago (1)</td>
<td class="td2">4000</td>
<td class="td2">-</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/druida_pretoriano.jpg" width="32" height="60"></td>
<td class="td2">Druida Benderiano</td>
<td class="td2" width="48">5000</td>
<td class="td2">30 / 60<br>(Apocalipsis 85 / 102)<br>(Remover Invisibilidad)<br>(Inmolación 250 / 300)**</td>
<td class="td2">100</td>
<td class="td2">80</td>
<td class="td2">10</td>
<td class="td2">0</td>
<td class="td2">Oro (5000)<br>Túnica de Viajero (1)<br>Poción Azul (400)<br>Flauta Élfica (1)<br>Casco de Tigre (1)</td>
<td class="td2">4000</td>
<td class="td2">-</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/rey_pretoriano.gif" width="40" height="60"></td>
<td class="td2">Rey Benderiano (Humano)</td>
<td class="td2" width="48">12000</td>
<td class="td2">30 / 50<br>(Curar Heridas Leves 1 / 7)<br>(Remover Parálisis)<br>(Ceguera)<br>(Turbación)<br>(Curar veneno)<br>(Inmune a Parálisis)</td>
<td class="td2">1000</td>
<td class="td2">270</td>
<td class="td2">30</td>
<td class="td2">0</td>
<td class="td2">Oro (20000)<br>Túnica Real Benderiana (1)<br>Espada de Plata (1)</td>
<td class="td2">4200</td>
<td class="td2">-</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/rey_pretoriano_enano.jpg" width="32" height="60"></td>
<td class="td2">Rey Benderiano (Enano)</td>
<td class="td2" width="48">12000</td>
<td class="td2">30 / 50<br>(Curar Heridas Leves 1 / 7)<br>(Remover Parálisis)<br>(Ceguera)<br>(Turbación)<br>(Curar veneno)<br>(Inmune a Parálisis)</td>
<td class="td2">1000</td>
<td class="td2">270</td>
<td class="td2">30</td>
<td class="td2">0</td>
<td class="td2">Oro (20000)<br>Túnica Real Benderiana E / G (1)<br>Espada de Plata (1)<br>Casco de Oso</td>
<td class="td2">4200</td>
<td class="td2">-</td>
</tr>

</tr>
</table>

<br><br><br>

(*) Esta criatura es producto de la invocación sombría que realiza la Parca al enfrentarse contra sus adversarios (Sean NPCs o Usuarios).

<br>
<br>

(**) Inmolación es una habilidad única de los NPCs Benderianos (DISPONIBLE SÓLO PARA DRUIDAS Y MAGOS BENDERIANOS). Es un ritual antiguo, prohibido y devastador que toma 10 segundos en completarse bajo las siguientes condiciones: Si el Druida/Mago Benderiano se encuentra bajo ataque y llega a un estado de debilidad extremo [1000 puntos de vida o menos], comenzará a conjurar este poderoso hechizo el cual causará daño en un área enorme, afectando a todos los usuarios ubicados dentro del área Benderiana).

<br>
<br>

Nota: Si el Druida/Mago Benderiano logra ser derrotado antes de completar el ritual de inmolación, no causará daño alguno y dejará caer al suelo la recompensa correspondiente por haberlo aniquilado. Por otra parte si logra terminar el ritual, al suicidarse los NPCs no dejarán recompensa alguna.

<br>
<br>

Acerca de las recompensas y porcentajes de drop: Todas las criaturas presentes en las tierras de BenderAO, tienen un porcentaje aleatorio (entre 1% y 75% máximo) de otorgarle al usuario la recompensa especificada en la tabla de NPCs.
Las únicas excepciones a la regla [Tienen un porcentaje del 100% de otorgar recompensas] son: Medusa [Protectora de Dungeon] ; Senescal [Gran Castillo] ; TODOS los NPCs del clan Benderiano y las monedas de oro*.

<br>
<br>

<span class="resaltarcmd"><font size="2"><u>Aclaración sobre las monedas de oro:</u></font></span><br> La cantidad de monedas de oro que otorga un NPC al ser destruído puede oscilar entre un 25% más, hasta un 25% menos. EJEMPLO: [La 'Bruja' nos ofrece 2000 monedas de oro, por ende los valores del oro final que obtendremos estarán entre 1500 y 2500 unidades].

<br>
<br>

<span class="resaltarcmd"><font size="2"><u>Experiencia y Oro:</u></font></span><br>
Experiencia x4 *** <br>
Oro x4 <br><br>

(***) Esto significa que la experiencia que muestra el manual SOLAMENTE será relevante y acorde apenas comience el servidor a funcionar ANTES de traspasar el primer límite de nivel de 30 a 35 [O sea, solamente válido cuando el límite de nivel es 30] <br>
Luego, deberán verificar con el mapa interactivo de la letra "Q" que al 'traspasar' dicho límite de nivel, la experiencia que otorgarán los NPCs será levemente mayor (tendrá otro multiplicador). Por ende manual ya no será útil para comprobar ese tipo de información.

<br>
<br>

<p><br></p>

<center><a href="macrosycentinela.php#ver">Anterior</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href="criaturasnohostiles.php#ver"> Siguiente</a></center>
<br><br><table class="titulo_seccion"><tr><td>---</td></tr></table><table class="volver_indice"><tr valign="middle"><td align="left">&nbsp;<a href="index.php">&lt;&lt;Ir al Índice del Manual</a></td><td align="right">&nbsp;</td></tr></table>

</td></tr></table>
</body>
