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
<table class="titulo_seccion"><tr><td><a name="ver"></a>- Pociones e items Varios -</td></tr></table><br><table width="98%" align="center"><tr><td><center><span class="size">Pociones:</span></center><br>

<table align="center" width="75%">
<tr>
<td class="tdresaltar">IMAGEN</td>
<td class="tdresaltar">NOMBRE</td>
<td class="tdresaltar">CARACTERÍSTICAS</td>
<td class="tdresaltar">PRECIO DE COMPRA</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/graficos/535.gif" width="32" height="32"></td>
<td class="td2">Poción Roja</td>
<td class="td2">Recupera 30 puntos de vida.</td>
<td class="td2">20</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/graficos/534.gif" width="32" height="32"></td>
<td class="td2">Poción Azul</td>
<td class="td2">Recupera la man&aacute; mediante la siguiente f&oacute;rmula : Mana * 0.04 + Lvl/2 + 40/Lvl.</td>
<td class="td2">40</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/graficos/609.gif" width="32" height="32"></td>
<td class="td2">Poción Violeta</td>
<td class="td2">Cura el veneno.</td>
<td class="td2">10</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/graficos/533.gif" width="32" height="32"></td>
<td class="td2">Poción Amarilla</td>
<td class="td2">Aumenta de forma temporal el atributo agilidad.<br>(ver <a href="razasyatributos.php?seccion=atributos#ver" target="_blank">Sección: Atributos</a>)</td>
<td class="td2">100</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/graficos/536.gif" width="32" height="32"></td>
<td class="td2">Poción Verde</td>
<td class="td2">Aumenta de forma temporal el atributo fuerza.<br>(ver <a href="razasyatributos.php?seccion=atributos#ver" target="_blank">Sección: Atributos</a>)</td>
<td class="td2">150</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/graficos/840.gif" width="32" height="32"></td>
<td class="td2">Poción Negra</td>
<td class="td2">Efecto secreto.</td>
<td class="td2">1000</td>

<tr class='colorcolumna2'><td class="tdresaltar"><img alt="I" src="imagenes/items/PocionRemo.jpg" width="50" height="50"></td>
<td class="td2">Poción Removedora de paralisis</td>
<td class="td2">Remueve el efecto de paralisis, pero esto causa pérdida del 80% de la vida total de quien la use. Solo la pueden utilizar guerreros, cazadores y trabajadores.</td>
<td class="td2">1000</td>
</tr>

</table>


<br><br><br><hr noshade width="55%" size="1" color="#959595" align="center"><br><br>
<center><span class="size">Viveres (Comindas y bebidas)<span></center><br>

<table align="center" class="tablasinborde"><tr><th scope="col">

<table align="center" width="100%">

<tr>

<td class="tdresaltar">IMAGEN</td>

<td class="tdresaltar">NOMBRE</td>

<td class="tdresaltar">HAMBRE</td>

<td class="tdresaltar">PRECIO</td>

</tr>

<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/items/manzana.gif" width="32" height="32" border="0"></td>

<td class="td2">Manzana Roja (Newbie)</td>

<td class="td2">10</td>

<td class="td2">-</td>

</tr>

<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/items/manzana.gif" width="32" height="32" border="0"></td>

<td class="td2">Manzana Roja</td>

<td class="td2">10</td>

<td class="td2">2</td>

</tr>

<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/items/banana.png" width="32" height="32" border="0"></td>

<td class="td2">Banana</td>

<td class="td2">10</td>

<td class="td2">2</td>

</tr>

<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/items/515.png" width="32" height="32" border="0"></td>

<td class="td2">Frutas del Bosque</td>

<td class="td2">15</td>

<td class="td2">2</td>

</tr>

<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/items/514.png" width="32" height="32" border="0"></td>

<td class="td2">Porción de Tarta</td>

<td class="td2">15</td>

<td class="td2">2</td>

</tr>

<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/items/517.png" width="32" height="32" border="0"></td>

<td class="td2">Pan de Trigo</td>

<td class="td2">25</td>

<td class="td2">3</td>

</tr>

<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/items/516.png" width="32" height="32" border="0"></td>

<td class="td2">Pan de Maiz</td>

<td class="td2">25</td>

<td class="td2">3</td>

</tr>

<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/items/522.png" width="32" height="32" border="0"></td>

<td class="td2">Sandía</td>

<td class="td2">40</td>

<td class="td2">6</td>

</tr>

<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/items/596.png" width="32" height="32" border="0"></td>

<td class="td2">Rábano</td>

<td class="td2">40</td>

<td class="td2">6</td>

</tr>

<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/items/521.png" width="32" height="32" border="0"></td>

<td class="td2">Queso de Cabra</td>

<td class="td2">50</td>

<td class="td2">6</td>

</tr>

<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/items/519.png" width="32" height="32" border="0"></td>

<td class="td2">Pollo</td>

<td class="td2">75</td>

<td class="td2">8</td>

</tr>

<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/items/pez.png" width="32" height="32" border="0"></td>

<td class="td2">Pez</td>

<td class="td2">75</td>

<td class="td2">8</td>

</tr>

<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/items/518.png" width="32" height="32" border="0"></td>

<td class="td2">Pastel</td>

<td class="td2">90</td>

<td class="td2">10</td>

</tr>

<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/items/520.png" width="32" height="32" border="0"></td>

<td class="td2">Chuleta</td>

<td class="td2">100</td>

<td class="td2">10</td>

</tr>

</table>
<br><br>

</th><th scope="col">



<table align="center" width="90%">

<tr>

<td class="tdresaltar">IMAGEN</td>

<td class="tdresaltar">NOMBRE</td>

<td class="tdresaltar">SED</td>

<td class="tdresaltar">PRECIO</td>

</tr>

<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/items/botellaagua.png" width="32" height="32" border="0"></td>

<td class="td2">Botella de Agua (Newbie)</td>

<td class="td2">30</td>

<td class="td2">-</td>

</tr>

<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/items/botellaagua.png" width="32" height="32" border="0"></td>

<td class="td2">Botella de Agua</td>

<td class="td2">30</td>

<td class="td2">3</td>

</tr>

<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/items/cerveza.png" width="32" height="32" border="0"></td>

<td class="td2">Cerveza</td>

<td class="td2">60</td>

<td class="td2">8</td>

</tr>

<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/items/vino.png" width="32" height="32" border="0"></td>

<td class="td2">Vino</td>

<td class="td2">90</td>

<td class="td2">10</td>

</tr>

<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/items/botellallena.png" width="32" height="32" border="0"></td>

<td class="td2">Odre</td>

<td class="td2">90</td>

<td class="td2">10</td>

</tr>

<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/items/jugofrutas.png" width="32" height="32" border="0"></td>

<td class="td2">Jugo de Frutas</td>

<td class="td2">100</td>

<td class="td2">12</td>

</tr>

</table>

</th></table>

<span class="size"><u>Como usar el Odre:</u><br>

El odre es una cantimplora, se puede llenar con agua en alguna costa o mar, para hacerlo presiona <span class="resaltarcmd">TECLA USAR (U o DOBLE CLICK)</span> y clickea sobre el agua, luego para tomar su contenido presiona nuevamente la misma tecla.</span>






<br><br><br><hr noshade width="55%" size="1" color="#959595" align="center"><br><br>
<center><span class="size">items varios:</span></center><br>

<table align="center" width="90%">
<tr>
<td class="tdresaltar">IMAGEN</td>
<td class="tdresaltar">NOMBRE</td>
<td class="tdresaltar">UTILIDAD</td>
<td class="tdresaltar">PRECIO DE COMPRA</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/items/ramitas.png" width="32" height="32"><img src="imagenes/items/fogataencendida.png" width="32" height="32"></td>
<td class="td2">Ramitas/Fogata</td>
<td class="td2">Las ramitas se prenden con doble click, la fogata sirve para recuperar rápidamente vida y energía y para saber cómo hacer ramitas ver <a href="interactuarycomercio.php?seccion=combateyfogatas#ver" target="_blank">Sección: Combate y Fogatas</a></td>
<td class="td2">3</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/graficos/693.gif" width="32" height="32"></td>
<td class="td2">Piel Lobo</td>
<td class="td2">No tiene uso pero se puede vender.</td>
<td class="td2">21</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/graficos/695.gif" width="32" height="32"></td>
<td class="td2">Piel Oso Pardo</td>
<td class="td2">No tiene uso pero se puede vender.</td>
<td class="td2">51</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/graficos/694.gif" width="32" height="32"></td>
<td class="td2">Piel Oso Polar</td>
<td class="td2">No tiene uso pero se puede vender.</td>
<td class="td2">6666</td>
</tr>

<!--
<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/graficos/694.gif" width="32" height="32"></td>
<td class="td2">Piel Oso Polar</td>
<td class="td2">No tiene uso pero se puede vender.</td>
<td class="td2">100</td>
</tr>
-->

<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/graficos/580.gif" width="32" height="32"></td>
<td class="td2">Caña de Pescar</td>
<td class="td2">Esta herramienta es la correspondiente al oficio de la pesca.</td>
<td class="td2">200</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/graficos/571.gif" width="32" height="32"></td>
<td class="td2">Hacha de Leñador</td>
<td class="td2">Esta herramienta es la correspondiente al oficio de la tala de árboles.</td>
<td class="td2">350</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/graficos/616.gif" width="32" height="32"></td>
<td class="td2">Piquete de Minero</td>
<td class="td2">Esta herramienta es la correspondiente al oficio de la minería.</td>
<td class="td2">210</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/graficos/729.gif" width="32" height="32"></td>
<td class="td2">Martillo de Herrero</td>
<td class="td2">Esta herramienta es la correspondiente al oficio de la herrería.</td>
<td class="td2">140</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/graficos/615.gif" width="32" height="32"></td>
<td class="td2">Serrucho</td>
<td class="td2">Esta herramienta es la correspondiente al oficio de la carpintería.</td>
<td class="td2">140</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/graficos/605.gif" width="32" height="32"></td>
<td class="td2">Silla</td>
<td class="td2">Item decorativo, no tiene uso pero se puede vender.</td>
<td class="td2">52</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/graficos/593.gif" width="32" height="32"></td>
<td class="td2">Cuchara</td>
<td class="td2">Item decorativo, no tiene uso pero se puede vender.</td>
<td class="td2">6</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/graficos/600.gif" width="32" height="32"></td>
<td class="td2">Mueble Rústico</td>
<td class="td2">Item decorativo, no tiene uso pero se puede vender.</td>
<td class="td2">1024</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/graficos/680.gif" width="32" height="32"></td>
<td class="td2">Tambor</td>
<td class="td2">Instrumento musical, si lo usas escucharás una melodía.</td>
<td class="td2">2200</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/graficos/681.gif" width="32" height="32"></td>
<td class="td2">Laúd</td>
<td class="td2">Instrumento musical, si lo usas escucharás una melodía.</td>
<td class="td2">2200</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/graficos/682.gif" width="32" height="32"></td>
<td class="td2">Flauta</td>
<td class="td2">Instrumento musical, si lo usas escucharás una melodía.</td>
<td class="td2">2200</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/graficos/743.gif" width="32" height="32"></td>
<td class="td2">Barca</td>
<td class="td2">Elemento para navegar, no se cae al morir.<br>(ver <a href="navegacion.php?seccion=navegacion#ver" target="_blank">Sección: Navegación</a>)</td>
<td class="td2">N/A</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/graficos/743.gif" width="32" height="32"></td>
<td class="td2">Galera</td>
<td class="td2">Elemento para navegar, no se cae al morir.<br>(ver <a href="navegacion.php?seccion=navegacion#ver" target="_blank">Sección: Navegación</a>)</td>
<td class="td2">53000</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/graficos/743.gif" width="32" height="32"></td>
<td class="td2">Galeón</td>
<td class="td2">Elemento para navegar, no se cae al morir.<br>(ver <a href="navegacion.php?seccion=navegacion#ver" target="_blank">Sección: Navegación</a>)</td>
<td class="td2">87000</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/graficos/612.gif" width="32" height="32"></td>
<td class="td2">Minerales de Hierro</td>
<td class="td2">Se extraen de yacimientos o se compran en minerías y son necesarios para forjar lingotes de hierro.</td>
<td class="td2">10</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/graficos/640.gif" width="32" height="32"></td>
<td class="td2">Minerales de Plata</td>
<td class="td2">Se extraen de yacimientos o se compran en minerías y son necesarios para forjar lingotes de plata.</td>
<td class="td2">12</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/graficos/639.gif" width="32" height="32"></td>
<td class="td2">Minerales de Oro</td>
<td class="td2">Se extraen de yacimientos o se compran en minerías y son necesarios para forjar lingotes de oro.</td>
<td class="td2">20</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/graficos/727.gif" width="32" height="32"></td>
<td class="td2">Lingote de Hierro</td>
<td class="td2">Se fabrican con minerales de hierro en la fragua de una herrería, sirven para hacer armas y armaduras.</td>
<td class="td2">70</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/graficos/728.gif" width="32" height="32"></td>
<td class="td2">Lingote de Plata</td>
<td class="td2">Se fabrican con minerales de plata en la fragua de una herrería, sirven para hacer armas y armaduras.</td>
<td class="td2">120</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/graficos/726.gif" width="32" height="32"></td>
<td class="td2">Lingote de Oro</td>
<td class="td2">Se fabrican con minerales de oro en la fragua de una herrería, sirven para hacer armas y armaduras.</td>
<td class="td2">350</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar"><img src="imagenes/graficos/508.gif" width="32" height="32"></td>
<td class="td2">Llave</td>
<td class="td2">Necesaria para abrir alguna puerta de alguna casa o lugar especial, no se cae al morir.</td>
<td class="td2">-</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar"><img src="imagenes/graficos/510.gif" width="32" height="32"></td>
<td class="td2">Monedas de Oro</td>
<td class="td2">Argentum Online tiene un sistema de comercio capitalista por lo cual el dinero es indispensable.</td>
<td class="td2">-</td>
</tr>

</table></td></tr></table><br><br>

<center><a href="hechizos.php#ver">Anterior</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href="trabajador.php#ver"> Siguiente</a></center>
<br><br><table class="titulo_seccion"><tr><td>---</td></tr></table><table class="volver_indice"><tr valign="middle"><td align="left">&nbsp;<a href="index.php">&lt;&lt;Ir al Índice del Manual</a></td><td align="right">&nbsp;</td></tr></table>

</td></tr>
</table>
</body>
