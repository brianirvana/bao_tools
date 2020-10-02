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
<table class="titulo_seccion"><tr><td><a name="ver"></a>- Ciudades y Dungeons -</td></tr></table><br><table width="98%" align="center"><tr><td>En 
BenderAO hay varias ciudades e islas, las cuales tienen caracter�sticas propias. Las ciudades por lo general suelen ser ZONAS SEGURAS, donde no se puede atacar a ning�n usuario. En las mismas encontrar�s todo tipo de comercios para estar equipados a la hora de la batalla. Tambi�n hay bancos, casas e iglesias (lugar para resucitarte y reagruparte con tus aliados).

<br><br><br>

<table align="center" width="92%">
<tr>
<td class="tdresaltar3" width="15%">CIUDADES</td>
<td class="tdresaltar3">DESCRIPCION</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="90">Ciudad Real de Angrod (Mapa 1 X: 629 Y: 429)</td>
<td class="td3">Es la ciudad mas grande (junto a Murus), y es la gran fortaleza del Rey Rinter Trang, donde tambi�n se puede encontrar la Casa Central del Banco "Goliath", y el Gran Consejo de Angrod. Adem�s de todo esto, al norte de la ciudad encontrar�s un muelle, desde el cual pod�s aventurarte navegando hacia otras tierras, a trav�s de los grandes mares y oc�anos. 
Angrod es famosa por su gran cantidad de comercios, fuera de la zona residencial y comercial, pod�s encontrar granjas.<br>
</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="90">La ciudad nevada de Harrogath (Neutral) (Mapa: 1 X: 810 Y: 580)</td>
<td class="td3">Es un mapa libre de Guardias Imperiales, por lo que es sumamente tentadora para los criminales. Harrogath m�s que una ciudad, es un peque�o pueblo, con pocos comercios y algunas casas, donde habitan y rondan muchos criminales y estafadores.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="90">La legendaria ciudad de Turgon () (Mapa: 1 X: 460 Y: 830)</td>
<td class="td3">Una de las ciudades m�s populares y al mismo tiempo es lugar de reuniones amistosas. Esta ciudad posee varios comercios y casas, adem�s de un banco. Legendaria ciudad de estas tierras, ya que all� se han librado las batallas m�s feroces jam�s vistas que ha dejado at�nitos hasta a los mism�simos dioses de BenderAO. Esta ciudad cuenta tambi�n con una arena de combate, ideal para todo tipo de combatiente que desee perfeccionarse en el arte de la guerra cuerpo a cuerpo y combates arcanos.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="90">Ciudad Comercial de Ullathorpe (Neutral) (Mapa: 1 X: 550 Y: 550) </td>
<td class="td3">Es la ciudad m�s transitada por excelencia, se encuentra ubicada en el centro del mundo, famosa por su buena cantidad de comercios y casas, adem�s de tener 
sacerdote y banco, tiene una arena de duelos peque�a, donde puedes hacer combates de armas y hechizos sin moverte, mejor conocidos como "plantes". Es la ciudad m�s concurrida del mundo siendo el punto de partida perfecto para principiantes y adeptos.</td>
</tr>


<tr class='colorcolumna1'><td class="tdresaltar" height="90">Ciudad Legionaria de Murus (Ca�tico) (Mapa: 1 X: 720 Y: 700)</td>
<td class="td3">Esta ciudad esta bajo el control del demonio, aqu� podr�s enlistarse en la Legi�n Oscura. 
Es un imperio basto, que posee muchas casas y buenos comercios. Sin embargo debes ser cauteloso si eres ciudadano, debido a que ser�s atacado a muerte sin piedad alguna.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="90">La ciudad perdida de Atlanthis (Neutral) (Mapa: 2 X: 815 Y: 415)</td>
<td class="td3">El mito dice que hay una ciudad oculta debajo de los mares, y bajo un hechizo permanente de un gran dios, que permite que el agua no caiga sobre ella. En esta ciudad, dicen, hay arenas de combate de donde salen los mejores heroes hist�ricos. Tambi�n es posible comprar los m�s grandes y mejores amuletos de estas tierras. Objetos �nicos y divinos, con poderes muy especiales.<br>
</td>
</tr>

</table>

<br><br>

<table align="center" width="92%">
<tr>
<td class="tdresaltar3" width="15%">ZONAS DESTACADAS</td>
<td class="tdresaltar3">DESCRIPCION</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="90">Dungeon Newbie (Mapa: 2 X: 550 Y: 100)</td>
<td class="td3">Esta es la ciudad en la que todo mortal comienza sus aventuras. Aqu� podr�s entrenar sin correr peligro de ser atacado por otros usuarios hasta el Nivel 18. Una vez finalizado tu entrenamiento inicial, estar�s lo suficientemente fortalecido como para enfrentar el mundo exterior y los peligros que acarrea estar en �l.<br>Aqu� encontrar�s criaturas con escasa vida, a las cuales puedes hacerles frente sin mayor inconveniente, utilizando tu daga newbie o bien conjurando el hechizo Dardo Alpha. Puedes obviar el entrenamiento hasta nivel 18 y salir hac�a el mundo exterior, caminando hac�a la derecha hasta encontrarte con 5 portales que te transportar�n a diferentes partes del mundo de BenderAO.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="90">Cementerio Olvidado (Mapa: 2 X: 1070 Y: 385)</td>
<td class="td3" height="35">El l�gubre cementerio de las almas perdidas, que no han tenido perd�n de los Dioses en el purgatorio. Es un lugar repleto de misterios y muertos 
vivientes. Sus criaturas, conjuran magias nunca antes vistas y su creadora 'La Parca', ha encarnado con un abominable y temible poder. Las almas que han podido ser rescatadas y resucitadas, dicen que es inmortal. Los dioses no hablan de ella, pero dicen que no es invencible. <br> [S�lo accesible para personajes de nivel 45 o m�s, que se encuentren en Party].</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="90">Cercan�as de Marvel (Mapa: 1 X: 550 Y: 300)</td>
<td class="td3" height="35">Dentro de este dungeon habitan criaturas de poderes limitados y normalmente bajos. Muy recomendable para los luchadores reci�n iniciados que necesitan elevar sus poderes.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="90">Guarida Volc�nica(Mapa: 2 X: 1060 Y: 600)</td>
<td class="td3" height="35">La legendaria Guarida de los Dragones Negros, uno de los sitios m�s peligrosos de este mundo pero al mismo tiempo uno de los mejores lugares de entrenamiento hasta alcanzar el nivel 46. La textura de este lugar es negra combinada con zonas grises, y cuenta la leyenda que deboran almas e invocan criaturas desde el inframundo, tales como dragones rojos. Pueden ser derrotados de un s�lo golpe si se los enfrentan con Espadas Matadragones Negras, aunque es excesivamente costoso forjar armas como esas.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="90">Dungeon Lava (Mapa 1: X: 1130 Y: 540)</td>
<td class="td3">Se advierte a los viajeros que este es un mapa muy peligroso donde la maldad, la hostilidad y la oscuridad que en �l se esconden, s�lo son equiparables a la ira del demonio y sus secuaces. Aqu� encontrar�s un sinf�n de criaturas m�gicas que estar�n al acecho. S�lo los m�s valientes exploradores pueden llegar a adentrarse en sus volc�nicas paredes y escapar con vida para contar la historia. Su entrada se encuentra muy lejana, y puedes emprender viaje desde la ciudad de Harrogath o Atlanthis, para que el viaje no se te vuelta eterno. Buena suerte guerrero, no ser�s el �nico con intenciones de acceder a las recompensas que este Dungeon alberga. �V� preparado para combatir con todas tus fuerzas! <br> [Para acceder a este Dungeon Debes ser nivel 29 o m�s]</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="90">Isla de Circe (Mapa: 1 X: 740 Y: 490)</td>
<td class="td3" height="35" height="90">Es una peque�a isla que esconde una 
caverna infernal plagada de criaturas poderosas, que ofrecen las m�s grandes 
recompensas de oro de todo BenderAO si logras acabar con ellas.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="90">Fuerte Benderiano (Mapa: 1 X: 1155 Y: 100)</td>
<td class="td3">Su entrada se encuentra en una peque�a isla, ubicada al noreste del mapa 1 [Continental], tendr�s que pasar por un 
laberinto oscuro y varios desaf�os m�s, para lograr ingresar a su fortaleza. Adem�s las criaturas que se hallan aqu�, son el �ltimo y mayor desaf�o... 
Son criaturas inteligentes que trabajan en grupo, para poder defender a su Rey Benderiano. Las recompensas son descabelladas, si logras acabar con tan solo alguna de ellas, pero lograrlo es s�lo para los m�s poderosos e inteligentes aventureros.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="90">Bosque de los Ents: (Mapa: 1 X: 330 Y: 410)</td>
<td class="td3">Un bosque habitado antiguamente por Elfos, y actualmente habitado por los Ents (�rboles vivientes) Lugar recomendado para talar �rboles sin ser molestado y obtener la mejor de las maderas, a una velocidad bastante elevada .</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="90">Dungeon Veriil: <br>(Mapa: 1 X: 840 Y: 465)</td>
<td class="td3"> En una isla situada en el mar, reconocida como una de las m�s desafiantes en las tierras de BenderAO, <br>
te permitir� adentrarte en una zona completamente hostil, repleta de criaturas realmente sorprendentes [Tened cuidado con la Medusa Protectora!].</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="90">Isla del Kraken: <br>(Mapa: 1 X: 285 Y: 595)</td>
<td class="td3"> Al oeste de Ullathorpe accediendo por medios mar�timos, encontrar�s una isla llena de ebrios piratas y magos renegados. Ellos son los protectores de la legendaria guarida del Kraken, y si eres lo suficientemente osado como para enfrentarte a tan descomunal criatura, deber�s ir preparado y en lo posible acompa�ado. <br> [En este Dungeon podr�s entrenar como m�ximo hasta el nivel 39].</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="90">Gran Pir�mide: 
	(Mapa 1 X: 380 Y: 570)</td>
<td class="td3">Antigua pir�mide construida por guerreros cuya raza hoy en d�a ya no 
existe, hace miles de a�os atr�s. Aqu� el entrenamiento, no es el mejor, pero otorga 
recompensas interesantes respecto al oro que se pueda llegar a adquirir, junto con las pertenencias de las momias. Recomendado para principiantes, ya que se puede acceder a �l caminando. <br> [Nivel M�nimo requerido: 20 - Nivel M�ximo permitido: 40].</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="90">Yacimientos Mineros</td>
<td class="td3">
<b>Minas de Hierro de Ullathorpe:</b> A lo largo de las diferentes guerras que han azotado las tierras de BenderAO, han surgido estalagmitas ricas en hierro cerca de la ciudad de Ullathorpe, pudiendo acceder a pi� sin necesidad de navegar. Ubicada en: (Mapa 1 X: 630 Y: 580)<br><br>
<b>Minas de Hierro:</b> Las minas de Hierro de TURGON, estan ubicadas dentro de la caverna (Mapa 2 X: 415 Y: 935) cercana a la ciudad mencionada anteriormente, y podr�s acceder a ella abri�ndote paso hac�a estas coordenadas: (Mapa 1 X: 400 Y: 940) [No es necesario navegar]<br><br>
<b>Mina de Plata:</b> Las minas de Plata estan ubicadas dentro de la catacumba (Mapa 2 X: 960 Y: 900) de la isla Argentum, ubicada en la posici�n: (Mapa 1 X: 890 Y: 940) [Es necesario navegar]<br><br>
<b>Minas de Oro de Dungeon Lava:</b>  Las minas de Oro de Dungeon Lava, estan ubicadas dentro del mismo, ingresando por la posici�n: (Mapa 1 X: 1130 Y: 540). Luego para acceder a los yacimientos, deber�s atravesar un pasadizo secreto. [Es necesario navegar]<br><br>
</tr>

</table>
<br><br>
<center><a href="razasyatributos.php#ver"> Anterior</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href="comandos.php#ver"> Siguiente</a></center>
</td></tr></table><br><br><table class="titulo_seccion"><tr><td>---</td></tr></table><table class="volver_indice"><tr valign="middle"><td align="left">&nbsp;<a href="index.php">&lt;&lt;Ir al �ndice del Manual</a></td><td align="right">&nbsp;</td></tr></table>
</body>


</php>
