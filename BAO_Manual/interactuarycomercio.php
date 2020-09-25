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
<table class="titulo_seccion"><tr><td><a name="ver"></a>- Interactuar y Comercio -</td></tr></table><br><table width="98%" align="center"><tr><td><center><u><span class="resaltar">INTERACTUAR</span></u></center><br><br>
A continuación se nombran algunas formas de interactuar:<br><br>

<table align="center" width="75%">
<tr>
<td class="tdresaltar" height="120">Usuarios<br><img src="imagenes/juego/usuarios.JPG" width="85" height="98"></td>
<td class="td6">A los usuarios los veras con un nick en color según su estado cuando pases el puntero sobre su personaje, a menos que hayas desactivado la vista de nombres con <span class="resaltarcmd">TECLA VER NOMBRES (N)</span>.<br>
Al clickear un usuario podrás ver en la consola su nick, estado y una descripción, si es que el usuario ha seteado alguna con el comando <span class="resaltarcmd">/DESC</span>.</td>
</tr>


<tr>
<td class="tdresaltar" height="120">NPCs<br>(Criaturas, Comerciantes, etc.)<img src="imagenes/juego/cartel_mercader.png" width="85" height="98"></td>
<td class="td6">Se lo denomina NPC a todo personaje o criatura controlado automáticamente por el Juego.<br>
Podrás interactuar con algunos NPCs comerciantes con diversos comandos y teclas, también podrás atacar a criaturas, todo esto lo encontrarás en otras secciones más específicas. Los comandos más comunes para comerciar son: Clic izquierdo sobre la criatura y presionar Enter, tipear el comando: /COMERCIAR y luego enter nuevamente. Otro método para comerciar, es hacer clic rápidamente, cerca de los pies de la criatura. Más información sobre comandos en sección: <a href="comandos.php">Controles y Comandos.</a></td>
</tr>

<tr>
<td class="tdresaltar" height="120">Puertas<br><img src="imagenes/juego/pj_puerta.jpg" width="85" height="98"></td>
<td class="td6">Una puerta se abre haciéndole <span class="resaltarcmd">DOBLE CLICK</span> o en el caso que esté cerrada con llave tenés que tener la correspondiente llave y usarla presionando <span class="resaltarcmd">TECLA USAR (U o DOBLE CLICK)</span> sobre la llave, luego clickear sobre la puerta y así quedará abierta para que cualquier usuario pueda entrar. Para cerrarla se debe repetir el mismo proceso.</td>
</tr>

<tr>
<td class="tdresaltar" height="120">Portales<br><img src="imagenes/juego/pj_portal.jpg" width="86" height="101"></td>
<td class="td6">Pasando sobre ellos podrás transportarte a otro lugar, también podes clickearlos para saber a donde te llevará.</td>
</tr>

<tr>
<td class="tdresaltar" height="45">Carteles<br>Tumbas<br><img src="imagenes/juego/pj_tumba.jpg" width="90" height="99"></td>
<td class="td6">Haciéndole <span class="resaltarcmd">DOBLE CLICK</span> a un cartel o tumba podrás ver una breve descripción del mismo.</td>
</tr>

<tr>
<td class="tdresaltar" height="120">Árboles, Yacimientos, Fraguas, Yunques, etc.<br><img src="imagenes/juego/pj_talando.jpg" width="85" height="98"></td>
<td class="td6">Si tenés equipada una herramienta adecuada podrás utilizar estos objetos para conseguir insumos o fabricar objetos.</td>
</tr>

<tr>
<td class="tdresaltar" height="120">Agua<br><img src="imagenes/juego/pj_navegando.gif" width="85" height="98"></td>
<td class="td6">Si en algún momento ves agua (ya sea ríos o mares) podrás navegar o pescar en ella siempre. Para navegar necesitaras ser como mínimo nivel 25(Siendo trabajador) o nivel 28 y tener una barca.</td>
</tr>

<tr>
<td class="tdresaltar" height="120">Ramitas / Hacer fogatas<br><img src="imagenes/graficos/578.gif" width="85" height="98"></td>
<td class="td6">Una Ramitas se convierte en fogata, teniendo equipada y seleccionada una DAGA COMÚN (Ver: ARMAS) y haciéndole <span class="resaltarcmd">DOBLE CLICK</span> y presionando <span class="resaltarcmd">TECLA USAR (tecla: U)</span> sobre las ramitas. Este proceso puede demorar varias veces de repetida la acción. Para hacer fogatas cada vez más rápido se debe repetir el mismo proceso e irás ganando skills en Supervivencia, los cuales te ayudarán a ver la vida de las criaturas hostiles del juego (Con 60 skills como mínimo).</td>
</tr>
</table>
<br><br><br><hr noshade width="55%" size="1" color="#959595" align="center"><br><br>



<center><u><span class="resaltar">INTERACTUAR/COMERCIAR CON NPCS</span></u></center><br><br>

La forma de pago en BenderAO es a través de las monedas de oro. Ahora bien, para comerciar deberás dirigirte a la tienda en la que quieras comprar algo y acercarte al comerciante o NPC mejor dicho, entonces deberás clickear sobre él y hacer <span class="resaltarcmd">/COMERCIAR o DOBLE CLICK</span> sobre el mismo. Entonces se te abrirá una ventana nueva muy fácil de usar, la cual está dividida en dos.
<br><br>
Del lado izquierdo encontrarás las opciones de compra y del lado derecho las opciones de venta. Para comprar o vender un ítem solo basta con clickearlo y pulsar sobre el correspondiente botón de compra o venta. Por último, abajo tenés un indicador de cantidad el cual podrás modificar para comprar o vender en cantidad.También el comerciante te proporciona el precio de venta total del ítem.
<br><br>
Aquí una breve descripción de los NPCs más importantes con los que podrás interactuar:<br><br>

<table align="center" width="75%">
<tr>
<td class="tdresaltar">CARTEL/NPC</td>
<td class="tdresaltar">CARACTERÍSTICAS</td>
</tr>
<tr>
<td class="tdresaltar"><img src="imagenes/juego/cartel_proviciones.gif" width="49" height="32"></td>
<td class="td6">Tienda de provisiones, aquí se compra comida.</td>
</tr>
<tr>
<td class="tdresaltar"><img src="imagenes/juego/cartel_herreria.gif" width="64" height="32"></td>
<td class="td6">Herrería, lugar donde podes comprar armas, también hay un yunque y una fragua que servirá para el oficio de la herrería.</td>
</tr>
<tr>
<td class="tdresaltar"><img src="imagenes/juego/cartel_armaduras.gif" width="64" height="32"></td>
<td class="td6">Armería, acá se vende todo tipo de armaduras ya sea túnicas, escudos, cascos, etc.</td>
</tr>
<tr>
<td class="tdresaltar"><img src="imagenes/juego/cartel_magia.gif" width="64" height="32"></td>
<td class="td6">Magia, acá se venden todo tipo de Ítems mágicos.</td>
</tr>
<tr>
<td class="tdresaltar"><img src="imagenes/juego/cartel_pescadores.gif" width="64" height="32"></td>
<td class="td6">Pescadería, acá se vende todo lo relacionado con la pesca, por ej.. pescados, cañas, etc.</td>
</tr>
<tr>
<td class="tdresaltar"><img src="imagenes/juego/cartel_carpinteria.gif" width="64" height="32"></td>
<td class="td6">Carpintería, acá se vende todo lo relacionado con la madera, por ej.. leños, hachas, etc.</td>
</tr>
<tr>
<td class="tdresaltar"><img src="imagenes/juego/cartel_mineros.gif" width="64" height="32"></td>
<td class="td6">Minería, acá se vende todo lo relacionado con la minería, por ej.. minerales, picos, etc.</td>
</tr>
<tr>
<td class="tdresaltar"><img src="imagenes/juego/cartel_pociones.gif" width="64" height="32"></td>
<td class="td6">Pociones.</td>
</tr>
<tr>
<td class="tdresaltar"><img src="imagenes/juego/cartel_propiedades.gif" width="64" height="32"></td>
<td class="td6">Venta de Propiedades, aquí es el lugar para comprar propiedades (casas) que se encuentren vacías. Hay que aclarar que las propiedades pueden estar habilitadas o no en el servidor.<br>
Al comprar una propiedad obtendrás una <span class="resaltarcmd">LLAVE</span> con la que podrás cerrar o abrir la puerta de tu propiedad cuando quieras, además podrás depositar Ítems en el piso sin problema de que te los roben.</td>
</tr>
<tr>
<td class="tdresaltar"><img src="imagenes/juego/cartel_tabernero.gif" width="23" height="46"></td>
<td class="td6">Taberna, aquí es donde se compran todas las bebidas.</td>
</tr>
<tr>
<td class="tdresaltar"><img src="imagenes/juego/cartel_mercader.png" width="38" height="60"></td>
<td class="td6">Mercader compra-todo, estos NPCs tienen la especialidad de que pueden comprar casi todo tipo de ítem.</td>
</tr>
<tr>
<td class="tdresaltar"><img src="imagenes/juego/cartel_apostador.png" width="27" height="53"></td>
<td class="td6">Apostador, en él se puede apostar una suma de dinero, si ganan duplican la cantidad y si pierden el apostador se queda con el dinero apostado. Para apostar se hace así: <span class="resaltarcmd">/APOSTAR X</span> donde x es reemplazado por un número del 1 al 5000.</td>
</tr>
<tr>
<td class="tdresaltar"><img src="imagenes/juego/cartel_entrenador.gif" width="24" height="55"></td>
<td class="td6">Entrenador, a este NPC se le puede pedir que invoque criaturas con el comando <span class="resaltarcmd">/ENTRENAR</span>.</td>
</tr>
</table>



<br><br><br><hr noshade width="55%" size="1" color="#959595" align="center"><br><br>



<center><u><span class="resaltar">COMERCIO SEGURO ENTRE USUARIOS</span></u></center><br><br>

A través de este sistema, un usuario puede intercambiar Ítems por oro o por Ítems con otro usuario, sin necesidad de tener que tirar éstos al piso.<br><br>
Para activarlo, hay que clickear sobre un usuario y tipear el comando <span class="resaltarcmd">/COMERCIAR</span>, al hacerlo deberás esperar a que el otro usuario decida si quiere realizar algún tipo de intercambio con vos.<br>
De ser así, aquel deberá repetir el mismo comando, entonces se abrirá una ventana donde quien inició el proceso debe ofrecer algo para comerciar. Luego el otro usuario deberá decidir si acepta la oferta y elegir qué le dará a cambio al otro personaje y finalmente, el primero deberá ver si le conviene aceptar lo que el otro le quiere dar a cambio de lo que él le había ofrecido al otro usuario, si acepta el intercambio estará realizado.
</td></tr></table><br><br>

<center><a href="estados.php#ver">Anterior</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href="armas.php#ver"> Siguiente</a></center>
<br><br><table class="titulo_seccion"><tr><td>---</td></tr></table><table class="volver_indice"><tr valign="middle"><td align="left">&nbsp;<a href="index.php">&lt;&lt;Ir al Índice del Manual</a></td><td align="right">&nbsp;</td></tr></table>

</td>
</tr>
</table>
</body>
