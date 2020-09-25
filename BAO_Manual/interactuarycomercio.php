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

<br>
<!-- TABLA 1 -->
<table align="center" cellpadding="0" cellspacing="0" border="0" style="width:70%">
<td style="background:""; text-align:center; height:148px">

<br>

<table align="Center" class="body" width="1100px">
<tr>
<td>
<table class="titulo_seccion"><tr><td><a name="ver"></a>- Interactuar y Comercio -</td></tr></table><br><table width="98%" align="center"><tr><td><center><u><span class="resaltar">INTERACTUAR</span></u></center><br><br>
A continuaci�n se nombran algunas formas de interactuar:<br><br>

<table align="center" width="75%">
<tr>
<td class="tdresaltar" height="120">Usuarios<br><img src="imagenes/juego/usuarios.JPG" width="85" height="98"></td>
<td class="td6">A los usuarios los veras con un nick en color seg�n su estado cuando pases el puntero sobre su personaje, a menos que hayas desactivado la vista de nombres con <span class="resaltarcmd">TECLA VER NOMBRES (N)</span>.<br>
Al clickear un usuario podr�s ver en la consola su nick, estado y una descripci�n, si es que el usuario ha seteado alguna con el comando <span class="resaltarcmd">/DESC</span>.</td>
</tr>


<tr>
<td class="tdresaltar" height="120">NPCs<br>(Criaturas, Comerciantes, etc.)<img src="imagenes/juego/cartel_mercader.png" width="85" height="98"></td>
<td class="td6">Se lo denomina NPC a todo personaje o criatura controlado autom�ticamente por el Juego.<br>
Podr�s interactuar con algunos NPCs comerciantes con diversos comandos y teclas, tambi�n podr�s atacar a criaturas, todo esto lo encontrar�s en otras secciones m�s espec�ficas. Los comandos m�s comunes para comerciar son: Clic izquierdo sobre la criatura y presionar Enter, tipear el comando: /COMERCIAR y luego enter nuevamente. Otro m�todo para comerciar, es hacer clic r�pidamente, cerca de los pies de la criatura. M�s informaci�n sobre comandos en secci�n: <a href="comandos.php">Controles y Comandos.</a></td>
</tr>

<tr>
<td class="tdresaltar" height="120">Puertas<br><img src="imagenes/juego/pj_puerta.jpg" width="85" height="98"></td>
<td class="td6">Una puerta se abre haci�ndole <span class="resaltarcmd">DOBLE CLICK</span> o en el caso que est� cerrada con llave ten�s que tener la correspondiente llave y usarla presionando <span class="resaltarcmd">TECLA USAR (U o DOBLE CLICK)</span> sobre la llave, luego clickear sobre la puerta y as� quedar� abierta para que cualquier usuario pueda entrar. Para cerrarla se debe repetir el mismo proceso.</td>
</tr>

<tr>
<td class="tdresaltar" height="120">Portales<br><img src="imagenes/juego/pj_portal.jpg" width="86" height="101"></td>
<td class="td6">Pasando sobre ellos podr�s transportarte a otro lugar, tambi�n podes clickearlos para saber a donde te llevar�.</td>
</tr>

<tr>
<td class="tdresaltar" height="45">Carteles<br>Tumbas<br><img src="imagenes/juego/pj_tumba.jpg" width="90" height="99"></td>
<td class="td6">Haci�ndole <span class="resaltarcmd">DOBLE CLICK</span> a un cartel o tumba podr�s ver una breve descripci�n del mismo.</td>
</tr>

<tr>
<td class="tdresaltar" height="120">�rboles, Yacimientos, Fraguas, Yunques, etc.<br><img src="imagenes/juego/pj_talando.jpg" width="85" height="98"></td>
<td class="td6">Si ten�s equipada una herramienta adecuada podr�s utilizar estos objetos para conseguir insumos o fabricar objetos.</td>
</tr>

<tr>
<td class="tdresaltar" height="120">Agua<br><img src="imagenes/juego/pj_navegando.gif" width="85" height="98"></td>
<td class="td6">Si en alg�n momento ves agua (ya sea r�os o mares) podr�s navegar o pescar en ella siempre. Para navegar necesitaras ser como m�nimo nivel 25(Siendo trabajador) o nivel 28 y tener una barca.</td>
</tr>

<tr>
<td class="tdresaltar" height="120">Ramitas / Hacer fogatas<br><img src="imagenes/graficos/578.gif" width="85" height="98"></td>
<td class="td6">Una Ramitas se convierte en fogata, teniendo equipada y seleccionada una DAGA COM�N (Ver: ARMAS) y haci�ndole <span class="resaltarcmd">DOBLE CLICK</span> y presionando <span class="resaltarcmd">TECLA USAR (tecla: U)</span> sobre las ramitas. Este proceso puede demorar varias veces de repetida la acci�n. Para hacer fogatas cada vez m�s r�pido se debe repetir el mismo proceso e ir�s ganando skills en Supervivencia, los cuales te ayudar�n a ver la vida de las criaturas hostiles del juego (Con 60 skills como m�nimo).</td>
</tr>
</table>
<br><br><br><hr noshade width="55%" size="1" color="#959595" align="center"><br><br>



<center><u><span class="resaltar">INTERACTUAR/COMERCIAR CON NPCS</span></u></center><br><br>

La forma de pago en BenderAO es a trav�s de las monedas de oro. Ahora bien, para comerciar deber�s dirigirte a la tienda en la que quieras comprar algo y acercarte al comerciante o NPC mejor dicho, entonces deber�s clickear sobre �l y hacer <span class="resaltarcmd">/COMERCIAR o DOBLE CLICK</span> sobre el mismo. Entonces se te abrir� una ventana nueva muy f�cil de usar, la cual est� dividida en dos.
<br><br>
Del lado izquierdo encontrar�s las opciones de compra y del lado derecho las opciones de venta. Para comprar o vender un �tem solo basta con clickearlo y pulsar sobre el correspondiente bot�n de compra o venta. Por �ltimo, abajo ten�s un indicador de cantidad el cual podr�s modificar para comprar o vender en cantidad.Tambi�n el comerciante te proporciona el precio de venta total del �tem.
<br><br>
Aqu� una breve descripci�n de los NPCs m�s importantes con los que podr�s interactuar:<br><br>

<table align="center" width="75%">
<tr>
<td class="tdresaltar">CARTEL/NPC</td>
<td class="tdresaltar">CARACTER�STICAS</td>
</tr>
<tr>
<td class="tdresaltar"><img src="imagenes/juego/cartel_proviciones.gif" width="49" height="32"></td>
<td class="td6">Tienda de provisiones, aqu� se compra comida.</td>
</tr>
<tr>
<td class="tdresaltar"><img src="imagenes/juego/cartel_herreria.gif" width="64" height="32"></td>
<td class="td6">Herrer�a, lugar donde podes comprar armas, tambi�n hay un yunque y una fragua que servir� para el oficio de la herrer�a.</td>
</tr>
<tr>
<td class="tdresaltar"><img src="imagenes/juego/cartel_armaduras.gif" width="64" height="32"></td>
<td class="td6">Armer�a, ac� se vende todo tipo de armaduras ya sea t�nicas, escudos, cascos, etc.</td>
</tr>
<tr>
<td class="tdresaltar"><img src="imagenes/juego/cartel_magia.gif" width="64" height="32"></td>
<td class="td6">Magia, ac� se venden todo tipo de �tems m�gicos.</td>
</tr>
<tr>
<td class="tdresaltar"><img src="imagenes/juego/cartel_pescadores.gif" width="64" height="32"></td>
<td class="td6">Pescader�a, ac� se vende todo lo relacionado con la pesca, por ej.. pescados, ca�as, etc.</td>
</tr>
<tr>
<td class="tdresaltar"><img src="imagenes/juego/cartel_carpinteria.gif" width="64" height="32"></td>
<td class="td6">Carpinter�a, ac� se vende todo lo relacionado con la madera, por ej.. le�os, hachas, etc.</td>
</tr>
<tr>
<td class="tdresaltar"><img src="imagenes/juego/cartel_mineros.gif" width="64" height="32"></td>
<td class="td6">Miner�a, ac� se vende todo lo relacionado con la miner�a, por ej.. minerales, picos, etc.</td>
</tr>
<tr>
<td class="tdresaltar"><img src="imagenes/juego/cartel_pociones.gif" width="64" height="32"></td>
<td class="td6">Pociones.</td>
</tr>
<tr>
<td class="tdresaltar"><img src="imagenes/juego/cartel_propiedades.gif" width="64" height="32"></td>
<td class="td6">Venta de Propiedades, aqu� es el lugar para comprar propiedades (casas) que se encuentren vac�as. Hay que aclarar que las propiedades pueden estar habilitadas o no en el servidor.<br>
Al comprar una propiedad obtendr�s una <span class="resaltarcmd">LLAVE</span> con la que podr�s cerrar o abrir la puerta de tu propiedad cuando quieras, adem�s podr�s depositar �tems en el piso sin problema de que te los roben.</td>
</tr>
<tr>
<td class="tdresaltar"><img src="imagenes/juego/cartel_tabernero.gif" width="23" height="46"></td>
<td class="td6">Taberna, aqu� es donde se compran todas las bebidas.</td>
</tr>
<tr>
<td class="tdresaltar"><img src="imagenes/juego/cartel_mercader.png" width="38" height="60"></td>
<td class="td6">Mercader compra-todo, estos NPCs tienen la especialidad de que pueden comprar casi todo tipo de �tem.</td>
</tr>
<tr>
<td class="tdresaltar"><img src="imagenes/juego/cartel_apostador.png" width="27" height="53"></td>
<td class="td6">Apostador, en �l se puede apostar una suma de dinero, si ganan duplican la cantidad y si pierden el apostador se queda con el dinero apostado. Para apostar se hace as�: <span class="resaltarcmd">/APOSTAR X</span> donde x es reemplazado por un n�mero del 1 al 5000.</td>
</tr>
<tr>
<td class="tdresaltar"><img src="imagenes/juego/cartel_entrenador.gif" width="24" height="55"></td>
<td class="td6">Entrenador, a este NPC se le puede pedir que invoque criaturas con el comando <span class="resaltarcmd">/ENTRENAR</span>.</td>
</tr>
</table>



<br><br><br><hr noshade width="55%" size="1" color="#959595" align="center"><br><br>



<center><u><span class="resaltar">COMERCIO SEGURO ENTRE USUARIOS</span></u></center><br><br>

A trav�s de este sistema, un usuario puede intercambiar �tems por oro o por �tems con otro usuario, sin necesidad de tener que tirar �stos al piso.<br><br>
Para activarlo, hay que clickear sobre un usuario y tipear el comando <span class="resaltarcmd">/COMERCIAR</span>, al hacerlo deber�s esperar a que el otro usuario decida si quiere realizar alg�n tipo de intercambio con vos.<br>
De ser as�, aquel deber� repetir el mismo comando, entonces se abrir� una ventana donde quien inici� el proceso debe ofrecer algo para comerciar. Luego el otro usuario deber� decidir si acepta la oferta y elegir qu� le dar� a cambio al otro personaje y finalmente, el primero deber� ver si le conviene aceptar lo que el otro le quiere dar a cambio de lo que �l le hab�a ofrecido al otro usuario, si acepta el intercambio estar� realizado.
</td></tr></table><br><br>

<center><a href="estados.php#ver">Anterior</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href="armas.php#ver"> Siguiente</a></center>
<br><br><table class="titulo_seccion"><tr><td>---</td></tr></table><table class="volver_indice"><tr valign="middle"><td align="left">&nbsp;<a href="index.php">&lt;&lt;Ir al �ndice del Manual</a></td><td align="right">&nbsp;</td></tr></table>

</td>
</tr>
</table>
</body>
