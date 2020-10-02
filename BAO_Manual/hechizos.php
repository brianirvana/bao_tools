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
<table class="titulo_seccion"><tr><td><a name="ver"></a>- Magia y Hechizos -</td></tr></table><br><table width="98%" align="center"><tr><td><span class="size">Junto a la pestaña INVENTARIO verás la de HECHIZOS, en cuanto la pulses aparecerá el panel de hechizos.
<br>
Para lanzar un hechizo deberás clickear sobre el hechizo que querés utilizar, pulsar el <span class="resaltarcmd">BOTÓN LANZAR</span> y finalmente hacer click sobre algún objetivo. (Otro usuario o bien un bicho)
<br>
Si querés ver la información de un hechizo deberás clickear sobre el hechizo y pulsar el <span class="resaltarcmd">BOTÓN INFO</span>, lo que hará mostrar los datos importantes, tales como la cantidad de mana necesaria para ser lanzado.
<br>
<center><img alt="" src="imagenes\juego/PestanaHechi.jpg"></center>
<br><br>
Cuando compres nuevos hechizos aparecerán con la forma de pergaminos en el inventario <img src="imagenes/items/hechizo.gif" height="40" width="40">. Para aprenderlos y colocarlos dentro de la lista de hechizos hay que seleccionarlos y pulsar <span class="resaltarcmd">TECLA USAR (U o DOBLE CLICK)</span>.
<br><br>
Cabe destacar que cada vez que ejecutes un hechizo consumirá una cierta cantidad de mana y para recuperarla podés meditar utilizando <span class="resaltarcmd">/MEDITAR o TECLA MEDITAR (F6)</span> o tomar pociones azules y  por último tenes que saber que cuanto mayor sea el nivel del personaje, mayor daño hará.
<br><br>
<center><img src="imagenes\juego/Mana.jpg" alt=""></center><br><br>

Lista de los hechizos existentes:<br><br>
</span>

<table align="center" width="100%">
<tr>
<td class="tdresaltar3"><img src="imagenes/items/hechizo.gif" height="40" width="40"><br>HECHIZO</td>
<td class="tdresaltar3" width="1%">HABILIDAD MAGIA</td>
<td class="tdresaltar3" width="7%">DAÑO<br>o<br>CURA</td>
<td class="tdresaltar3">INFORMACIÓN</td>
<td class="tdresaltar3">ARMA EQUIPADA PARA PODER LANZARLO / BONUS</td>
<td class="tdresaltar3" width="1%">MANA</td>
<td class="tdresaltar3" width="1%">ENERGÍA</td>
<td class="tdresaltar3" width="1%">PALABRAS MÁGICAS</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">Ataque de Hambre</td>
<td class="td2">5</td>
<td class="td2">0 / 0</td>
<td class="td2">Provoca hambre a un usuario.</td>
<td class="td2">-</td>
<td class="td2">20</td>
<td class="td2">2</td>
<td class="td2">ÔL AEX</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">Curar veneno</td>
<td class="td2">10</td>
<td class="td2">0 / 0</td>
<td class="td2">Cura el envenenamiento a un usuario.</td>
<td class="td2">-</td>
<td class="td2">12</td>
<td class="td2">1</td>
<td class="td2">NIHIL VED</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">Flecha Mágica</td>
<td class="td2">12</td>
<td class="td2">6 / 12</td>
<td class="td2">Causa daño a un usuario o NPC.</td>
<td class="td2">-</td>
<td class="td2">20</td>
<td class="td2">2</td>
<td class="td2">VAX PER</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">Curar Heridas Leves</td>
<td class="td2">15</td>
<td class="td2">1 / 5</td>
<td class="td2">Cura puntos de vida a un usuario o NPC.</td>
<td class="td2">-</td>
<td class="td2">15</td>
<td class="td2">1</td>
<td class="td2">CORP SANC</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">Celeridad</td>
<td class="td2">20</td>
<td class="td2">0 / 0</td>
<td class="td2">Aumenta de forma temporal el atributo agilidad<br>(ver <a href="razasyatributos.php?seccion=atributos#ver" target="_blank">Sección: Atributos</a>).</td>
<td class="td2">-</td>
<td class="td2">20</td>
<td class="td2">5</td>
<td class="td2">YUP A'INC</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">Torpeza</td>
<td class="td2">20</td>
<td class="td2">0 / 0</td>
<td class="td2">Disminuye de forma temporal el atributo agilidad.</td>
<td class="td2">-</td>
<td class="td2">20</td>
<td class="td2">2</td>
<td class="td2">ASYNC YUP A'INC</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">Toxina</td>
<td class="td2">20</td>
<td class="td2">0 / 0</td>
<td class="td2">Envenena a un usuario.</td>
<td class="td2">-</td>
<td class="td2">24</td>
<td class="td2">3</td>
<td class="td2">SERP XON IN</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">Flecha Eléctrica</td>
<td class="td2">22</td>
<td class="td2">12 / 20</td>
<td class="td2">Causa daño a un usuario o NPC.</td>
<td class="td2">-</td>
<td class="td2">40</td>
<td class="td2">5</td>
<td class="td2">SUN VAP</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">Turbación</td>
<td class="td2">30</td>
<td class="td2">0 / 0</td>
<td class="td2">Hace perder el control de movimiento a un usuario.</td>
<td class="td2">-</td>
<td class="td2">800</td>
<td class="td2">76</td>
<td class="td2">ASYNC GAM ALÛ</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">Fuerza</td>
<td class="td2">35</td>
<td class="td2">0 / 0</td>
<td class="td2">Aumenta de forma temporal el atributo fuerza<br>(ver <a href="razasyatributos.php?seccion=atributos#ver" target="_blank">Sección: Atributos</a>).</td>
<td class="td2">-</td>
<td class="td2">35</td>
<td class="td2">6</td>
<td class="td2">Ar A'kron</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">Debilidad</td>
<td class="td2">35</td>
<td class="td2">0 / 0</td>
<td class="td2">Disminuye de forma temporal el atributo fuerza.</td>
<td class="td2">-</td>
<td class="td2">45</td>
<td class="td2">6</td>
<td class="td2">Xoom varp</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">Terrible hambre de Igôr</td>
<td class="td2">35</td>
<td class="td2">0 / 0</td>
<td class="td2">Provoca hambre a un usuario.</td>
<td class="td2">-</td>
<td class="td2">55</td>
<td class="td2">7</td>
<td class="td2">ÛX'ÔL AEX</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">Curar Heridas 
	Graves</td>
<td class="td2">38</td>
<td class="td2">12 / 35</td>
<td class="td2">Cura puntos de vida a un usuario o NPC.</td>
<td class="td2">-</td>
<td class="td2">40</td>
<td class="td2">5</td>
<td class="td2">EN CORP SANCTIS</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">Proyectil Etéreo</td>
<td class="td2">38</td>
<td class="td2">30 / 35</td>
<td class="td2">Causa daño a un usuario o NPC.</td>
<td class="td2">-</td>
<td class="td2">45</td>
<td class="td2">6</td>
<td class="td2">VAX IN TAR</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">Llamado a la Naturaleza</td>
<td class="td2">40</td>
<td class="td2">0 / 0</td>
<td class="td2">Invoca Lobos<br>(ver <a href="criaturasinvocables.php?seccion=criaturasinvocadas#ver" target="_blank">Sección: Criaturas Invocadas</a>).</td>
<td class="td2">-</td>
<td class="td2">120</td>
<td class="td2">16</td>
<td class="td2">Nature et worg</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">Remover Paralisis</td>
<td class="td2">60</td>
<td class="td2">0 / 0</td>
<td class="td2">Contrarresta el efecto de la parálisis o la inmovilización.</td>
<td class="td2">-</td>
<td class="td2">200</td>
<td class="td2">44</td>
<td class="td2">AN HOAX VORP</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">Quitar la Turbación</td>
<td class="td2">45</td>
<td class="td2">0 / 0</td>
<td class="td2">Recupera el control de movimiento de un usuario.</td>
<td class="td2">-</td>
<td class="td2">350</td>
<td class="td2">44</td>
<td class="td2">AN ASYNC GAM ALÛ</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">Llamado Nigromante</td>
<td class="td2">51</td>
<td class="td2">0 / 0</td>
<td class="td2">Invoca Zombies<br>(ver <a href="criaturasinvocables.php?seccion=criaturasinvocadas#ver" target="_blank">Sección: Criaturas Invocadas</a>).</td>
<td class="td2">-Vara de Fresno o más poderosa (Mago).</td>
<td class="td2">300</td>
<td class="td2">31</td>
<td class="td2">MoÎ cámus</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">Paralizar</td>
<td class="td2">72</td>
<td class="td2">0 / 0</td>
<td class="td2">Paraliza por un momento a un usuario o NPC, si es un NPC quedará completamente paralizado en sus cuatro lados.</td>
<td class="td2">-</td>
<td class="td2">400</td>
<td class="td2">65</td>
<td class="td2">HOAX VORP</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">Inmovilizar</td>
<td class="td2">75</td>
<td class="td2">0 / 0</td>
<td class="td2">Inmoviliza por un momento a un usuario o NPC, si es un NPC quedará inmovilizado pero podrá atacar en dirección a donde apunte su vista.</td>
<td class="td2">-</td>
<td class="td2">250</td>
<td class="td2">44</td>
<td class="td2">Är Prop s'uo</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">Invocación de Ultratumba</td>
<td class="td2">62</td>
<td class="td2">0 / 0</td>
<td class="td2">Invoca Esqueleto Guerrero<br>(ver <a href="criaturasinvocables.php?seccion=criaturasinvocadas#ver" target="_blank">Sección: Criaturas Invocadas</a>).</td>
<td class="td2">-Vara de Fresno o más poderosa (Mago).</td>
<td class="td2">600</td>
<td class="td2">60</td>
<td class="td2">Cörpse Dûm Ex</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">Tormenta de Fuego</td>
<td class="td2">60</td>
<td class="td2">45 / 55</td>
<td class="td2">Causa daño a un usuario o NPC.</td>
<td class="td2">-</td>
<td class="td2">200</td>
<td class="td2">29</td>
<td class="td2">EN VAX ON TAR</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">Resucitar*</td>
<td class="td2">75</td>
<td class="td2">0 / 0</td>
<td class="td2">Resucita un usuario muerto.</td>
<td class="td2">-Bastón Nudoso o más poderoso (Mago).<br>-Laúd Mágico (Bardo).<br>-Flauta Mágica (Druida).</td>
<td class="td2">300</td>
<td class="td2">300</td>
<td class="td2">AHIL KNÄ XÄR</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">Mimetismo**</td>
<td class="td2">75</td>
<td class="td2">0 / 0</td>
<td class="td2">Adquiere de forma temporal la apariencia de otro usuario a excepción del Druida que se puede mimetizar con los NPCs. Pueden ser hostiles y no hostiles. Ejemplo: banquero o una gallina.</td>
<td class="td2">50% menos de mana (bonus) con Flauta Mágica (Druida)</td>
<td class="td2">800</td>
<td class="td2">44</td>
<td class="td2">Cimim Ux Maïo</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">Descarga Eléctrica</td>
<td class="td2">85</td>
<td class="td2">67 / 85</td>
<td class="td2">Causa daño a un usuario o NPC.</td>
<td class="td2">10% menos de mana (bonus) con Flauta Mágica (Druida)</td>
<td class="td2">460</td>
<td class="td2">73</td>
<td class="td2">T'HY KOOOL</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">Invisibilidad</td>
<td class="td2">80</td>
<td class="td2">0 / 0</td>
<td class="td2">Vuelve invisible de forma temporal a un usuario. (Durante 25 segundos)</td>
<td class="td2">-</td>
<td class="td2">300</td>
<td class="td2">72</td>
<td class="td2">-</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">Invocar Elemental de Tierra</td>
<td class="td2">100</td>
<td class="td2">-</td>
<td class="td2">Invoca Elemental de Tierra<br>(ver <a href="criaturasinvocables.php?seccion=criaturasinvocadas#ver" target="_blank">Sección: Criaturas Invocadas</a>).</td>
<td class="td2">-Flauta Mágica (Druida) / 10% menos de mana (bonus) con Flauta Mágica (Druida)</td>
<td class="td2">1100</td>
<td class="td2">191</td>
<td class="td2">Mu Mantra'rax</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">Invocar Elemental de Agua</td>
<td class="td2">90</td>
<td class="td2">-</td>
<td class="td2">Invoca Elemental de Agua<br>(ver <a href="criaturasinvocables.php?seccion=criaturasinvocadas#ver" target="_blank">Sección: Criaturas Invocadas</a>).</td>
<td class="td2">-Flauta Mágica (Druida) / 10% menos de mana (bonus) con Flauta Mágica (Druida)</td>
<td class="td2">890</td>
<td class="td2">121</td>
<td class="td2">Wata Mantra'rax</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">Invocar Elemental de Fuego</td>
<td class="td2">100</td>
<td class="td2">-</td>
<td class="td2">Invoca Elemental de Fuego<br>(ver <a href="criaturasinvocables.php?seccion=criaturasinvocadas#ver" target="_blank">Sección: Criaturas Invocadas</a>).</td>
<td class="td2">-Flauta Mágica (Druida) / 10% menos de mana (bonus) con Flauta Mágica (Druida)</td>
<td class="td2">1200</td>
<td class="td2">145</td>
<td class="td2">Fir Yur'rax</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">Apocalipsis</td>
<td class="td2">100</td>
<td class="td2">85 / 102</td>
<td class="td2">Causa daño a un usuario o NPC.</td>
<td class="td2">10% menos de mana (bonus) con Flauta Mágica (Druida)</td>
<td class="td2">1000</td>
<td class="td2">131</td>
<td class="td2">Rahma Nañarak O'al</td>
</tr>
d
<tr class='colorcolumna1'><td class="tdresaltar" height="45">Rayo</td>
<td class="td2">100</td>
<td class="td2">65 / 88</td>
<td class="td2">Causa daño a un usuario o NPC.</td>
<td class="td2">10% menos de mana (bonus) con Flauta Mágica (Druida)</td>
<td class="td2">600</td>
<td class="td2">95</td>
<td class="td2">T'HY Ra!YeLi^</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">Antrax</td>
<td class="td2">100</td>
<td class="td2">92 / 103</td>
<td class="td2">Causa daño a un usuario o NPC.</td>
<td class="td2">10% menos de mana (bonus) con Flauta Mágica (Druida)</td>
<td class="td2">1500</td>
<td class="td2">145</td>
<td class="td2">Rahma An´tr^aX</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">Apocalipsis BenderAO</td>
<td class="td2">87</td>
<td class="td2">50 / 95</td>
<td class="td2">Causa daño a un NPC.</td>
<td class="td2">10% menos de mana (bonus) con Flauta Mágica (Druida)</td>
<td class="td2">300</td>
<td class="td2">50</td>
<td class="td2">En Rahma Bender</td>
</tr>


</table>


<span class="size">
<p><br>
*Penalizaci&oacute;n de vida al resucitar: En los rings: No hay penalizaci&oacute;n.  Fuera de los rings: Penaliza un % de vida igual a la del nivel * 1,5  del resucitado</p>
<p>**El druida recibe una bonificaci&oacute;n del 50% menos de mana para el hechizo mimetismo, siempre y cuando tenga la flauta equipada.<br>
  </span>
</p>
<table id="menuinfoespecial" align="center" width="70%">
  <tr>
<td align="center" valign="middle" style="background:url(imagenes/manual/menuinfo_fondo_arrow.gif);"><img src="imagenes/manual/menuinfo_arrow.gif"></td>
</tr>
<tr>
<td align="left" valign="top" style="background:url(imagenes/manual/menuinfo_fondo.gif) bottom repeat-x;padding-left:3px;">

<img src="imagenes/manual/menuinfo_flechita.gif"> <b>Requisito de arma equipada para poder lanzar un hechizo:</b><br>
Algunos hechizos precisan armas con poder mágico equipadas para poder ser lanzados, por ej. si dice "Bastón Nudoso o más poderoso" significa que puede ser lanzado con cualquier arma que tenga un ataque mágico más poderoso que el Bastón Nudoso (ver <a href="armas.php?seccion=armas#ver" target="_blank">Sección: Armas</a>).<br>
<br>
<img src="imagenes/manual/menuinfo_flechita.gif"> <b>Hechizos daño/cura:</b><br>
Cuanto más nivel tengas, más daño/cura hará el personaje.<br>
Cabe destacar que los valores de daño/cura de cada hechizo no están mal, sino que es el daño/cura base que haría un personaje nivel 1 sin ningún arma con poder mágico equipada, la razón de eso es por la fórmula del daño que se incrementa según el porcentaje de ataque mágico.<br>
<br>
<img src="imagenes/manual/menuinfo_flechita.gif"> <b>Mana y Energía:</b><br>
Significa la cantidad de mana y energía/vitalidad que requiere un personaje para poder lanzar un hechizo.

</td>
</tr>
</table>
</td></tr></table><br><br>

<center><a href="cascosyescudos.php#ver">Anterior</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href="pociones.php#ver"> Siguiente</a></center>
<br><br><table class="titulo_seccion"><tr><td>---</td></tr></table><table class="volver_indice"><tr valign="middle"><td align="left">&nbsp;<a href="index.php">&lt;&lt;Ir al Índice del Manual</a></td><td align="right">&nbsp;</td></tr></table>

</td></tr>
</table>
</body>