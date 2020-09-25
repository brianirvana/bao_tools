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
<tr>
<td>
<table class="titulo_seccion"><tr><td><a name="ver"></a>- Launcher y opciones: -</td></tr></table><br><table width="98%" align="center"><br><br><tr><td><center><u><span class="resaltar">Launcher</span></u></center><br><br>

<p><center><span class="size">Al iniciar BenderAO, lo primero que te aparecer� es el launcher. La funci�n principal que cumple el mismo, es de auto actualizar todo el juego. S�lo deber�s descargar nuevamente el instalador del juego si cambia de versi�n, <br>ya que todas las actualizaciones (parches) se realizar�n por esta v�a.
Solo deber�s presionar en el bot�n &quot;Jugar&quot; una vez que el programa <br>aparezca antes de que se cargue el juego. Pero en caso 
de tener alg�n error en el juego, es recomendable presionar el bot�n &quot;Reiniciar autoupdates&quot; <br>
y esperar a que se descarguen todas las actualizaciones pendientes nuevamente. <br><br>

Adem�s cumple otras multiples funciones que se dar�n a conocer luego de presentar la siguiente imagen:</span></center></p> <br><br>

<center> <img src="imagenes/juego/screenshot_autoupdater.jpg"></center></br></br>
<table align="center" width="90%">

<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">1</font><br><font color="#FFFFFF">Iniciar</font></td>
<td class="td3">Al presionar aqu� se iniciar�n actualizaciones pendientes (si es que hay alguna) para que tengas el juego totalmente actualizado y en su mejor funcionamiento, 
acto seguido, se ejecutar� el juego normalmente.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">2</font><br><font color="#FFFFFF">Estado</font></td>
<td class="td3">Aqu� podr�s ver el estado actual en que el servidor se encuentra. Es probable que este sistema no siempre este actualizado, por ende, siempre es mejor intentar entrar al juego para verificar. Pero el 99% de las veces, podr�s ver el estado del servidor y los usuarios onlines.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">3</font><br><font color="#FFFFFF">Reiniciar Updates</font></td>
<td class="td3">En caso de cualquier error que surga, siempre es recomendable hacer click en este bot�n, que es la soluci�n a muchos de ellos. Este bot�n, lo que hace es reiniciar todos las actualizaci�nes (updates) que se hayan realizado hasta el momento y las vuelve a instalar una por una, y as� podr�a resolverse casi cualquier inconveniente, o bien, la mayor�a de ellos. Si el juego persiste en decir que hay actualizacione pendientes, ten paciencia, pues probablemente esten todav�a armando una actualizaci�n y no hace falta que reinicies los updates, solo hace falta esperar hasta que el Launcher cargue nuevas actualizaciones por si mismo.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">4</font><br><font color="#FFFFFF">Configuraciones</font></td>
<td class="td3">El launcher da la posibilidad de que se puedan modificar las opciones de video (Resoluci�n, modo de video, opciones de sonido, etc) con solo hacer click en "Configuraciones" Al presionar click aqu�, desplegar�s el men� de configuraciones del juego, como en todos los juegos del mundo. Por ejemplo: puedes registrar las librer�as en caso de que haya alg�n error relacionado con eso (Es la soluci�n a muchos runtimes, pues si te ocurre alguno, no dudes en presionar este bot�n para solucionar problemas). Tambi�n es posible modificar el volumen del SONIDO y/o de la M�SICA del juego, como poder agregar/quitar efectos gr�ficos, y tambi�n es posible mejorar el rendimiento del juego cambiando el MODO DE VIDEO al que mejor te funcione.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">5</font><br><font color="#FFFFFF">Manual:</font></td>
<td class="td3">Al presionar click aqu�, puedes ingresar directamente a este manual, para poder conocer los primeros pasos a seguir, y adentrarte en las tierras de Bender con un conocimiento m�s amplio y certero. Ahorr�ndote as�, mucho tu tiempo.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">6</font><br><font color="#FFFFFF">Web:</font></td>
<td class="td3">Bot�n que lleva a la p�gina web autom�ticamente, simplemente al hacer clic sobre �l. Normalmente, demora unos segudos si no tienes ning�n explorador abierto (Mozilla, Google Chrome, Internet Explorer, etc)</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">7</font><br><font color="#FFFFFF">�Jugar Ahora!</font></td>
<td class="td3">Al presionar aqu� se iniciar�n actualizaciones pendientes (si es que hay alguna) para que tengas el juego totalmente actualizado y en su mejor funcionamiento, 
acto seguido, se ejecutar� el juego normalmente.</td>
</tr>

</table><br><br>
<br><br><br><hr noshade width="55%" size="1" color="#959595" align="center"><br><br>
<center><u><span class="resaltar">CONFIGURACIONES</span></u></center><br><br>



Para iniciar este programa, entra en la carpeta de instalaci�n de Bender Online y 
ejecuta el <span class="resaltarcmd">BENDERAO.EXE</span>, la cual te permitir� configurar el juego.<br>
<br>
<br>
<font color="#FFCC33"><B>OPCIONES DE VIDEO</B></font><br>
<br>
<B><U>Modo Ventana (Ver pantalla chica del juego)</U></B>: Al estar activada esta opci�n, siempre ver�s el juego en modo Ventana, aunque uses una resoluci�n de pantalla de 1024x768 o m�s. Si desactivas esta opci�n, tendr�s el juego en la PANTALLA COMPLETA.<br>
<br>
<B><U>Optimizar Efectos (Aumenta el Rendimiento)</U></B>: Actualmente esta opci�n, no tiene efecto alguno. Esta deshabilitada.<br>
<br>
<B><U>Limite FPS</U></B>: Los FPS, conocidos como "Frames Per Second", son los "Cuadros Por Segundo" que reproduce el juego. Este dato es importante, ya que si notamos un bajo rendimiento del juego, podr�a deberse a que los FPS estan muy por debajo de los 60 (que es el n�mero normal y corriente). Si tienes pocos FPS, es recomendable que pongas un l�mite de FPS menor a 100, para que obtengas un mejor rendimiento del juego, ya que tu PC no llega a reproducir los 100. De todas maneras, la consentraci�n de personajes en un mismo mapa, produce una gran baja en los FPS y es totalmente NORMAL. Para aumentar el rendimiento, es recomendable en ese momento, apretar la "N" para no ver los nicks de los personajes.<br>
<br>
<B><U>Modo de Video</U></B>: El modo de video, es el modo en el cual el motor gr�fico del juego, se ejecutar�. Existen actualmente 3 Modos: Software (El utilizado por default); Hardware y MIXED. Software quiere decir que el motor gr�fico, no utilizar� ninguna placa aceleradora (En caso de que haya), en cambio si lo har� en caso de que este la opci�n de Hardware activada. Mixed es una mezcla de ambas opciones, la cual podr�a ser una mejor�a en algunas PCS. El recomendable es SOFTWARE, pero tambi�n es recomendable probar cada opci�n individualmente.<br>
<br>
<B><U>Degradaci�n de transparencia en los techos.</U></B>: al estar activada esta opci�n, podr�s ver los Techos de las Casas, transparentes. Podr�s elegir con una barra, la cantidad de transparencia que desees. (Es recomendable desactivar esta opci�n si el juego tira alg�n error al ingresar)<br>
<br>
<B><U>Degradaci�n de los arboles al pasar por arriba.</U></B>: al estar activada esta opci�n, podr�s ver los �rboles transparentes al pasar por debajo de ellos. Podr�s elegir con una barra, la cantidad de transparencia que desees. (Es recomendable desactivar esta opci�n si el juego tira alg�n error al ingresar)<br>
<br>
<font color="#FFCC33"><B>OPCIONES DE SONIDO</B></font><br>
<br>
<B><U>Sonido Activado</U></B>: permite desactivar/activar los sonidos del juego por defecto, as� que si lo desactivas, cada vez que abras el juego empezar� sin sonido.<br>
<br>
<B><U>M�sica Activado</U></B>: permite desactivar/activar la m�sica del juego por defecto, as� que si lo desactivas, cada vez que abras el juego empezar� sin m�sica.<br>
<br>
<B><U>Efectos de Sonidos</U></B>: permite desactivar/activar los sondios del juego en 3D, as� que si lo desactivas, cada vez que abras el juego empezar� sin efectos 3D. Estos efectos, se diferencian del sonido com�n, por tener un efecto tridimencional respecto al sonido, y poder escuchar, de qu� lado vienen los sondios (como ser: Los pasos, las pociones, los ru�dos de los hechizos, etc) de las 4 posiciones posibles (Norte, sur, este y oeste) (Es MUY recomendable desactivar esta opci�n si el juego tira alg�n error al ingresar)<br>
<br>
<B><U>Efectos de Flechas</U></B>: permite desactivar/activar los efectos de las flechas del juego. Cada vez que un personaje tire una flecha con su arco, se ver� r�pidamente una flecha salir de su personaje hasta dar en el objetivo, en donde desaparecer�. Este efecto activado, reduce m�nimanente el rendimiento del juego, es casi indiferente tenerla activada o desactivada.<br>
<br>
<font color="#FFCC33"><B>VERIFICAR LIBRERIAS</B></font><br>
Permite verificar si las librer�as del juego (.ocx, .dll) est�n correctamente registradas en la 
PC, si en alg�n momento surge un error como "RunTime Error" o "Automation Error" es a causa de esto, as� que corre el 
AOSetup y verifica las librer�as.


<br><br><br>

<center>
<center> <img src="imagenes/juego/screenshot_registrarlibreria.jpg"></center></br></br>

<br><br><br><hr noshade width="55%" size="1" color="#959595" align="center"><br><br>



<center><u><span class="resaltar">BORRAR UN PERSONAJE </span></u>&nbsp;<font color="#FF0000"><b>
</b></font></center><br><br>

Para borrar un personaje, debes estar posicionado en el Panel de Cuenta, es decir, conectado a tu cuenta pero sin entrar a ning�n personaje, y debes seleccionar el personaje a borrar y presionar el bot�n <span class="resaltarcmd">"Borrar Personaje"</span></span>
Los personajes mayores a nivel 35 no pueden ser borrados por cuestiones de seguridad. Si deseas borrar un personaje mayor a nivel 35, como consejo te comentamos que puedes intercambiar el personaje con otro usuario, por ejemplo un usuario nuevo al que le sirva el personaje. Al finalizar el intercambio de tu personaje por uno de nivel menor a 35, podr�s borrar el nuevo personaje intercambiado y utilizar ese casillero.<br><br>
<u>

<table align="Center">
<tr>
<td>
<img src="imagenes/juego/BorrarPersonaje.png"></center>
</td
</tr>
</table><br>
<br><br><br><hr noshade width="55%" size="1" color="#959595" align="center"><br><br>

<center><u><span class="resaltar">BORRAR UN PERSONAJE </span></u>&nbsp;</center><br><br>
Para poder borrar un personaje, es necesario tener validada tu cuenta. De lo contrario no podr�s borrar ning�n personaje, ni tampoco recuperar contrase�a de la cuenta en caso de que te la hayas olvidado.
<br><br>
Recuerda que se encuentra habilitado el <span class="resaltarcmd">SISTEMA DE CAMBIO DE E-MAIL DE PERSONAJES</span>, al cual se accede desde una serie de comandos que puedes averiguar aqu� en el manual oficial, en la secci�n <a href="comandos.php?seccion=controlesycomandos#ver">"COMANDOS"</a>

<br><br><br><br>

<center>

<br><br><br>

<center><a href="crearpersonaje.php?seccion=prologo#ver">Anterior</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href="primerospasos.php?seccion=pantalladecreacion#ver"> Siguiente</a></center>

<p align="left">&nbsp;</td></tr></table><br><br><table class="titulo_seccion"><tr><td>---</td></tr></table><table class="volver_indice"><tr valign="middle"><td align="left">&nbsp;<a href="index.php">&lt;&lt;Ir al �ndice del Manual</a></td><td align="right">&nbsp;</td></tr></table>
</td>
</tr>
</table>
</body>

