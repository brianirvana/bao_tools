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
<table class="titulo_seccion"><tr><td><a name="ver"></a>- Controles y Comandos -</td></tr></table><br><table width="98%" align="center"><tr><td><span class="resaltarcmd"><center><font size="2"><u>Controles del juego:<u></font></center></span><br>

<table align="center" width="90%">
<tr>
<td class="tdresaltar5" width="15%">TECLA DEL TECLADO (KEYBOARD)</td>
<td class="tdresaltar5">DESCRIPCI�N Y FUNCION DE LA TECLA ESPECIFICADA:</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" width="10%" height="35">Arriba, Abajo, Izquierda y Derecha</td>
<td class="td3">Sirve para mover al personaje.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="35">Enter</td>
<td class="td3">Activa el casillero de chat, una vez activado escrib� lo que quieras y volv� a apretar la tecla para enviarlo.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35">Control</td>
<td class="td3">Con esta tecla el personaje ataca f�sicamente cuerpo a cuerpo (para utilizar armas de rango 
utiliza la tecla Usar).</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">F1</td>
<td class="td3">Sirve para enviar /PARTY a un personaje previamente chiqueado.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="35">F2</td>
<td class="td3">Saca una screenshot (imagen) del juego, la misma se guardar� en la carpeta "Screenshots" dentro de la carpeta del cliente del juego.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">F3</td>
<td class="td3">Sirve para /CREAR PARTY. Es decir, crear una party sin tener que 
introducir el comando /CREAR PARTY.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="35">F4</td>
<td class="td3">Para ver los FPS del juego (Frames Per Second, en espa�ol se 
puede traducir a: Im�genes Por Segundo).</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35">F5</td>
<td class="td3">Acceso r�pido a las opciones del juego, en donde encontraras 
botones hacia el manual oficial, la web, el reglamento, Opciones de Video y 
poder configurar los efectos gr�ficos a gusto, o tambi�n realizar una donaci�n 
al servidor para la manutenci�n del host.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="35">F6</td>
<td class="td3">Acceso r�pido al comando "/meditar".</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35">F7</td>
<td class="td3">Macro de hechizos autom�tico, lanza autom�ticamente el hechizo que selecciones. </td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="35">F8</td>
<td class="td3">Macro de trabajo autom�tico. Selecciona una herramienta, y presiona la tecla 
F8 para iniciar el macro, selecciona el �tem que desees construir repetidamente, 
y no te muevas ni hagas otra cosa, excepto a chatear, porque de lo contrario el macro se desactivar�.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35">F9</td>
<td class="td3">Macro de Golpes autom�tico, deja al personaje quieto como si estuvi�se atacando con la tecla CTRL en la direcci�n hac�a la que el personaje se encuentra mirando. </td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35">F10</td>
<td class="td3">Foto-Denuncias. Al presionar F10 dos veces y r�pido , automaticamente se tomar� una foto-denuncia. <br>
El <a href="http://www.bender-online.com.ar/web/index.php?op=Reglamento"> Reglamento Oficial </a> aclara todo acerca de la utilizaci�n de este comando. </td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="35">F12</td>
<td class="td3">Sirve para deslogear al igual que utilizando el comando /SALIR, 
y volver al panel de &quot;Conectar&quot; para logear otro personaje o el mismo.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35">Escape</td>
<td class="td3">Sirve para cerrar el juego por completo. El personaje 
permanecer� en el juego por m�s de 15 segundos.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="35">1, 2, 3, 4, 5, 6, 7, 8, 9 y 0</td>
<td class="td3">Mensajes predefinidos, sirven para decir un mensaje con solo presionar una tecla.<br>Se configuran desde las opciones del juego, presionando F5 o el bot�n Opciones.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="35">U o Doble Click</td>
<td class="td3">Sirve para usar un �tem, ten�s que seleccionar un �tem del inventario y pulsar la tecla para usarlo o en el caso de un arco servir� para atacar.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35">E</td>
<td class="td3">Sirve para equiparse un �tem que hayas seleccionado de tu inventario (armas, armaduras, etc.).No hace falta desequiparse un �tem para poder venderlo/tirarlo.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="35">A</td>
<td class="td3">Sirve para agarrar �tems del suelo, s�lo podes agarrar un �tem si el personaje est� sobre el mismo.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35">T</td>
<td class="td3">Sirve para tirar �tems al suelo, primero debes seleccionar del inventario un �tem a tirar y luego pulsar la tecla. En el caso de querer tirar oro de la billetera s�lo hace un 
clic en icono que esta al lado de donde muestra la cantidad del oro.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="35">D</td>
<td class="td3">Sirve para domar animales. Presiona la tecla y luego clickea sobre una criatura.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="35">F</td>
<td class="td3">Sirve para activar o desactivar los efectos 3D de sonido del BenderAO (Ideal para escuchar pasos de personajes invisibles con un sistema Est�reo de sonido).</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="35">S</td>
<td class="td3">Sirve para activar o desactivar el sonido general FXs del juego de manera r�pida y sencilla.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35">R</td>
<td class="td3">Sirve para robar. Luego de pulsar la tecla deber�s clickear sobre un usuario al que quieras robarle.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="35">O</td>
<td class="td3">Con esta tecla puedes ocultarte.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35">N</td>
<td class="td3">Esta tecla activa o desactiva los nombres fijos en pantalla de 
juego.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="35">M</td>
<td class="td3">Con esta tecla activas o desactivas la m�sica del juego.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35">L</td>
<td class="td3">Sirve para corregir la ubicaci�n del personaje.<br>
Esto pasa cuando hay LAG (retraso) en el servidor o en nuestra conexi�n, 
tambi�n puede ser causado por apretar L repetidamente. En BenderAO, es casi 
innesesario.(Aclaraci�n: Al ser paralizado/inmovilizado automaticamente se te actualiza la posici�n para evitar presionar la tecla
</td>
</tr>
<tr class='colorcolumna2'><td class="tdresaltar" height="35">Q</td>
<td class="td3">Sirve para ver el mapa completo de todo el juego junto a sus referencias.
.</td>
</tr>

</table>


<br><br>
<center><b><u>Aclaraci�n:</u></b></center><BR>

<p><center>Las teclas vienen cargadas por default, desde el menu de Opciones se pueden cargar a gusto de cada uno. <br>Es posible cambiar las teclas a su gusto, apretando F5 y luego haciendo click en &quot;Configurar Teclas&quot;.</center></p><br><br>

<span class="resaltarcmd"><center><u><b><font size="2">Comandos</font></b></u></center></span>
<br><br>Los comandos se introducen en la zona de chat y corresponden a c�digos �tiles para complementar el juego, estos comandos sirven para comerciar, mandar mensajes privados, etc.<br><br><br>


<table align="center" width="90%">
<tr>
<td class="tdresaltar5" width="20%">COMANDO</td>
<td class="tdresaltar5" width="79%">DESCRIPCI�N</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">/resetear</td>
<td class="td3">Este comando es muy utilizado luego de crear el personaje. Sirve para 'volver a nacer' llevando el personaje a nivel 1 y con un rostro completamente nuevo.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">Clic a un usuario + /AYUDA</td>
<td class="td3">Sirve para mandar un mensaje de ayuda, y si el usuario que clikeaste acepta, ambos podr�n ganar PREMIOS por cada nivel que vos subas. <br>
El comando puede ser utilizado s�lo por usuarios nuevos en BenderAO, y apartir de nivel 10 hasta nivel 35.<br>
Los premios pueden ser: Espadas matadragones, Copas de Oro/hierro/plata (que sirven para venderlas por oro, o fundirlas para conseguir lingotes), premios de oro, pociones y m�s.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">-TUMENSAJE</td>
<td class="td3">Sirve para mandar un mensaje en color rojo dentro del juego, ejemplo: -hola a todos!!</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">Mensaje con color negrita/cursiva</td>
<td class="td3">S�lo se puede hacer en un mensaje que vaya a consola, ejemplo: mensaje al clan o a la party.<br>
Al final del mensaje va el c�digo de color/negrita/cursiva, por ej. hola mundo ~255~255~255~1~1 los tres primeros n�meros son c�digos RGB de color. (ver colores personalizados en paint), los otros dos significan negrita y cursiva activadas (con ~0 se desactiva)<br><br>
Ejemplo: hola a todos!!~139~182~205~0~1 (ese mensaje saldr�a en color celeste con cursiva y sin negrita).</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="43">/motd</td>
<td class="td3">Muestra el Mensaje del d�a, es el mismo mensaje que aparece al entrar al juego.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="47">/uptime</td>
<td class="td3">Muestra el tiempo que estuvo en l�nea el servidor y tambi�n el tiempo que falta para el pr�ximo mantenimiento.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">/online</td>
<td class="td3">Muestra el total de usuarios conectados.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">/ping</td>
<td class="td3">Muestra el ping actual en MiliSegundos (1000 milisegundos (ms) = 1seg), esto sirve para saber si ten�s lag.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">/desc</td>
<td class="td3">Con este comando pueden cambiar la descripci�n del personaje (lo que va despu�s del nombre).</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">/est</td>
<td class="td3">Esto les muestra el estado del personaje. Les indica la cantidad de vida, man� y energ�a que tiene, adem�s de indicarles en qu� mapa y en qu� coordenadas se encuentra. Tambi�n indica el mayor y menor golpe, y si tiene un arma equipada, mostrar� en par�ntesis sus atributos; lo mismo sucede con la defensa.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">/seg</td>
<td class="td3">Este comando activa o desactiva el seguro. Cuando el seguro est� activado no le pueden pegar a ning�n ciudadano.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">\NICK</td>
<td class="td3">Con esto mandar�n mensajes en privado a un jugador que est� en la pantalla de juego. Es importante destacar que este comando utiliza la barra invertida a diferencia de los dem�s. Si el nombre es compuesto (Ej: Cid Campeador) deber�n usar el s�mbolo + en el lugar que est� el espacio, ejemplo: \cid+campeador como estas cid?)</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">/penas NICK</td>
<td class="td3">Con este comando pueden ver las penas que fueron aplicadas a un determinado personaje. (NICK se reemplaza por el nombre del personaje)</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">/salir</td>
<td class="td3">Sale del juego y vuelve a la pantalla principal. No puedes salir 
si est�s invisible y/o paralizado.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">/gm</td>
<td class="td3">Sirve para abrir el panel de Consultas a un Game Master. Una vez 
enviada tu consulta, los administradores del juego responder�n tu consulta lo 
antes posible, y en caso de que ya no est�s jugando, la respuesta se enviar� a 
tu e-mail.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">/denunciar NICK</td>
<td class="td3">Se usa para denunciar actos il�citos de otros personajes, tambi�n para denunciar bugs (errores del juego) o cualquier acto que amerite urgencia. El comando env�a un mensaje a la consola de los GMs, recuerden escribir BIEN el Nick del mismo.<br>
<b><u>Importante</u></b>: El mal uso del comando, para cosas que no sean de 
car�cter urgente, o enviando varios mensajes seguidos por un mismo asunto, ser� 
penado con c�rcel, y podr�a agravarse con el baneo permanente del personaje.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">/rol TUMENSAJE</td>
<td class="td3">Para hacer consultas sobre Rol, las mismas ser�n atendidas por los RoleMasters.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">/comerciar</td>
<td class="td3">Sirve para comerciar con un vendedor o un usuario, en el caso de un NPC pueden hacer doble 
clic sobre sus piernas.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">/apostar X</td>
<td class="td3">Sirve para apostar oro en un NPC apostador, reemplazar X por un n�mero del 1 al 5000.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">/meditar</td>
<td class="td3">Las clases m�gicas recuperan man� con este comando, o con F6.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">/descansar</td>
<td class="td3">Sirve para recuperar energ�a y salud junto a una fogata.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">/entrenar</td>
<td class="td3">Muestra la lista de criaturas que el entrenador puede invocar (en los entrenadores de la ciudad de 
Angrod).</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">/resucitar</td>
<td class="td3">El sacerdote de cada ciudad puede revivirte. Tambi�n pueden hacer doble 
clic sobre las piernas del sacerdote y los revivir� adem�s de curar todos los puntos de vida.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">/curar</td>
<td class="td3">El sacerdote de cada ciudad puede curarlos.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">/boveda</td>
<td class="td3">Accede al sistema de b�veda, para depositar y extraer objetos. Tambi�n es posible acceder haciendo doble click sobre las piernas del banquero.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">/balance</td>
<td class="td3">Sirve para ver cu�nto dinero tiene el personaje en el banco.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">/retirar X</td>
<td class="td3">Sirve para retirar oro de la cuenta bancaria, reemplazar X por la cantidad de oro a retirar.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">/depositar X</td>
<td class="td3">Sirve para depositar oro en la cuenta bancaria, reemplazar X por la cantidad de oro a depositar.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">/enlistar</td>
<td class="td3">Sirve para enlistarse en la Armada Real o en la Legi�n Oscura.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">/recompensa</td>
<td class="td3">Si cumplen sus objetivos faccionarios, recibir�n la recompensa del Rey/Demonio con este comando.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">/informacion</td>
<td class="td3">Muestra los deberes en la Armada Real o en la Legi�n Oscura.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">/retirar</td>
<td class="td3">Sirve para hacerse expulsar de la Armada Real o de la Legi�n Oscura.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">/fundarclan</td>
<td class="td3">Sirve para fundar un clan.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">/onlineclan</td>
<td class="td3">Sirve para saber qu&eacute; miembros del clan al que pertenezcan se encuentran conectados.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">/cmsg</td>
<td class="td3">Sirve para comunicarte con los miembros de vuestro clan que est�n conectados.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">/voto NICK</td>
<td class="td3">Sirve para votar el nuevo l�der del clan al que pertenecen.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">/salirclan</td>
<td class="td3">Sirve para salir del clan en el que se encuentran. Por otro lado, si el fundador o lider del clan sale del mismo, y el clan solo contiene un solo miembro, entonces el clan se disolver�.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">/nuevolider</td>
<td class="td3">Sirve para elegir nuevo lider del clan en el que se encuentran y de forma instant�nea. Luego de colocar ese comando, el l�der o fundador del clan podr� salir del mismo. Por otro lado, si el fundador o lider del clan sale del mismo, y el clan solo contiene un solo miembro, entonces el clan se disolver�.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">/quieto</td>
<td class="td3">Sirve para que la mascota de nuestro personaje se quede en el lugar. Primero deber&aacute;n clickear la mascota y luego escribir el comando.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">/acompa�ar</td>
<td class="td3">Sirve para que una mascota de nuestro personaje deje de estar quieta. Primero deber&aacute;n clickear la mascota y luego escribir el comando. </td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">/crearparty</td>
<td class="td3">Sirve para crear un party.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">/party</td>
<td class="td3">Sirve para solicitar ingreso al fundador de la party (clic en el fundador y luego el comando).</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">/acceptparty NICK</td>
<td class="td3">Sirve para aceptar a un personaje y meterlo en la party (reemplazar nick por el nombre del personaje).</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">/onlineparty</td>
<td class="td3">Les dir� qui&eacute;nes integran la party, el total de experiencia logrado de cada uno y el total de experiencia acumulado.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">/pmsg</td>
<td class="td3">Sirve para hablar en privado con todos los miembros de la party.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">/salirparty</td>
<td class="td3">Sirve para salir de la party.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">/echarparty NICK</td>
<td class="td3">Sirve para echar a un usuario de una party.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">/partylider NICK</td>
<td class="td3">Sirve para pasar el l�der de una party a otro usuario.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">/centinela CLAVE</td>
<td class="td3">Sirve para mandar la clave que te ha dado el Centinela (sistema anti-macro inasistido).</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">/promedio</td>
<td class="td3">Sirve para saber el promedio de vida de tu personaje.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">/guardar</td>
<td class="td3">Sirve para guardar los cambios de tu personaje. Este comando sirve, por ejemplo por si el servidor se encuentra inestable y suele apagarse de forma repentina, ya sea por un corte de luz, o de manera inexplicable. Esta 
citaci�n causar�a la perdida total y/o parcial de los cambios que hayamos efectuado desde que logeamos el personaje, hasta la ca�da que llamamos "repentina".</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">/reputacion</td>
<td class="td3">Este comando sirve para darle un GuildPoint a la persona que 
queramos. Los GuildPoints sirven para fundar clan. Necesitamos 40 skills en 
liderazgo, ser nivel 40 y tener 5 GuidPoints para fundar un clan. Este comando 
sirve para votarse a uno mismo.<br>
Para votar a alguien, debemos ser mayores a nivel 35.<br>
Solo podemos votar una sola vez, sin posibilidad de cambiar el voto.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">/confirmar</td>
<td class="td3">Este comando sirve para confirmar el voto que ingresamos con /REPUTACION 
nick. Una vez que ingresemos /CONFIRMAR no podremos revertir nuestro voto, y no 
podremos volver a votar. Mucho cuidado.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">/mireputacion</td>
<td class="td3">Sirve para ver cuantos GuildPoints acumulados tenemos. Es decir, 
si no estamos seguros de cuantas personas nos han votado, podemos ingresar /mireputacion 
y ver cuantos GuildPoints tenemos acumulados, y quien nos ha votado. (Necesarios 
10 para fundar clan)</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">/TOP10</td>
<td class="td3">Abre una ventana donde muestra los 20 personajes de mayor nivel 
del servidor. Similar al sistema de estad�sticas web del bot�n Opciones.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">/REYAYUDA</td>
<td class="td3">Explica detalladamente las reglas y el m�todo de juego del 
evento autom�tico tipo &quot;Rey vs Rey&quot;</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">/SURVIVORAYUDA</td>
<td class="td3">Explica detalladamente las reglas y el m�todo de juego del 
evento autom�tico tipo &quot;Survivor&quot;</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">/MISPJS</td>
<td class="td3">Este comando muestra todos los personajes registrados a tu 
e-mail, por si te olvidas el nombre de alguno de ellos. Y mediante el sistema de 
recuperar contrase�a, podr�s recuperar en no m�s de 1 minuto la contrase�a de 
cualquiera de tus personajes.</td>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">/BMSG</td>
<td class="td3">Si perteneces a alg�n consejo (Angrod/Concilio de las sombras) 
podr�s hablar entre tus compa�eros del Consejo con este comando, ejemplo: /BMSG 
Hola!</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">/TORNEO</td>
<td class="td3">Cuando un Game Master realice un evento o un torneo, las 
inscripciones al mismo se hacen utilizando este comando. Es decir, que con 
/TORNEO quedamos inscriptos en el evento que se est� realizando, si es que las 
inscripciones est�n abiertas.</td>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">/PARTICIPAR</td>
<td class="td3">En cada ciudad, hay un NPC (una criatura estilo vendedor) que te 
informa si hay un evento en curso. Con este comando te puedes inscribir en el 
evento/torneo que haya disponible en ese momento. En la consola del juego 
aparecen diariamente varios eventos o torneos autom�ticos para entretenerse un 
rato.</td>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">/HOGAR</td>
<td class="td3">En cada ciudad, hay un NPC (llamado Gobernador) el cual, si lo 
deseas, te vuelve ciudadano de la ciudad que te encuentres. Ejemplo, si estas en 
Harrogath y le haces clic al gobernador e ingresas: /HOGAR harrogath<br>
te vuelves ciudadano de dicha ciudad. Si te mueres en zona insegura, y usas 
simplemente /HOGAR<br>
volver�s en unos minutos a tu ciudad natal, o a la ciudad que hayas decidido 
hacerte habitante de la misma.</td>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">/FMSG</td>
<td class="td3">/FMSG MENSAJE: <br>
Sirve para comunicarte con los miembros de vuestra facci�n que est�n conectados.</td>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">/ONLINECAOS</td>
<td class="td3">Sirve para saber que miembros de la legi�n oscura est�n conectados y solo pueden usarlos aquellos miembros pertenecientes a la facci�n </td>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">/ONLINEREAL</td>
<td class="td3">Sirve para saber que miembros de la Armada Real est�n conectados y solo pueden usarlos aquellos miembros pertenecientes a la facci�n</td>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">/NUEVOLIDER nick</td>
<td class="td3">Sirve para elegir a un nuevo l�der del clan al que seamos l�der. Los requisitos son: Tener un clan, y que el nick elegido, sea un miembro del clan actualmente. Una vez realizado, el clan, pasar� a ser liderado por la persona que desiemos y podr� salir del clan con /SALIRCLAN en cualquier momento, sea fundador, o ex lider.</td>


<tr class='colorcolumna2'><td class="tdresaltar" height="45">/ACTIVAROFERTAS</td>
<td class="td3">Sirve para poder recibir ofertas de personajes u ofrecer nuestro personaje con /OFRECERPJ nick. Si esta opci�n la tenemos desactivada, no podremos ni recibir ofertas de otros personajes ni enviar ofertas a otros personajes.<br>
Con �ste comando se puede ACTIVAR y DESACTIVAR las ofertas. S�lo hay que colocar el mismo comando: /ACTIVAROFERTAS, y si est�n desactivadas, las activa, y viceversa.</td>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">/OFRECERPJ nick</td>
<td class="td3">Sirve para poder ofrecer nuestro personaje, e intercambiarlo con la persona que coloquemos en "nick". Para que esta operaci�n, pueda continuar, los personajes deben existir ambos, y adem�s, deben tener activadas las ofertas con el comando: /ACTIVAROFERTAS</td>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">/CANCELAROFERTA nick</td>
<td class="td3">Sirve para poder cancelar una oferta de nuestro personaje. Para que esta operaci�n, pueda continuar, el personaje "nick" debe existir.
Cuando estemos en una oferta, no podremos utilizar nuestro personaje hasta aceptar o cancelar la oferta, por ende es importante tener en cuenta este comando.</td>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">/ACEPTAROFERTA clave</td>
<td class="td3">Si hemos recibido una oferta para intercambiar nuestro personaje, nos daremos cuenta porque estaremos en el mapa 3, en el sector de "purgatorio" y adem�s, porque habremos recibido un mensaje y un e-mail del juego, con TODOS los datos del personaje que quiere intercambiar nuestro personaje. Ejemplo: Si "Pedro" le ofrece su personaje "Pedro" a "Juan" entonces, "juan" recibir� un email con todos los datos de "Pedro". Como por ejemplo: Los atributos, todos los skills, todos los �tems de b�veda e inventario (Con duraci�n de los amuletos inclu�das), todos los hechizos y en que orden estan, la vida, el oro y el oro depositado en b�veda, etc.
En ese e-mail, podremos ver la CLAVE que servir� para poder concretar la primera parte del proceso. Una vez que aceptemos la oferta, debemos esperar a que el otro usuario (en este caso "Pedro") acepte la oferta, ya que cuando nosotros aceptamos con "Juan" se le envi� toda nuestra informaci�n de "juan" a "pedro", y ahora "pedro", est� evaluando si desea concretar el intercambio o no.</td>


</table>
<br>
<br>
<center><a href="ciudades.php#ver"> Anterior</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href="entrenamiento.php#ver"> Siguiente</a></center>
</td></tr></table><br><br><table class="titulo_seccion"><tr><td>---</td></tr></table><table class="volver_indice"><tr valign="middle"><td align="left">&nbsp;<a href="index.php">&lt;&lt;Ir al �ndice del Manual</a></td><td align="right">&nbsp;</td></tr></table>
</td>
</tr>
</table>
</body>


</php>
