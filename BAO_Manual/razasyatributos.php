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
	if (!is_numeric($id) && $id != '') { exit; } // Evitamos el Blind Injection MySQL
?>

<link type="image/x-icon" href="favicon.ico" rel="icon" />

<?php
	require_once("grafica.php");
	top();
?>
<!-- TABLA 1 -->
<table align="center" cellpadding="0" cellspacing="0" border="0" style="width:70%">
<td style="background:""; text-align:center; height:148px">
<table height="50"align="center" cellpadding="0" cellspacing="0" bgcolor="">
</table>
<br>
<table align="Center" class="body" width="1100px">
<br>
<tr>
<td>
<table class="titulo_seccion"><tr><td><a name="ver"></a>- Razas y atributos -</td></tr></table><br><table width="98%" align="center"><tr><td><center><u><span class="resaltar">Razas</span></u></center><br><br></table>
<table align="center" width="1000px">
<tr>
<td>
<table align="center" width="90%">
<tr class='colorcolumna1'><td class="tdresaltar">Humanos<br><img src="imagenes/juego/cara_humano.png" width="68" height="16" border="0"></td>
<td class="td3" height="84">
Los humanos son la raza más común y equilibrada en Argentum. Debido a sus habilidades son recomendables para casi cualquier profesión o clase. Se destacan principalmente en resistir ataques mágicos y físicos, siendo también muy ágiles y fuertes.
</td>
</tr>

<tr><td height="2"></td></tr>

<tr class='colorcolumna2'><td class="tdresaltar">Elfos<br><img src="imagenes/juego/cara_elfo.png" width="68" height="16" border="0"></td>
<td class="td3" height="84">
Los elfos son seres pacíficos y de gran sabiduría, que habitan los rincones más apartados de los bosques de BenderAO en una gran comunidad. Son seres de gran belleza, con sus largos cabellos y grandes orejas puntiagudas. Los elfos presentan un tamaño similar a los de los humanos pero de contextura física mucho más delgada y de huesos livianos, pero sorprendentemente duros al momento de batallar. Debido a su gran sabiduría los elfos pueden meditar y canalizar toda su energía, por lo que generalmente suelen ser excelentes hechiceros.
</td>
</tr>

<tr><td height="2"></td></tr>

<tr class='colorcolumna1'><td class="tdresaltar">Elfos Oscuros<br><img src="imagenes/juego/cara_elfooscuro.png" width="68" height="16" border="0"></td>
<td class="td3" height="84">
Los Elfos Oscuros, comprenden el más siniestro y malvado segmento de la población élfica. 
Desterrada por los grandes dioses élficos, esta raza derivada de los elfos suele habitar las zonas más desoladas y oscuras de todo Bender. 
Si bien aún conservan las principales características élficas, los elfos oscuros, debido a su gran maldad, han perdido el sentido de la sensatez y el equilibrio racional, por lo cual han ido perdiendo su magnífica carisma y parte de su poderío vital. No obstante, a causa de su gran afán por el lado oscuro y la magia negra, todavía siguen siendo temibles adversarios que poseen una gran astucia y poderío físico.
</td>
</tr>

<tr><td height="2"></td></tr>

<tr class='colorcolumna2'><td class="tdresaltar">Enanos<br><img src="imagenes/juego/cara_enano.png" width="68" height="16" border="0"></td>
<td class="td3" height="84">
Seres de poca altura, gruñones en su máximo esplendor, fuertes y de extremidades muy robustas, los enanos son conocidos por todas las tierras de Bender como una gran raza de guerreros natos. Tratan a los de su raza como hermanos y a quienes no son lo son, como seres inferiores que, de una manera u otra representan una amenaza para su comunidad. Sus principales características son el combate cuerpo a cuerpo, en el cual se ven en ventaja dada su gran fuerza y resistencia física. Los enanos son famosos por sus escasos conocimientos en las artes mágicas, esto es debido a su gran odio hacia los Elfos y a los métodos rebuscados que estos utilizan en combate, prefiriendo usar su potencial para absorver todo el daño posible y estar en el frente de la batalla.
</td>
</tr>

<tr><td height="2"></td></tr>

<tr class='colorcolumna1'><td class="tdresaltar">Gnomos<br><img src="imagenes/juego/cara_gnomo.png" width="68" height="16" border="0"></td>
<td class="td3" height="84">
Los gnomos son una raza de criaturas muy amigables. Son comunes en la mayoría de las regiones de Bender y tienen contextura física más pequeña y menos robusta que la de los enanos. Esta raza conserva un gran parentesco con ellos lo que lleva a pensar que pueden llegar a ser descendientes lejanos de los mismos. A diferencia de los enanos, los gnomos poseen una notable agilidad, equiparable a la de los elfos en general. Sin embargo, son muy débiles para manejar correctamente armas de daño físico y cargar con pesadas armaduras. Gracias a su afán por el ilusionismo esta raza está muy familiarizada con el uso de todo tipo de objetos mágicos, lo cual los convierte en la raza más indicada para lanzar extensos conjuros y sortilegios de menor clase.
</tr>
</table>


<br><br>
<center><u><span class="resaltar">Atributos</span></u></center><br><br>
<span class="size">
Los atributos o "dados" se generan aleatoriamente al tirar dados en la pantalla de creación personaje. Estos atributos son los que determinan qué tan bueno es el personaje, por lo tanto si tiene puntos bajos va a ser débil, mientras que con puntos mayores, será mucho más fuerte.
El máximo que puede tener en cualquier atributo es 18.<br><br>

Eso si, atención: No hace falta sacar en todos los atributos el máximo, todo depende la clase y raza que se eliga. Por ejemplo, si yo me voy a crear un Mago, no hace falta que tenga puntos en fuerza por que no es el área en que se destaca. Al reves pasaría con el guerrero, que no necesitaría puntos en inteligencia debido a que no utiliza mana.<br><br>

En la pantalla de creación de personaje, en la parte superior izquierda podrán ver la imagen detallada aquí abajo.<br><br>

<center><img src="imagenes\juego/TirarDados.jpg" alt=""></center><br><br>

Aquí la lista:<br><br>

<li>Fuerza:<br>
Es la fuerza física de nuestro personaje, es importante para las clases que se enfrentan cuerpo a cuerpo, ya que con una fuerza alta pegaran mucho mas fuerte.
</li><br><br>
<li>Agilidad:<br>
Esta es la representación de la velocidad y con puntos altos más posibilidad de esquivar golpes se tienen y también mas posibilidad de acertarlos, es importante para todas las clases.
</li><br><br>
<li>Carisma:<br>
Mientras más puntos tengas en este atributo, podrás domar animales más grandes y fuertes, también te ayudara a crear partys para facilitar el entrenamiento y fundar clanes.
</li><br><br>
<li>Constitución: <br>
Esta es la cantidad de vida que tendrá el personaje. Mientras más puntos en constritución tengas, más vida tendrá tu personaje.
</li><br><br>
<li>Inteligencia <br>
Representa la maná, de esta característica depende la cantidad de maná que obtengas al subir de nivel. Es de vital importancia para las clases que utilizan magia.
</li>
<br><br><br>
<center><u><span class="resaltar">Monificadores:</span></u></center><br><br>

Como puedes ver, cada raza difiere mucho de las otras. Acá dejaré la guia de modificadores actualizada de cada una:<br><br>

<table align="center" width="52%">
<tr>
<td class="tdresaltar5" height="18" width="16%">Raza</td>
<td class="tdresaltar3" width="16%">Fuerza</td>
<td class="tdresaltar3" width="16%">Agilidad</td>
<td class="tdresaltar3" width="16%">Inteligencia</td>
<td class="tdresaltar3" width="16%">Carisma</td>
<td class="tdresaltar3" width="16%">Constitución</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar2" height="18">Humano</td>
<td class="td2">+1</td>
<td class="td2">+1</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2">+2</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar2" height="18">Elfo</td>
<td class="td2">-1</td>
<td class="td2">+3</td>
<td class="td2">+2</td>
<td class="td2">+2</td>
<td class="td2">+1</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar2" height="18">Elfo&nbsp;Oscuro</td>
<td class="td2">+2</td>
<td class="td2">+3</td>
<td class="td2">+2</td>
<td class="td2">-3</td>
<td class="td2">0</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar2" height="18">Enano</td>
<td class="td2">+3</td>
<td class="td2">0</td>
<td class="td2">-3</td>
<td class="td2">-2</td>
<td class="td2">+3</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar2" height="18">Gnomo</td>
<td class="td2">-2</td>
<td class="td2">+3</td>
<td class="td2">+4</td>
<td class="td2">+1</td>
<td class="td2">0</td>
</tr>

</table>

</span>
</td>
</tr>
</table>
<br>
<br>
<br><hr noshade width="40%" size="1" color="#959595" align="center"><br><br>

<center>Puntos de vida aleatorios que ganará un personaje al subir de nivel según su constitución:</center>

<br>
<br>

NOTA: Para mayor información, utilice el comando /Promedio y podrá averiguar si su personaje se halla con una vida 'decente'. Tenga en cuenta que el promedio de cualquier clase y raza puede oscilar entre -2 y +8 puntos de vida ... Los dioses de BenderAO constantemente buscan el balance total en la vida de los mortales benderianos para que se destaquen por su astucia y/o fortaleza, y no se fíen tanto de la suerte que puedan llegar a tener.

<br>
<br>

<table class="tablasinborde" align="center" width="88%">
<tr>
<td></td>
<td colspan="10" class="tdresaltar5">Constitución</td>
</tr>
<tr>
<td class="tdresaltar5" width="5%" height="18">Clase</td>
<td class="tdresaltar3">21</td>
<td class="tdresaltar3">20</td>
<td class="tdresaltar3">19</td>
<td class="tdresaltar3">18</td>
<td class="tdresaltar3">17</td>
<td class="tdresaltar3">16</td>
<td class="tdresaltar3">15</td>
<td class="tdresaltar3">14</td>
<td class="tdresaltar3">13</td>
<td class="tdresaltar3">12</td>
</tr>
<tr class='colorcolumna1'><td class="tdresaltar2" height="18">Guerrero</td>
<td class="td2">8 a 12</td>
<td class="td2">8 a 11</td>
<td class="td2">7 a 11</td>
<td class="td2">7 a 10</td>
<td class="td2">6 a 10</td>
<td class="td2">6 a 9</td>
<td class="td2">5 a 9</td>
<td class="td2">5 a 8</td>
<td class="td2">4 a 8</td>
<td class="td2">4 a 7</td>
</tr>
<tr class='colorcolumna2'><td class="tdresaltar2" height="18">Cazador</td>
<td class="td2">8 a 11</td>
<td class="td2">7 a 11</td>
<td class="td2">7 a 10</td>
<td class="td2">6 a 10</td>
<td class="td2">6 a 9</td>
<td class="td2">5 a 9</td>
<td class="td2">5 a 8</td>
<td class="td2">4 a 8</td>
<td class="td2">4 a 7</td>
<td class="td2">3 a 7</td>
</tr>
<tr class='colorcolumna1'><td class="tdresaltar2" height="18">Paladín</td>
<td class="td2">8 a 11</td>
<td class="td2">7 a 11</td>
<td class="td2">7 a 10</td>
<td class="td2">6 a 10</td>
<td class="td2">6 a 9</td>
<td class="td2">5 a 9</td>
<td class="td2">5 a 8</td>
<td class="td2">4 a 8</td>
<td class="td2">4 a 7</td>
<td class="td2">3 a 7</td>
</tr>
<tr class='colorcolumna2'><td class="tdresaltar2" height="18">Pirata</td>
<td class="td2">8 a 12</td>
<td class="td2">8 a 11</td>
<td class="td2">7 a 11</td>
<td class="td2">7 a 10</td>
<td class="td2">6 a 10</td>
<td class="td2">6 a 9</td>
<td class="td2">5 a 9</td>
<td class="td2">5 a 8</td>
<td class="td2">4 a 8</td>
<td class="td2">4 a 7</td>
</tr>
<tr class='colorcolumna1'><td class="tdresaltar2" height="18">Asesino</td>
<td class="td2">7 a 10</td>
<td class="td2">6 a 10</td>
<td class="td2">6 a 9</td>
<td class="td2">5 a 9</td>
<td class="td2">5 a 8</td>
<td class="td2">4 a 8</td>
<td class="td2">4 a 7</td>
<td class="td2">3 a 7</td>
<td class="td2">3 a 6</td>
<td class="td2">2 a 6</td>
</tr>
<tr class='colorcolumna2'><td class="tdresaltar2" height="18">Clérigo</td>
<td class="td2">7 a 10</td>
<td class="td2">6 a 10</td>
<td class="td2">6 a 9</td>
<td class="td2">5 a 9</td>
<td class="td2">5 a 8</td>
<td class="td2">4 a 8</td>
<td class="td2">4 a 7</td>
<td class="td2">3 a 7</td>
<td class="td2">3 a 6</td>
<td class="td2">2 a 6</td>
</tr>
<tr class='colorcolumna1'><td class="tdresaltar2" height="18">Bardo</td>
<td class="td2">7 a 10</td>
<td class="td2">6 a 10</td>
<td class="td2">6 a 9</td>
<td class="td2">5 a 9</td>
<td class="td2">5 a 8</td>
<td class="td2">4 a 8</td>
<td class="td2">4 a 7</td>
<td class="td2">3 a 7</td>
<td class="td2">3 a 6</td>
<td class="td2">2 a 6</td>
</tr>
<tr class='colorcolumna2'><td class="tdresaltar2" height="18">Druida</td>
<td class="td2">7 a 10</td>
<td class="td2">6 a 10</td>
<td class="td2">6 a 9</td>
<td class="td2">5 a 9</td>
<td class="td2">5 a 8</td>
<td class="td2">4 a 8</td>
<td class="td2">4 a 7</td>
<td class="td2">3 a 7</td>
<td class="td2">3 a 6</td>
<td class="td2">2 a 6</td>
</tr>
<tr class='colorcolumna1'><td class="tdresaltar2" height="18">Bandido</td>
<td class="td2">7 a 10</td>
<td class="td2">6 a 10</td>
<td class="td2">6 a 9</td>
<td class="td2">5 a 9</td>
<td class="td2">5 a 8</td>
<td class="td2">4 a 8</td>
<td class="td2">4 a 7</td>
<td class="td2">3 a 7</td>
<td class="td2">3 a 6</td>
<td class="td2">2 a 6</td>
</tr>
<tr class='colorcolumna2'><td class="tdresaltar2" height="18">Ladrón</td>
<td class="td2">8 a 12</td>
<td class="td2">8 a 11</td>
<td class="td2">7 a 11</td>
<td class="td2">7 a 10</td>
<td class="td2">6 a 10</td>
<td class="td2">6 a 9</td>
<td class="td2">5 a 9</td>
<td class="td2">5 a 8</td>
<td class="td2">4 a 8</td>
<td class="td2">4 a 7</td>
</tr>
<tr class='colorcolumna1'><td class="tdresaltar2" height="18">Trabajador</td>
<td class="td2">8 a 11</td>
<td class="td2">7 a 11</td>
<td class="td2">7 a 10</td>
<td class="td2">6 a 10</td>
<td class="td2">6 a 9</td>
<td class="td2">5 a 9</td>
<td class="td2">5 a 8</td>
<td class="td2">4 a 8</td>
<td class="td2">4 a 7</td>
<td class="td2">3 a 7</td>
</tr>
<tr class='colorcolumna2'><td class="tdresaltar2" height="18">Mago</td>
<td class="td2">6 a 8</td>
<td class="td2">5 a 8</td>
<td class="td2">5 a 7</td>
<td class="td2">4 a 7</td>
<td class="td2">4 a 6</td>
<td class="td2">3 a 6</td>
<td class="td2">3 a 5</td>
<td class="td2">2 a 5</td>
<td class="td2">2 a 4</td>
<td class="td2">1 a 4</td>
</tr>
</table>

<br><br><hr noshade width="40%" size="1" color="#959595" align="center"><br><br>

<center>Modificadores de clase:</center><br>

<table align="center">
<tr>
<td class="tdresaltar5" width="5%">Clase</td>
<td class="tdresaltar3" width="12%">Evasión</td>
<td class="tdresaltar3" width="12%">Puntería con Armas Cuerpo a Cuerpo</td>
<td class="tdresaltar3" width="12%">Puntería con Armas de Proyectiles</td>
<td class="tdresaltar3" width="12%">Daño con Armas Cuerpo a Cuerpo</td>
<td class="tdresaltar3" width="12%">Daño con Armas de Proyectiles</td>
<td class="tdresaltar3" width="12%">Daño sin Armas (Wrestling)</td>
<td class="tdresaltar3" width="12%">Posibilidad de Bloquear con Escudo</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar2" height="18">Guerrero</td>
<td class="td2">1</td>
<td class="td2">1</td>
<td class="td2">0.8</td>
<td class="td2">1.1</td>
<td class="td2">0.9</td>
<td class="td2">0.4</td>
<td class="td2">1</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar2" height="18">Cazador</td>
<td class="td2">0.9</td>
<td class="td2">0.8</td>
<td class="td2">1</td>
<td class="td2">0.9</td>
<td class="td2">1.1</td>
<td class="td2">0.4</td>
<td class="td2">0.8</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar2" height="18">Paladín</td>
<td class="td2">0.9</td>
<td class="td2">0.95</td>
<td class="td2">0.75</td>
<td class="td2">0.95</td>
<td class="td2">0.8</td>
<td class="td2">0.4</td>
<td class="td2">1</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar2" height="18">Bandido</td>
<td class="td2">0.7</td>
<td class="td2">0.7</td>
<td class="td2">0.75</td>
<td class="td2">0.9</td>
<td class="td2">0.8</td>
<td class="td2">1.1</td>
<td class="td2">2</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar2" height="18">Asesino</td>
<td class="td2">1.1</td>
<td class="td2">0.9</td>
<td class="td2">0.75</td>
<td class="td2">0.9</td>
<td class="td2">0.8</td>
<td class="td2">0.4</td>
<td class="td2">0.8</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar2" height="18">Pirata</td>
<td class="td2">0.9</td>
<td class="td2">0.8</td>
<td class="td2">0.75</td>
<td class="td2">0.8</td>
<td class="td2">0.75</td>
<td class="td2">0.4</td>
<td class="td2">0.75</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar2" height="18">Ladrón</td>
<td class="td2">1.1</td>
<td class="td2">0.75</td>
<td class="td2">0.8</td>
<td class="td2">0.8</td>
<td class="td2">0.75</td>
<td class="td2">0.4</td>
<td class="td2">0.7</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar2" height="18">Clérigo</td>
<td class="td2">0.75</td>
<td class="td2">0.85</td>
<td class="td2">0.7</td>
<td class="td2">0.8</td>
<td class="td2">0.7</td>
<td class="td2">0.4</td>
<td class="td2">0.9</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar2" height="18">Bardo</td>
<td class="td2">1.075</td>
<td class="td2">0.7</td>
<td class="td2">0.7</td>
<td class="td2">0.75</td>
<td class="td2">0.7</td>
<td class="td2">0.4</td>
<td class="td2">0.8</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar2" height="18">Mago</td>
<td class="td2">0.4</td>
<td class="td2">0.55</td>
<td class="td2">0.5</td>
<td class="td2">0.5</td>
<td class="td2">0.5</td>
<td class="td2">0.4</td>
<td class="td2">0.6</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar2" height="18">Druida</td>
<td class="td2">0.65</td>
<td class="td2">0.65</td>
<td class="td2">0.85</td>
<td class="td2">0.7</td>
<td class="td2">0.75</td>
<td class="td2">0.4</td>
<td class="td2">0.75</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar2" height="18">Trabajador</td>
<td class="td2">0.8</td>
<td class="td2">0.75</td>
<td class="td2">0.65</td>
<td class="td2">0.8</td>
<td class="td2">0.7</td>
<td class="td2">0.4</td>
<td class="td2">0.7</td>
</tr>

</table>
<p>


<br>


</p>


<table id="menuinfoespecial" align="center" width="70%">
<tr>
<td align="center" valign="middle" style="background:url(imagenes/manual/menuinfo_fondo_arrow.gif);"><img src="imagenes/manual/menuinfo_arrow.gif"> <font color="#F0F0F0"><b>Aviso</b></font> <img src="imagenes/manual/menuinfo_arrow.gif"></td>
</tr>
<tr>
<td align="left" valign="top" style="background:url(imagenes/manual/menuinfo_fondo.gif) bottom repeat-x;padding-left:3px;">

Algunas clases no usan todos sus modificadores porque no pueden equipar un item, como por ej. el mago necesitaría poder equipar un escudo para poder utilizar el bloqueo con escudo.

</td>
</tr>
</table>




<br><br><hr noshade width="40%" size="1" color="#959595" align="center"><br><br>



<center>Puntos de golpe, energía y maná que ganará un personaje al subir de nivel:</center><br>

<table align="center" width="70%">
<tr>
<td class="tdresaltar5" height="18" width="5%">Clase</td>
<td class="tdresaltar3">Puntos de Golpe Ganados por Nivel</td>
<td class="tdresaltar3">Puntos de Energía Ganados por Nivel</td>
<td class="tdresaltar3">Puntos de Maná Ganados por Nivel</td>
</tr>
<tr class='colorcolumna1'><td class="tdresaltar2" height="18">Guerrero</td>
<td class="td2">3 (desde nivel 36 en adelante gana 2)</td>
<td class="td2">15</td>
<td class="td2">-</td>
</tr>
<tr class='colorcolumna2'><td class="tdresaltar2" height="18">Cazador</td>
<td class="td2">3 (desde nivel 36 en adelante gana 2)</td>
<td class="td2">15</td>
<td class="td2">-</td>
</tr>
<tr class='colorcolumna1'><td class="tdresaltar2" height="18">Paladín</td>
<td class="td2">3 (desde nivel 36 en adelante gana 1)</td>
<td class="td2">15</td>
<td class="td2">Inteligencia</td>
</tr>
<tr class='colorcolumna2'><td class="tdresaltar2" height="18">Asesino</td>
<td class="td2">3 (desde nivel 36 en adelante gana 1)</td>
<td class="td2">15</td>
<td class="td2">Inteligencia</td>
</tr>
<tr class='colorcolumna1'><td class="tdresaltar2" height="18">Bandido</td>
<td class="td2">3 (desde nivel 36 en adelante gana 1)</td>
<td class="td2">15</td>
<td class="td2">Inteligencia/3*2</td>
</tr>
<tr class='colorcolumna2'><td class="tdresaltar2" height="18">Pirata</td>
<td class="td2">3</td>
<td class="td2">15</td>
<td class="td2">-</td>
</tr>
<tr class='colorcolumna1'><td class="tdresaltar2" height="18">Ladrón</td>
<td class="td2">1</td>
<td class="td2">18</td>
<td class="td2">-</td>
</tr>
<tr class='colorcolumna2'><td class="tdresaltar2" height="18">Clérigo</td>
<td class="td2">2</td>
<td class="td2">15</td>
<td class="td2">Inteligencia * 2</td>
</tr>
<tr class='colorcolumna1'><td class="tdresaltar2" height="18">Bardo</td>
<td class="td2">2</td>
<td class="td2">15</td>
<td class="td2">Inteligencia * 2</td>
</tr>
<tr class='colorcolumna2'><td class="tdresaltar2" height="18">Druida</td>
<td class="td2">2</td>
<td class="td2">15</td>
<td class="td2">Inteligencia * 2</td>
</tr>
<tr class='colorcolumna1'><td class="tdresaltar2" height="18">Mago</td>
<td class="td2">1</td>
<td class="td2">14</td>
<td class="td2">Inteligencia * 2.8</td>
</tr>
<tr class='colorcolumna2'><td class="tdresaltar2" height="18">Trabajador</td>
<td class="td2">2</td>
<td class="td2">40</td>
<td class="td2">-</td>
</tr>
</table>

<br>

<table id="menuinfoespecial" align="center" width="70%">
<tr>
<td align="center" valign="middle" style="background:url(imagenes/manual/menuinfo_fondo_arrow.gif);"><img src="imagenes/manual/menuinfo_arrow.gif"></td>
</tr>
<tr>
<td align="left" valign="top" style="background:url(imagenes/manual/menuinfo_fondo.gif) bottom repeat-x;padding-left:3px;">

<img src="imagenes/manual/menuinfo_flechita.gif"> <b>Int:</b><br>
Significa puntos en atributo Inteligencia, ej: si un Paladín tiene 18 de Int entonces ganará 18 puntos de maná al subir de nivel.<br><br>
<img src="imagenes/manual/menuinfo_flechita.gif"> <b>Límite de Maná:</b><br>
Significa que no podés tener más de tal cantidad.<br><br>
<img src="imagenes/manual/menuinfo_flechita.gif"> <b>Límite de Golpe Min/Max:</b><br>
Hasta nivel 35 podés tener como máximo 99/99 puntos de golpe, luego desde nivel 36 en adelante podés pasar ese límite hasta un máximo de 999/999.
</td>
</tr>
</table>



<br><br><hr noshade width="40%" size="1" color="#959595" align="center"><br><br>


<center>Puntos Iniciales de Maná, Vida, Energía y Golpe (al crear un personaje):</center><br>


<table align="center" width="60%">
<tr>
<td class="td7">
<span class="resaltar"><u>Puntos de Vida iniciales</u>:</span><br><br>
<b>15 + aleatoriamente entre 1 y (constitución / 3).</b><br><br>
<span class="italic">Ej, si crean un personaje con 20 Constitución:</span><br>
15 + aleatoriamente entre 1 y (20 / 3) =<br>
15 + aleatoriamente entre 1 y 6 = <span class="italic">(ese 6 sale de "20 / 3 = 6,6" o sea 6)</span>.
</td>
</tr>
<tr><td height="6"></td></tr>
<tr>
<td class="td7">
<span class="resaltar"><u>Puntos de Maná iniciales</u>:</span><br><br>
<div align="left">
- <u>Mago</u>: <b>Inteligencia del PJ * 3</b> <span class="italic">(ej. teniendo 18 </span>
inteligencia<span class="italic"> empezará con 54)</span>.<br>
- <u>Clérigo, Druida, Bardo y Asesino</u>: <b>50.</b><br>
- <u>Bandido</u>: <b>150.</b><br>
- <u>Paladín</u>: <b>empieza con 0 pero desde lvl 2 empieza a ganar maná.</b><br>
- <u>Demás clases</u>: <b>no tienen maná.</b>
</div>
</td>
</tr>
<tr><td height="6"></td></tr>
<tr>
<td class="td7">
<span class="resaltar"><u>Puntos de Energía iniciales</u>:</span><br><br>
<b>20 + aleatoriamente entre 1 y (Agilidad / 6).</b><br><br>
<span class="italic">Ej, si crean un personaje con 6 de Agilidad:</span><br>
20 + entre 1 y (6 / 6) =<br>
20 + entre 1 y 1 = 21 puntos energía.
</td>
</tr>
<tr><td height="6"></td></tr>
<tr>
<td class="td7">
<span class="resaltar"><u>Puntos de Golpe Min/Max iniciales</u>:</span><br><br>
<b>1 / 2.</b>
</td>

</tr>


<!--
<table class="titulo_seccion"><tr><td><a name="ver"></a>- Combate y Fogatas -</td></tr></table><br><table width="98%" align="center"><tr><td><center><u><span class="resaltar">COMBATE</span></u></center><br><br>

<span class="resaltarcmd"><font size="2"><u><b>Algunas aclaraciones:</b></u></font></span><br><br>
<br>
-Para atacar a usuarios ciudadanos el seguro debe estar desactivado, si está activado sólo podrás atacar a criaturas y criminales. Por ejemplo algunas ciudades y el Dungeon Newbie son zonas seguras, esto impide que se pueda atacar a otros usuarios aunque el seguro esté desactivado.<br>
<br>
-Los golpes pueden ser acertados en cualquier parte del cuerpo (piernas, brazos, torso y cabeza) aunque sólo hace diferencia entre la cabeza y el resto de las partes del cuerpo.<br>
<br>
-El daño y defensa mágica/o o física/o es aleatorio, por ejemplo: un arma con daño 8/12 significa que podes hacer entre 8 y 12 de daño, lo mismo pasa con las armaduras, cascos y hechizos.<br>
<br>
-En todo lo referido a combate (daño, evasión, etc.) influye el nivel, clase, puntos en atributo agilidad/fuerza y skill points del personaje.<br>



<br><br><br><hr noshade width="55%" size="1" color="#959595" align="center"><br><br>



<center><u><span class="resaltar">FOGATAS Y ENERGÍA</span></u></center><br><br>

Debes saber que si los indicadores de sed y hambre están vacíos, la energía y vida no se recuperarán con el paso del tiempo.<br>
Si no vestís al personaje la energía irá consumiéndose y en caso de estar en algún dungeon existe la posibilidad de morir de frío. Otra forma de perder la energía es mediante la lluvia, en este caso sólo se recuperará la energía si están bajo techo.<br>
<br>
<b>PARA HACER RAMITAS:</b> necesitas tener equipada una <span class="resaltarcmd">DAGA (NO NEWBIE)</span> (son con la Daga común se puede, las demás Dagas +1, etc. no sirven), luego debés tirar 3 o más leños al piso, pulsar <span class="resaltarcmd">TECLA USAR (U o DOBLE CLICK)</span> y clickear sobre los leños (ojo: no podes hacer ramitas si tenes el personaje sobre los leños), debes repetir el proceso hasta que logres hacerlas.<br>
<br>
<b>PARA HACER FOGATAS:</b> hacer <span class="resaltarcmd">DOBLE CLICK</span> sobre las ramitas en el piso.<br>
<br>
Para descansar debés ponerte cerca de una fogata y tipear el comando <span class="resaltarcmd">/DESCANSAR</span>, al hacerlo recuperarás vida y energía.<br>
Tenes que saber que la vida, al igual que la energía, se recupera con el tiempo aunque tarda mucho más en hacerlo, de este modo, la mejor manera de recuperar vida es acudiendo al sacerdote para que los cure con el comando <span class="resaltarcmd">/CURAR</span> o usando pociones y hechizos de curación.</td></tr></table><br><br>
-->

</table><br><br>
<center><a href="skills.php#ver"> Anterior</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href="ciudades.php#ver"> Siguiente</a></center>
<br><br><table class="titulo_seccion"><tr><td>---</td></tr></table><table class="volver_indice"><tr valign="middle"><td align="left">&nbsp;<a href="index.php">&lt;&lt;Ir al Índice del Manual</a></td></table>


</td>
</tr>
</table>

</body>


<meta http-equiv="content-type" content="text/php;charset=ISO-8859-1">
</php>
