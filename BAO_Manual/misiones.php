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

<br><br><br>




<table class="titulo_seccion"><tr><td><a name="ver"></a>- Sistema de misiones -</td></tr></table><br><table width="98%" align="center"><tr><td><c

<center><center><img src="imagenes\juego/AceptarMision.png" width="300px" height="390px"/></center></center><br>
<center>Para aceptar una mision cuando hagas doble click en algun NPC que este señalizado con el signo de misiones deberas elejir una de las misiones que te ofresaca y luego presiona el boton aceptar como esta señalizado en la imagen.</center>

<br><br>

<center><center><img src="imagenes\juego/Mision.png" width="250px" height="250px"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="imagenes\juego/RegistroMisiones.png" width="300px" height="390px"/></center></center><br><br>
<center> Para poder abrir el menu de misiones deberas hacer click en el boton seleccionado y se te desplegara una ventana emergente con los pasos a seguir durante tu mision.
 En caso contrario de no estar haciendo ninguna mision se abrira el "Registro de misiones" en el cual aparecera un listado de todas las misiones realizadas y sus detalles</center>

<br><br>

<center><center><img src="imagenes\juego/Abandonar.png" width="250px" height="250px"/></center></center><br>
<center>Una ves que clikees el boton de misiones teniendo una en curso te aparecera esta tabla desplegada la cual te indicara cuales seran tus pasos a seguir a lo largo de la misma.
Tambien puedes abandonar una mision por si quieres hacer otra haciendo click en el boton señalizado en la foto.</center>
 

<br><br><br>

<table class="titulo_seccion"><tr><td><a name="ver"></a>- Misiones -</td></tr></table><br><table width="98%" align="center"><tr><td>
En BenderAO hay varias misiones, las cuales tienen facilidad para concretar y el resultado es obtener objetos, oro y muchisimas cosas mas las cuales haran que su estadia sea mas factible.


<center><img src="imagenes\juego/Fethersor.png" width="100px" height="130px"/></center>
<center>Ullathorpe ( 1 552 527)</center>
<br>

<table align="center" width="92%">

<tr>
<td class="tdresaltar3" width="15%">Nombre de la mision</td>
<td class="tdresaltar3" width="40%">DESCRIPCION</td>
<td class="tdresaltar3" width="25%">Recompensas</td>
<td class="tdresaltar3" width="20%">Requerimientos</td>
</tr>


<tr class='colorcolumna1'><td class="tdresaltar" height="90">Cacería de Murciélagos</td>
<td class="td3">1-Matar 20 Murciélagos<br></td>
<td class="td3"> Exp:300</br>Oro:3500</td>
<td class="td3"> - </tr>
</tr>


<tr class='colorcolumna2'><td class="tdresaltar" height="90">Cacería de Lobos</td>
<td class="td3">1-Matar 20 lobos<br>
2- Entregar la pieles a Fetherson</td>
<td class="td3"> Exp:1000<br>Oro:10000</td>
<td class="td3"> - </td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="90">Cacería de Hombres Lobo y Araña</td>
<td class="td3">1-Matar 2 hombres lobos<br>
2-Matar 1 araña gigante</td>
<td class="td3"> Exp:14000<Br>Oro:20000</td>
<td class="td3"> Lvl 11</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="90">Cacería de Osos Pardos</td>
<td class="td3">1-Matar 15 Osos pardos<br>
2-Entregarle 15 pieles de osos pardos a Fetherson</td>
<td class="td3"> Exp:12000<Br>Oro:25000</td>
<td class="td3"> Lvl 15</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="90">Cacería de Ogros y Tarántulas</td>
<td class="td3">1-Matar 1 ogro<br>
2-Matar 5 tarantulas</td>
<td class="td3"> Exp:10000<Br>Oro:40000</td>
<td class="td3"> Lvl 25
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="90">Cacería Furtiva de Lobos</td>
<td class="td3">1-Matar 100 lobos<br></td>
<td class="td3"> Exp:35000</td>
<td class="td3"> Lvl 30
</tr>

</table>

<br><br><br>

<center><img src="imagenes\juego/Jena.png" width="100px" height="130px"/></center>
<center>Ullathorpe ( 1 535 526)</center>
<center>Angrod ( 1 676 389)</center>
<center>Murus ( 1 737 698)</center>
<center>Turgon ( 1 469 833)</center>

<br>

<table align="center" width="92%">

<tr>
<td class="tdresaltar3" width="15%">Nombre de la mision</td>
<td class="tdresaltar3" width="40%">DESCRIPCION</td>
<td class="tdresaltar3" width="25%">Recompensas</td>
<td class="tdresaltar3" width="20%">Requerimientos</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="90">El bosque aragnido</td>
<td class="td3">1-Matar 20 tarantulas<br>
2-Matar 10 arañas pollito gigantes<br>
3-Matar 10 esqueletos guerreros<br></td>
<td class="td3"> Exp:20.000<Br>Oro:30.0000</td>
<td class="td3"> Lvl 18 </td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="90">Amenza en catacumbas</td>
<td class="td3">1-Matar 10 Lord orcos<br>
2- Matar 20 Behoelder<Br>
3- Matar 10 arañas gigantes<br></td>
<td class="td3"> Exp:15.000<Br>Oro:40.000</td>
<td class="td3"> Lvl 18 </td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="90">El desierto benderiano</td>
<td class="td3">1-Matar 30 Ogros egipcios<br></td>
<td class="td3"> Exp:50.000<Br>Oro:50.000</td>
<td class="td3"> Lvl 20 </td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="90">Bosque encantado</td>
<td class="td3">1-Matar 25 Enths<br></td>
<td class="td3"> Exp:25.0000<Br>Oro:50.000</td>
<td class="td3"> Lvl 20 </td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="90">Dominando el dragon</td>
<td class="td3">1-Matar 10 Engrendos de las profundidades<br>
2-Matar 10 Ogros<Br>
3-Matar 10 Behoelder<Br>
4-Matar 10 Orcos brujos<Br>
5-Matar 10 Djinn de viento<Br></td>
<td class="td3"> Exp:50.000<Br>Oro:100.000</td>
<td class="td3"> Lvl 20 </td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="90">Aventura rocosa</td>
<td class="td3">1-Matar 5 Golems de piedra<br></td>
<td class="td3"> Exp:40.000<Br>Oro:80.000</td>
<td class="td3"> Lvl 25 </td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="90">Piratas del caribe</td>
<td class="td3">1-Matar 20 Galeones piratas<br></td>
<td class="td3"> Exp:30.000<Br>Oro:40.000</td>
<td class="td3"> Lvl 22 </td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="90">Desafio en piramides</td>
<td class="td3">1-Matar 10 Impugre de barro<br>
2-Matar 10 Anubis<Br>
3-Matar 5 Momias gigantes<Br>
4-Matar 5 Momias pequeñas protectoras<Br>
5-Matar 10 Guardianes de tutankamon<Br></td>
<td class="td3"> Exp:100.000<Br>Oro:100.000</td>
<td class="td3"> Lvl 27 </td>
</tr>

</table>

<br><br><br>

<center><img src="imagenes\juego/Rhomul.png" width="100px" height="130px"/></center>
<center>Ullathorpe ( 1 535 526)</center>
<center>Harrogath ( 1 811 569)</center>
<center>Angrod ( 1 670 389)</center>
<center>Murus ( 1 731 698)</center>
<center>Turgon ( 1 463 833)</center>
<br>

<table align="center" width="92%">

<tr>
<td class="tdresaltar3" width="15%">Nombre de la mision</td>
<td class="tdresaltar3" width="40%">DESCRIPCION</td>
<td class="tdresaltar3" width="25%">Recompensas</td>
<td class="tdresaltar3" width="20%">Requerimientos</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="90">Morgan y el tesoro perdido I</td>
<td class="td3">1-Hablar con Morgan<br>
2-Hablar con el capitan en el barco<Br>
3-Matar 10 Galeones fantasmales<Br>
4-Entregarle los 10 sables a morgan<Br>
5-Hablar con morgan<Br>
6-Descubrir el tesoro con morgan<Br>
7-Entregarle a morgan el baul abierto<Br></td>
<td class="td3"> Exp:10.000<Br>Oro:60.000</td>
<td class="td3"> Lvl 25 </td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="90">Morgan y el tesoro perdido II</td>
<td class="td3">1-Hablar con Morgan<br>
2-Hablar con un decapitado impuro y matarlo<Br>
3-Matar un demonio<Br>
4-Hablar con el gobernador de Harrogath<Br>
5-Matar 10 osos polares y entregar sus pieles a Morgan<Br>
6-Descubrir el tesoro con Morgan<Br>
7-Entregar a Morgan el baul cerrado<Br></td>
<td class="td3"> Exp:30.000<Br>Oro:150.000</td>
<td class="td3"> Lvl 30 </td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="90">Morgan y el tesoro pedido III</td>
<td class="td3">1-Hablar con Morgan <br>
2-Matar 10 Enths y entregar 500 de leña a Morgan<Br>
3-Matar 15 Galeones piratas<Br>
4-Matar 1 Kraken<Br>
5-Encontrar el cofre del tesoro en isla Kraken<Br>
6-Entregar a Morgan el tesoro de Tiral<Br></td>
<td class="td3"> Exp:70.000<Br>Oro:100.000</td>
<td class="td3"> Lvl 35 </td>
</tr>
</table>

<br><Br><br>

<center><img src="imagenes\juego/Thalisha.png" width="100px" height="130px"/></center>
<center> Harrogath ( 1 811 569)</center>
<br>

<table align="center" width="92%">

<tr>
<td class="tdresaltar3" width="15%">Nombre de la mision</td>
<td class="tdresaltar3" width="40%">DESCRIPCION</td>
<td class="tdresaltar3" width="25%">Recompensas</td>
<td class="tdresaltar3" width="20%">Requerimientos</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="90">Aventura elemental</td>
<td class="td3">1-Matar 5 elemenles de agua<br></td>
<td class="td3"> Exp:30.000<Br>Oro:20.000<br>Invocar elemental de agua<br></td>
<td class="td3"> Lvl 28 </td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="90">Dragones marinos</td>
<td class="td3">1-Matar 20 Leviathanes<br></td>
<td class="td3"> Exp:150.000<Br>Oro:50.000<br>3 Monedas de Plata</td>
<td class="td3"> Lvl 30 </td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="90">Isla en peligro</td>
<td class="td3">1-Matar 5 Krakens<br>
2-Matar 10 Guardianes de las profundidades<Br></td>
<td class="td3"> Exp:60.000<Br>Oro:100.000</td>
<td class="td3"> Lvl 32 </td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="90">Extrañas guardianas</td>
<td class="td3">1-Matar 20 Medusas<br>
2-Matar 10 Medusas rojas<Br></td>
<td class="td3"> Exp:200.000<Br>Oro:100.000<br>3 Monedas de Plata</td>
<td class="td3"> Lvl 35 </td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="90">Dominando helado</td>
<td class="td3">1-Matar 25 Golems de hielo<br></td>
<td class="td3"> Exp:2.500.000<Br>Recompensas por clases</td>
<td class="td3"> Lvl 40 </td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="90">Amuleto de party 90/10</td>
<td class="td3">1-Matar 5 Golem de piedra<br>
2-Matar 5 elemental de agua anciano<Br>
3-Matar 10 golem de lava bugartico<Br>
4-Matar 5 Enth<Br>
5-Matar 2 Axoloth mutado<Br></td>
<td class="td3"> Amuleto de party 90/10</td>
<td class="td3"> Lvl 35 </td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="90">Combatiendo las profundidades (No magicas)</td>
<td class="td3">1-Matar 20 guerreros de las profundidades<br>
2-Matar 20 Enanos de las profundidades<Br></td>
<td class="td3"> Exp:400.000<Br>Oro:180.000</td>
<td class="td3"> Lvl 35 </td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="90">Una nueva especie</td>
<td class="td3">1-Matar 5 Demonios<br>
2-Matar 10 Decapitados impuros<Br>
3-Matar 2 Nukers<Br></td>
<td class="td3"> Exp:95.000<Br>Oro:315.000</td>
<td class="td3"> Lvl 35 </td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="90">Gigantes de fuego</td>
<td class="td3">1-Matar 40 Golems bugarticos<br></td>
<td class="td3"> Exp:1.000.000<Br>Oro:150.000<br>5 Monedas de Plata</td>
<td class="td3"> Lvl 40 </td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="90">Infernales animarum</td>
<td class="td3">1-Matar 40 Almas de fuego<br></td>
<td class="td3"> Exp:2.000.000<Br>Oro:250.000<br>5 Monedas de Plata</td>
<td class="td3"> Lvl 45 </td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="90">Cerca del fin</td>
<td class="td3">1-Matar 40 Parcas<br></td>
<td class="td3"> Exp:2.000.000<Br>Oro:400.000<br>5 Monedas de Plata</td>
<td class="td3"> Lvl 50 </td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="90">La alforja mística</td>
<td class="td3">1-Matar 5 Elementales de agua ancionas<br>
2-Matar 5 Elementales de fuego ancianos<br>
3-Matar 2 Axolotl mutados<br>
4-Encontrar a Arwen<br>
5-Devolver la alforja a su dueño<br>
<td class="td3">30 Monedas de Plata</td>
<td class="td3">-</td>
</tr>

</table>

<br><br><br>

<center>
<img src="imagenes\juego/ReyCaos.png" width="100px" height="130px"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="imagenes\juego/AyudanteDelCaos.png" width="100px" height="130px"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="imagenes\juego/Karkal.png" width="100px" height="130px"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="imagenes\juego/Rinter.png" width="100px" height="130px"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="imagenes\juego/AyudanteDelRey.png" width="100px" height="130px"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="imagenes\juego/Gimbli1.png" width="100px" height="130px"/></center>

<center>Murus Rey Caos ( 1 766 699)</center>
<center>Murus Sastre del caos ( 1 759 696)</center>
<center>Murus Karkal ( 1 697 729)</center>
<br>
<center>Angrod Rey Real ( 1 629 388)</center>
<center>Angrod Sastre del Rey ( 1 632 394)</center>
<center>Angrod Gimbli ( 1 673 384)</center>
<br>

<table align="center" width="92%">

<tr>
<td class="tdresaltar3" width="15%">Nombre de la mision</td>
<td class="tdresaltar3" width="40%">DESCRIPCION</td>
<td class="tdresaltar3" width="25%">Recompensas</td>
<td class="tdresaltar3" width="20%">Requerimientos</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="90">Un refuerzo necesario</td>
<td class="td3">1-Entregar:<br>
5 Hachas de guerra de dosfilos<Br>
5 Escudos de plata<Br>
5 Baculos engarzados<Br>
5 Tunicas legendarias<Br></td>
<td class="td3"> Exp:15.000<Br>Oro:25.000<Br> Enlistarte en la faccion<Br>Items por clases<Br>5 Monedas de Plata<br></td>
<td class="td3"> Legion lvl 20<br>Armada Lvl 25</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="90">Investigando la gran piramide</td>
<td class="td3">1-Matar 20 Momia pequeña protectora<br>
2-Matar 10 Guardianes de Tutankamon<Br>
3-Matar 5 Tutankamon<Br></td>
<td class="td3"> Exp:20.000<Br>Oro:30.000</td>
<td class="td3"> Lvl 27 </td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="90">La leyenda del kraken</td>
<td class="td3">1-Matar 20 Piratas<br>
2-Matar 20 Capitanes pirata<Br>
3-Matar 5 Krakens<Br></td>
<td class="td3"> Exp:40.000<Br>Oro:60.000</td>
<td class="td3"> Lvl 30<br>Segundo rango de faccion</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="90">El terror acecha/La primer defensa</td>
<td class="td3">1-Matar 5 usarios de nivel 28Min<br></td>
<td class="td3"> Exp:60.000<Br>Oro:20.000<Br>Recompensas por clases</td>
<td class="td3"> Lvl 30<br>Tercer rango de faccion</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="90">Misterios de circe</td>
<td class="td3">1-Matar 5 Demonios<br>
2-Matar 5 Decapitados Impuros<Br></td>
<td class="td3"> Exp:15.000<Br>Oro:500.000</td>
<td class="td3">Lvl 30<br>Tercer rango de faccion</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="90">La guarida de la Medusa</td>
<td class="td3">1-Matar 25 Medusas<br>
2-Matar 2 Medusas rojas<Br></td>
<td class="td3"> Exp:150.000<Br>Oro:100.000</td>
<td class="td3">Lvl 32<br>Tercer rango de faccion</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="90">Agente del mal/Defensor de los debiles</td>
<td class="td3">1-Matar 10 usuarios de nivel 33Min <br></td>
<td class="td3"> Exp:200.000<Br>Oro:20.000<br>Recompensas por clases</td>
<td class="td3">Lvl 35<br>Cuarto rango de faccion</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="90">El gran volcan</td>
<td class="td3">1-Matar 15 Almas infernales<br>
2-Matar 15 Golems bugarticos<Br>
3-Matar 1 Golem de lava<Br></td>
<td class="td3"> Exp:500.000<Br>Oro:200.000</td>
<td class="td3">Lvl 45<br>Quinto rango de faccion</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="90">La amenaza publica/El protector del reino</td>
<td class="td3">1-Matar 50 usuarios de nivel 35 Min<br></td>
<td class="td3"> Exp:1.300.000</td>
<td class="td3">Lvl 45<br>Octavo rango de faccion</td>
</tr>

</table>

<br><br><br>

<center><img src="imagenes\juego/Rhaegal.png" width="100px" height="130px"/></center>
<center>Ullathorpe (1 574 517)</center>
<center>Turgon (1 466 833)</center>
<br>

<table align="center" width="92%">

<tr>
<td class="tdresaltar3" width="15%">Nombre de la mision</td>
<td class="tdresaltar3" width="40%">DESCRIPCION</td>
<td class="tdresaltar3" width="25%">Recompensas</td>
<td class="tdresaltar3" width="20%">Requerimientos</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="90">Volviendo a ser ciudadano I y II</td>
<td class="td3">1-Matar 100 pollos (I)<br>
2-Matar 250 pollos (II)<Br></td>
<td class="td3"> Volves a ser ciudadano</td>
<td class="td3"> Ser Criminal</td>
</tr>

</table>

<br><br><br>

<center><img src="imagenes\juego/Skulper.png" width="100px" height="130px"/></center>
<center> Harrogath ( 1 833 579)</center>
<br>

<table align="center" width="92%">

<tr>
<td class="tdresaltar3" width="15%">Nombre de la mision</td>
<td class="tdresaltar3" width="40%">DESCRIPCION</td>
<td class="tdresaltar3" width="25%">Recompensas</td>
<td class="tdresaltar3" width="20%">Requerimientos</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="90">Cacería de osos polares</td>
<td class="td3">1-Matar 25 Oso polares<br>
2-Entregar 25 pieles de osos polares a Skulper<Br>
3-Entregar el libro a Sonaur en ulla<br>
4-Matar 25 Dragones de las profundidades y entregar los amuletos del dragon de agua a Johan en ulla<br></td>
<td class="td3"> Exp:30.000<Br>Oro:35.000<br>Descarga electrica<br> Paralizar<br></td>
<td class="td3"> Lvl 25</td>
</tr>

</table>

<br><br><br>

<center><img src="imagenes\juego/Johan.png" width="100px" height="130px"/></center>
<center>Ullathorpe ( 1 560 557)</center>
<br>

<table align="center" width="92%">

<tr>
<td class="tdresaltar3" width="15%">Nombre de la mision</td>
<td class="tdresaltar3" width="40%">DESCRIPCION</td>
<td class="tdresaltar3" width="25%">Recompensas</td>
<td class="tdresaltar3" width="20%">Requerimientos</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="90"><br>Apoca BenderAO</td>
<td class="td3">1-Matar 5 unicornios<br>
2-Matar 1 Tutankamon<Br>
3-Hablar con el vendedor de magia de Atlanthis<br>
4-Entregar la ultima lagrima de una sirena a Johan en Ulla<br></td>
<td class="td3"> Exp:200.000<Br>Oro:100.000<br>Apocalipsis BenderAO</td>
<td class="td3"> Lvl 40</td>
</tr>

</table>

<br><br><br>

<center><img src="imagenes\juego/Carpinteria.png" width="100px" height="130px"/></center>
<center>Ullathorpe ( 1 554 569)</center>
<br>

<table align="center" width="92%">

<tr>
<td class="tdresaltar3" width="15%">Nombre de la mision</td>
<td class="tdresaltar3" width="40%">DESCRIPCION</td>
<td class="tdresaltar3" width="25%">Recompensas</td>
<td class="tdresaltar3" width="20%">Requerimientos</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="90">Consegui tu primer barca</td>
<td class="td3">1-Matar 10 arboles encantados en menos de 40m<br>
2-Conseguir y entregar un hacha de leñador<Br>
3-Conseguir y entregar un serrucho<br></td>
<td class="td3"> Exp:1.000<br>Barca</td>
<td class="td3"> Lvl 25</td>
</tr>

</table>

<br><br><br>

<center><img src="imagenes\juego/Ulla.png" width="100px" height="130px"/></center>
<center>Ullathorpe (1 550 550)</center>
<br>

<table align="center" width="92%">

<tr>
<td class="tdresaltar3" width="15%">Nombre de la mision</td>
<td class="tdresaltar3" width="40%">DESCRIPCION</td>
<td class="tdresaltar3" width="25%">Recompensas</td>
<td class="tdresaltar3" width="20%">Requerimientos</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="90">Tumulto en la ciudad</td>
<td class="td3">1-Hablar con el sacerdote de Ulla<br>
2-Hablar con Cullighan y entregarle 100 pollos<Br>
3-Hablar con Nelmasil<br>
4-Hablar con uno de los sastres de ulla y matar 30 serpientes<br>
5-Decirle al gobernador de Ulla quien es el ladron<br></td>
<td class="td3"> Exp:5.000<br>Oro:25.000<br>Recompensas por clases<br>Misil magico<br></td>
<td class="td3"> - </td>
</tr>

</table>


<br><br>



</table>

<br><br>

<center><a href="razasyatributos.php#ver"> Anterior</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href="comandos.php#ver"> Siguiente</a></center>

</td></tr></table><br><br><table class="titulo_seccion"><tr><td>---</td></tr></table><table class="volver_indice"><tr valign="middle"><td align="left">&nbsp;<a href="index.php">&lt;&lt;Ir al Índice del Manual</a></td><td align="right">&nbsp;</td></tr></table>

</body>





</php>

