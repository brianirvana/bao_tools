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
<table class="titulo_seccion"><tr><td><a name="ver"></a>- Pantalla del juego -</td></tr></table><br><table width="98%" align="center"><tr><td><center><span class="size">Imagen del juego:</span>

<br><br>

<img src="imagenes/juego/Comenzando.png" width="690" height="518">
</center>

<br><br>

<table align="center" width="85%">

<tr class='colorcolumna1'><td class="tdresaltar" width="15%" height="50"><font size="4">1</font><br><font color="#FFFFFF">Consola</font></td>
<td class="td3">Es la consola por la cual recibirás diferentes mensajes del Servidor, entre ellos: puntos de experiencia que se van obteniendo, daño recibido por algún NPC u otro jugador, mensajes de Game Masters, etc.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="50"><font size="4">2</font><br><font color="#FFFFFF">Chat</font></td>
<td class="td3">Pulsando tecla <span class="resaltarcmd">ENTER</span> activás el casillero para escribir un mensaje o comando. Para enviarlo, presioná <span class="resaltarcmd">ENTER</span> nuevamente.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="50"><font size="4">3</font><br><font color="#FFFFFF">Pantalla de Juego</font></td>
<td class="td3">En la pantalla central es donde verás el desarrollo del Juego. Desde allí, podrás interactuar con el resto de los jugadores. Con solo pasar el mouse por los personajes sabrás si son Ciudadanos (nombres azules) o Criminales (nombres rojos).<br>Para saber qué función tiene cada comerciante u objeto, tenés que hacer click, 
o doble click en ellos.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="50"><font size="4">4</font><br><font color="#FFFFFF">Personaje Propio</font></td>
<td class="td3">Tu personaje siempre se encontrará en el centro de la pantalla.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="50"><font size="4">5</font><br><font color="#FFFFFF">Nombre</font></td>
<td class="td3">Indica el nombre del personaje con el que estás jugando.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="50"><font size="4">6</font><br><font color="#FFFFFF">Nivel</font></td>
<td class="td3">En esta zona verás el nivel que tiene el personaje, la experiencia que lleva acumulada y la experiencia que necesita para pasar al siguiente. Cuando subas de nivel aparecerá un <span class="resaltarcmd">signo (+)</span> junto al indicador mencionado, esto significa que existen puntos de habilidad libres para asignar. Deberás clickear encima de ese símbolo para poder asignarlos. Se recomienda consultar previamente la <a href="skills.php?seccion=nivel_exp_y_skill_points#ver" target="_blank">Sección: Nivel, Experiencia y Puntos de Habilidad</a>.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="50"><font size="4">7</font><br><font color="#FFFFFF">Inventario</font></td>
<td class="td3">El inventario muestra los objetos que el personaje tiene encima. Desde allí, podrás equipar las armas, ropas, herramientas, etc., sólo basta con seleccionar el ítem y presionar la <span class="resaltarcmd">TECLA EQUIPAR (E)</span>.<br>Los objetos que se encuentren equipados aparecerán con un signo (+). Se debe tener cuidado a la hora de elegir qué llevar en el inventario ya que la mayoría de los Ítems caen al piso cuando uno muere, y por ende, se pierden.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="50"><font size="4">8</font><br><font color="#FFFFFF">Hechizos</font></td>
<td class="td3">Desde esta zona podrás ver y seleccionar los hechizos.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="50"><font size="4">9</font><br><font color="#FFFFFF">Indicadores</font></td>
<td class="td3">Aquí verás identificados en diferentes colores el estado de la energía (amarillo), la salud (rojo), la mana (turquesa), la comida (verde) y sed (azul) del personaje.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="50"><font size="4">10</font><br><font color="#FFFFFF">Billetera</font></td>
<td class="td3">Aquí se muestra la billetera, donde contendrás el oro, en dos 
indicadores: Cuando el oro este en color amarillo, no se caerá ni una moneda. Si 
el color del número cambia a rojo, se caerá lo que sobre. Para más información 
haz click sobre el oro.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="50"><font size="4">11</font><br><font color="#FFFFFF">Opciones</font></td>
<td class="td3"><br>En el botón Opciones podrás ver las opciones del juego: activar/desactivar la música, los efectos de sonido, etc., (para más información ver la tabla de abajo "Opciones del Juego")</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="50"><font size="4">12</font><br><font color="#FFFFFF">Estadísticas</font></td>
<td class="td3">En el botón de estadísticas podrás ver los atributos, estados, reputación y puntos de habilidad asignados.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="50"><font size="4">13</font><br><font color="#FFFFFF">Clanes</font></td>
<td class="td3">Sirve para ver una lista de clanes fundados por usuarios y si el personaje es líder de un clan podrá ver toda una ventana distinta (más información en <a href="clanes.php?seccion=clanes#ver" target="_blank">Sección: Clanes</a>).</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="50"><font size="4">14</font><br><font color="#FFFFFF">Brújula</font></td>
<td class="td3">Estos números van cambiando a medida que el personaje camina. Indican la ubicación en el mapa según coordenadas X,Y (el centro de un mapa se ubica siempre en 50,50).</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="50"><font size="4">15</font><br><font color="#FFFFFF">Indicadores Gráficos</font></td>
<td class="td3">Aquí verás varios iconos gráficos que te ayudarán a saber si, por ejemplo, tienes el seguro activado (la llave), el auto lanzar hechizos o el seguro de resurrección.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="50"><font size="4">16</font><br><font color="#FFFFFF">Donde te encuentras</font></td>
<td class="td3">Te indica en la zona en la que te encuentras.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="50"><font size="4">17</font><br>
	<font color="#FFFFFF">Misiones</font></td>
<td class="td3">Al tocar el boton podes ver el registro de tus misiones si no posees ninguna activa en ese momento y si tienes una activa te dira los pasos a seguir de la misma.
<br>Para mas informacion <a href="misiones.php?seccion=misiones" target="_blank">Sección: Misiones</a></td>
</tr>

</table>


<br><br><br>


<center><span class="size">Opciones del Juego:</span>

<br><br>

<img src="imagenes/juego/Configuracion.png" width="313" height="422">
</center>

<br><br>

<table align="center" width="85%">

<tr class='colorcolumna1'><td class="tdresaltar" width="15%" height="50"><font size="4">1</font><br><font color="#FFFFFF">Audio</font></td>
<td class="td3">Permite desactivar o activar la música y subir o bajar el volumen de las mismas.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="50"><font size="4">2</font><br><font color="#FFFFFF">Diálogos de Clan</font></td>
<td class="td3">Permite ver los mensajes de clan en la consola o en la pantalla de juego y configurar la cantidad máxima de mensajes antes de que se borren los viejos (sólo si esta configurado como mensajes en pantalla de juego).</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="50"><font size="4">3</font><br><font color="#FFFFFF">Mensajes Personalizados</font></td>
<td class="td3">Permite guardar hasta 10 mensajes distintos, los cuales los podés utilizar con las <span class="resaltarcmd">TECLAS del 1 a 0</span>.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="50"><font size="4">4</font><br><font color="#FFFFFF">Configurar teclas</font></td>
<td class="td3">Permite configurar las teclas a gusto de cada uno.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="50"><font size="4">5</font><br><font color="#FFFFFF">Configurar</font></td>
<td class="td3">Abre otra ventana de Opciones, en donde, si estas ejecutando el 
cliente con Directx9, podrás agregar/quitar cualquiera de los efectos ahí 
seleccionados.<br>
Algunos efectos, solo hacen efecto una vez que reinicies el cliente. Aunque la 
mayoría se pueden ver instantáneamente. Para visualizar los efectos, es 
necesario tener una versión compatible con Directx9 o superior.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="50"><font size="4">6</font><br>
	<font color="#FFFFFF">Mapa del Juego</font></td>
<td class="td3">Abre el mapa del Juego.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="50"><font size="4">7</font><br>
	<font color="#FFFFFF">Manual de BenderAO</font></td>
<td class="td3">Abre el manual del juego.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="50"><font size="4">8</font><br>
	<font color="#FFFFFF">Pagina oficial de BenderAO</font></td>
<td class="td3">Abre la web oficial del juego, donde encontrarás las 
estadísticas de personajes (ej: top 100, top 100 de oro, top 100 de pjs matados, 
etc)</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="50"><font size="4">9</font><br>
	<font color="#FFFFFF">Reglamento Oficial de BenderAO</font></td>
<td class="td3">Abre el navegador con el reglamento oficial de BenderAO, el cual 
es muy recomendable leer para no tener inconvenientes.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="50"><font size="4">10</font><br>
	<font color="#FFFFFF">Donar YA!</font></td>
<td class="td3">Abre el navegador hacia la web para crear tu propia boleta de 
cualquier monto, y siguiendo unos sencillos pasos, podrás crear una boleta para 
luego imprimirla y poder pagarla en cualquier: RapiPago, BaPro, Pago Fácil, Pago 
Express, o enviar vía dineromail.</td>
</tr>


</table>
<br><br>

<center><a href="launcher.php#ver"> Anterior</a>&nbsp&nbsp&nbsp&nbsp&nbsp <a href="clasessociales.php#ver"> Siguiente</a></center><br><br>
</td></tr></table><br><br><table class="titulo_seccion"><tr><td>---</td></tr></table><table class="volver_indice"><tr valign="middle"><td align="left">&nbsp;<a href="index.php">&lt;&lt;Ir al Índice del Manual</a></td><td align="right">&nbsp;</td></tr></table>
</td>
</tr>
</table>
</body>

<!-- Mirrored from aogamers.com.ar.elserver.com/?seccion=empezarajugar by HTTrack Website Copier/3.x [XR&CO'2008], Sat, 30 May 2009 09:47:21 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/php;charset=ISO-8859-1"><!-- /Added by HTTrack -->
</php>
