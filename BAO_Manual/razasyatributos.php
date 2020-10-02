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
Los humanos son la raza m�s com�n y equilibrada en Argentum. Debido a sus habilidades son recomendables para casi cualquier profesi�n o clase. Se destacan principalmente en resistir ataques m�gicos y f�sicos, siendo tambi�n muy �giles y fuertes.
</td>
</tr>

<tr><td height="2"></td></tr>

<tr class='colorcolumna2'><td class="tdresaltar">Elfos<br><img src="imagenes/juego/cara_elfo.png" width="68" height="16" border="0"></td>
<td class="td3" height="84">
Los elfos son seres pac�ficos y de gran sabidur�a, que habitan los rincones m�s apartados de los bosques de BenderAO en una gran comunidad. Son seres de gran belleza, con sus largos cabellos y grandes orejas puntiagudas. Los elfos presentan un tama�o similar a los de los humanos pero de contextura f�sica mucho m�s delgada y de huesos livianos, pero sorprendentemente duros al momento de batallar. Debido a su gran sabidur�a los elfos pueden meditar y canalizar toda su energ�a, por lo que generalmente suelen ser excelentes hechiceros.
</td>
</tr>

<tr><td height="2"></td></tr>

<tr class='colorcolumna1'><td class="tdresaltar">Elfos Oscuros<br><img src="imagenes/juego/cara_elfooscuro.png" width="68" height="16" border="0"></td>
<td class="td3" height="84">
Los Elfos Oscuros, comprenden el m�s siniestro y malvado segmento de la poblaci�n �lfica. 
Desterrada por los grandes dioses �lficos, esta raza derivada de los elfos suele habitar las zonas m�s desoladas y oscuras de todo Bender. 
Si bien a�n conservan las principales caracter�sticas �lficas, los elfos oscuros, debido a su gran maldad, han perdido el sentido de la sensatez y el equilibrio racional, por lo cual han ido perdiendo su magn�fica carisma y parte de su poder�o vital. No obstante, a causa de su gran af�n por el lado oscuro y la magia negra, todav�a siguen siendo temibles adversarios que poseen una gran astucia y poder�o f�sico.
</td>
</tr>

<tr><td height="2"></td></tr>

<tr class='colorcolumna2'><td class="tdresaltar">Enanos<br><img src="imagenes/juego/cara_enano.png" width="68" height="16" border="0"></td>
<td class="td3" height="84">
Seres de poca altura, gru�ones en su m�ximo esplendor, fuertes y de extremidades muy robustas, los enanos son conocidos por todas las tierras de Bender como una gran raza de guerreros natos. Tratan a los de su raza como hermanos y a quienes no son lo son, como seres inferiores que, de una manera u otra representan una amenaza para su comunidad. Sus principales caracter�sticas son el combate cuerpo a cuerpo, en el cual se ven en ventaja dada su gran fuerza y resistencia f�sica. Los enanos son famosos por sus escasos conocimientos en las artes m�gicas, esto es debido a su gran odio hacia los Elfos y a los m�todos rebuscados que estos utilizan en combate, prefiriendo usar su potencial para absorver todo el da�o posible y estar en el frente de la batalla.
</td>
</tr>

<tr><td height="2"></td></tr>

<tr class='colorcolumna1'><td class="tdresaltar">Gnomos<br><img src="imagenes/juego/cara_gnomo.png" width="68" height="16" border="0"></td>
<td class="td3" height="84">
Los gnomos son una raza de criaturas muy amigables. Son comunes en la mayor�a de las regiones de Bender y tienen contextura f�sica m�s peque�a y menos robusta que la de los enanos. Esta raza conserva un gran parentesco con ellos lo que lleva a pensar que pueden llegar a ser descendientes lejanos de los mismos. A diferencia de los enanos, los gnomos poseen una notable agilidad, equiparable a la de los elfos en general. Sin embargo, son muy d�biles para manejar correctamente armas de da�o f�sico y cargar con pesadas armaduras. Gracias a su af�n por el ilusionismo esta raza est� muy familiarizada con el uso de todo tipo de objetos m�gicos, lo cual los convierte en la raza m�s indicada para lanzar extensos conjuros y sortilegios de menor clase.
</tr>
</table>


<br><br>
<center><u><span class="resaltar">Atributos</span></u></center><br><br>
<span class="size">
Los atributos o "dados" se generan aleatoriamente al tirar dados en la pantalla de creaci�n personaje. Estos atributos son los que determinan qu� tan bueno es el personaje, por lo tanto si tiene puntos bajos va a ser d�bil, mientras que con puntos mayores, ser� mucho m�s fuerte.
El m�ximo que puede tener en cualquier atributo es 18.<br><br>

Eso si, atenci�n: No hace falta sacar en todos los atributos el m�ximo, todo depende la clase y raza que se eliga. Por ejemplo, si yo me voy a crear un Mago, no hace falta que tenga puntos en fuerza por que no es el �rea en que se destaca. Al reves pasar�a con el guerrero, que no necesitar�a puntos en inteligencia debido a que no utiliza mana.<br><br>

En la pantalla de creaci�n de personaje, en la parte superior izquierda podr�n ver la imagen detallada aqu� abajo.<br><br>

<center><img src="imagenes\juego/TirarDados.jpg" alt=""></center><br><br>

Aqu� la lista:<br><br>

<li>Fuerza:<br>
Es la fuerza f�sica de nuestro personaje, es importante para las clases que se enfrentan cuerpo a cuerpo, ya que con una fuerza alta pegaran mucho mas fuerte.
</li><br><br>
<li>Agilidad:<br>
Esta es la representaci�n de la velocidad y con puntos altos m�s posibilidad de esquivar golpes se tienen y tambi�n mas posibilidad de acertarlos, es importante para todas las clases.
</li><br><br>
<li>Carisma:<br>
Mientras m�s puntos tengas en este atributo, podr�s domar animales m�s grandes y fuertes, tambi�n te ayudara a crear partys para facilitar el entrenamiento y fundar clanes.
</li><br><br>
<li>Constituci�n: <br>
Esta es la cantidad de vida que tendr� el personaje. Mientras m�s puntos en constrituci�n tengas, m�s vida tendr� tu personaje.
</li><br><br>
<li>Inteligencia <br>
Representa la man�, de esta caracter�stica depende la cantidad de man� que obtengas al subir de nivel. Es de vital importancia para las clases que utilizan magia.
</li>
<br><br><br>
<center><u><span class="resaltar">Monificadores:</span></u></center><br><br>

Como puedes ver, cada raza difiere mucho de las otras. Ac� dejar� la guia de modificadores actualizada de cada una:<br><br>

<table align="center" width="52%">
<tr>
<td class="tdresaltar5" height="18" width="16%">Raza</td>
<td class="tdresaltar3" width="16%">Fuerza</td>
<td class="tdresaltar3" width="16%">Agilidad</td>
<td class="tdresaltar3" width="16%">Inteligencia</td>
<td class="tdresaltar3" width="16%">Carisma</td>
<td class="tdresaltar3" width="16%">Constituci�n</td>
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

<center>Puntos de vida aleatorios que ganar� un personaje al subir de nivel seg�n su constituci�n:</center>

<br>
<br>

NOTA: Para mayor informaci�n, utilice el comando /Promedio y podr� averiguar si su personaje se halla con una vida 'decente'. Tenga en cuenta que el promedio de cualquier clase y raza puede oscilar entre -2 y +8 puntos de vida ... Los dioses de BenderAO constantemente buscan el balance total en la vida de los mortales benderianos para que se destaquen por su astucia y/o fortaleza, y no se f�en tanto de la suerte que puedan llegar a tener.

<br>
<br>

<table class="tablasinborde" align="center" width="88%">
<tr>
<td></td>
<td colspan="10" class="tdresaltar5">Constituci�n</td>
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
<tr class='colorcolumna1'><td class="tdresaltar2" height="18">Palad�n</td>
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
<tr class='colorcolumna2'><td class="tdresaltar2" height="18">Cl�rigo</td>
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
<tr class='colorcolumna2'><td class="tdresaltar2" height="18">Ladr�n</td>
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
<td class="tdresaltar3" width="12%">Evasi�n</td>
<td class="tdresaltar3" width="12%">Punter�a con Armas Cuerpo a Cuerpo</td>
<td class="tdresaltar3" width="12%">Punter�a con Armas de Proyectiles</td>
<td class="tdresaltar3" width="12%">Da�o con Armas Cuerpo a Cuerpo</td>
<td class="tdresaltar3" width="12%">Da�o con Armas de Proyectiles</td>
<td class="tdresaltar3" width="12%">Da�o sin Armas (Wrestling)</td>
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

<tr class='colorcolumna1'><td class="tdresaltar2" height="18">Palad�n</td>
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

<tr class='colorcolumna1'><td class="tdresaltar2" height="18">Ladr�n</td>
<td class="td2">1.1</td>
<td class="td2">0.75</td>
<td class="td2">0.8</td>
<td class="td2">0.8</td>
<td class="td2">0.75</td>
<td class="td2">0.4</td>
<td class="td2">0.7</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar2" height="18">Cl�rigo</td>
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

Algunas clases no usan todos sus modificadores porque no pueden equipar un item, como por ej. el mago necesitar�a poder equipar un escudo para poder utilizar el bloqueo con escudo.

</td>
</tr>
</table>




<br><br><hr noshade width="40%" size="1" color="#959595" align="center"><br><br>



<center>Puntos de golpe, energ�a y man� que ganar� un personaje al subir de nivel:</center><br>

<table align="center" width="70%">
<tr>
<td class="tdresaltar5" height="18" width="5%">Clase</td>
<td class="tdresaltar3">Puntos de Golpe Ganados por Nivel</td>
<td class="tdresaltar3">Puntos de Energ�a Ganados por Nivel</td>
<td class="tdresaltar3">Puntos de Man� Ganados por Nivel</td>
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
<tr class='colorcolumna1'><td class="tdresaltar2" height="18">Palad�n</td>
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
<tr class='colorcolumna1'><td class="tdresaltar2" height="18">Ladr�n</td>
<td class="td2">1</td>
<td class="td2">18</td>
<td class="td2">-</td>
</tr>
<tr class='colorcolumna2'><td class="tdresaltar2" height="18">Cl�rigo</td>
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
Significa puntos en atributo Inteligencia, ej: si un Palad�n tiene 18 de Int entonces ganar� 18 puntos de man� al subir de nivel.<br><br>
<img src="imagenes/manual/menuinfo_flechita.gif"> <b>L�mite de Man�:</b><br>
Significa que no pod�s tener m�s de tal cantidad.<br><br>
<img src="imagenes/manual/menuinfo_flechita.gif"> <b>L�mite de Golpe Min/Max:</b><br>
Hasta nivel 35 pod�s tener como m�ximo 99/99 puntos de golpe, luego desde nivel 36 en adelante pod�s pasar ese l�mite hasta un m�ximo de 999/999.
</td>
</tr>
</table>



<br><br><hr noshade width="40%" size="1" color="#959595" align="center"><br><br>


<center>Puntos Iniciales de Man�, Vida, Energ�a y Golpe (al crear un personaje):</center><br>


<table align="center" width="60%">
<tr>
<td class="td7">
<span class="resaltar"><u>Puntos de Vida iniciales</u>:</span><br><br>
<b>15 + aleatoriamente entre 1 y (constituci�n / 3).</b><br><br>
<span class="italic">Ej, si crean un personaje con 20 Constituci�n:</span><br>
15 + aleatoriamente entre 1 y (20 / 3) =<br>
15 + aleatoriamente entre 1 y 6 = <span class="italic">(ese 6 sale de "20 / 3 = 6,6" o sea 6)</span>.
</td>
</tr>
<tr><td height="6"></td></tr>
<tr>
<td class="td7">
<span class="resaltar"><u>Puntos de Man� iniciales</u>:</span><br><br>
<div align="left">
- <u>Mago</u>: <b>Inteligencia del PJ * 3</b> <span class="italic">(ej. teniendo 18 </span>
inteligencia<span class="italic"> empezar� con 54)</span>.<br>
- <u>Cl�rigo, Druida, Bardo y Asesino</u>: <b>50.</b><br>
- <u>Bandido</u>: <b>150.</b><br>
- <u>Palad�n</u>: <b>empieza con 0 pero desde lvl 2 empieza a ganar man�.</b><br>
- <u>Dem�s clases</u>: <b>no tienen man�.</b>
</div>
</td>
</tr>
<tr><td height="6"></td></tr>
<tr>
<td class="td7">
<span class="resaltar"><u>Puntos de Energ�a iniciales</u>:</span><br><br>
<b>20 + aleatoriamente entre 1 y (Agilidad / 6).</b><br><br>
<span class="italic">Ej, si crean un personaje con 6 de Agilidad:</span><br>
20 + entre 1 y (6 / 6) =<br>
20 + entre 1 y 1 = 21 puntos energ�a.
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
-Para atacar a usuarios ciudadanos el seguro debe estar desactivado, si est� activado s�lo podr�s atacar a criaturas y criminales. Por ejemplo algunas ciudades y el Dungeon Newbie son zonas seguras, esto impide que se pueda atacar a otros usuarios aunque el seguro est� desactivado.<br>
<br>
-Los golpes pueden ser acertados en cualquier parte del cuerpo (piernas, brazos, torso y cabeza) aunque s�lo hace diferencia entre la cabeza y el resto de las partes del cuerpo.<br>
<br>
-El da�o y defensa m�gica/o o f�sica/o es aleatorio, por ejemplo: un arma con da�o 8/12 significa que podes hacer entre 8 y 12 de da�o, lo mismo pasa con las armaduras, cascos y hechizos.<br>
<br>
-En todo lo referido a combate (da�o, evasi�n, etc.) influye el nivel, clase, puntos en atributo agilidad/fuerza y skill points del personaje.<br>



<br><br><br><hr noshade width="55%" size="1" color="#959595" align="center"><br><br>



<center><u><span class="resaltar">FOGATAS Y ENERG�A</span></u></center><br><br>

Debes saber que si los indicadores de sed y hambre est�n vac�os, la energ�a y vida no se recuperar�n con el paso del tiempo.<br>
Si no vest�s al personaje la energ�a ir� consumi�ndose y en caso de estar en alg�n dungeon existe la posibilidad de morir de fr�o. Otra forma de perder la energ�a es mediante la lluvia, en este caso s�lo se recuperar� la energ�a si est�n bajo techo.<br>
<br>
<b>PARA HACER RAMITAS:</b> necesitas tener equipada una <span class="resaltarcmd">DAGA (NO NEWBIE)</span> (son con la Daga com�n se puede, las dem�s Dagas +1, etc. no sirven), luego deb�s tirar 3 o m�s le�os al piso, pulsar <span class="resaltarcmd">TECLA USAR (U o DOBLE CLICK)</span> y clickear sobre los le�os (ojo: no podes hacer ramitas si tenes el personaje sobre los le�os), debes repetir el proceso hasta que logres hacerlas.<br>
<br>
<b>PARA HACER FOGATAS:</b> hacer <span class="resaltarcmd">DOBLE CLICK</span> sobre las ramitas en el piso.<br>
<br>
Para descansar deb�s ponerte cerca de una fogata y tipear el comando <span class="resaltarcmd">/DESCANSAR</span>, al hacerlo recuperar�s vida y energ�a.<br>
Tenes que saber que la vida, al igual que la energ�a, se recupera con el tiempo aunque tarda mucho m�s en hacerlo, de este modo, la mejor manera de recuperar vida es acudiendo al sacerdote para que los cure con el comando <span class="resaltarcmd">/CURAR</span> o usando pociones y hechizos de curaci�n.</td></tr></table><br><br>
-->

</table><br><br>
<center><a href="skills.php#ver"> Anterior</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href="ciudades.php#ver"> Siguiente</a></center>
<br><br><table class="titulo_seccion"><tr><td>---</td></tr></table><table class="volver_indice"><tr valign="middle"><td align="left">&nbsp;<a href="index.php">&lt;&lt;Ir al �ndice del Manual</a></td></table>


</td>
</tr>
</table>

</body>


<meta http-equiv="content-type" content="text/php;charset=ISO-8859-1">
</php>
