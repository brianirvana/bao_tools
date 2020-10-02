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
<tr>
<td>
<table class="titulo_seccion"><tr><td><a name="ver"></a>- Controles y Comandos -</td></tr></table><br><table width="98%" align="center"><tr><td><span class="resaltarcmd"><center><font size="2"><u>Controles del juego:<u></font></center></span><br>

<table align="center" width="90%">
<tr>
<td class="tdresaltar5" width="15%">TECLA DEL TECLADO (KEYBOARD)</td>
<td class="tdresaltar5">DESCRIPCIÓN Y FUNCION DE LA TECLA ESPECIFICADA:</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" width="10%" height="35">Arriba, Abajo, Izquierda y Derecha</td>
<td class="td3">Sirve para mover al personaje.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="35">Enter</td>
<td class="td3">Activa el casillero de chat, una vez activado escribí lo que quieras y volvé a apretar la tecla para enviarlo.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35">Control</td>
<td class="td3">Con esta tecla el personaje ataca físicamente cuerpo a cuerpo (para utilizar armas de rango 
utiliza la tecla Usar).</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">F1</td>
<td class="td3">Sirve para enviar /PARTY a un personaje previamente chiqueado.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="35">F2</td>
<td class="td3">Saca una screenshot (imagen) del juego, la misma se guardará en la carpeta "Screenshots" dentro de la carpeta del cliente del juego.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">F3</td>
<td class="td3">Sirve para /CREAR PARTY. Es decir, crear una party sin tener que 
introducir el comando /CREAR PARTY.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="35">F4</td>
<td class="td3">Para ver los FPS del juego (Frames Per Second, en español se 
puede traducir a: Imágenes Por Segundo).</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35">F5</td>
<td class="td3">Acceso rápido a las opciones del juego, en donde encontraras 
botones hacia el manual oficial, la web, el reglamento, Opciones de Video y 
poder configurar los efectos gráficos a gusto, o también realizar una donación 
al servidor para la manutención del host.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="35">F6</td>
<td class="td3">Acceso rápido al comando "/meditar".</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35">F7</td>
<td class="td3">Macro de hechizos automático, lanza automáticamente el hechizo que selecciones. </td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="35">F8</td>
<td class="td3">Macro de trabajo automático. Selecciona una herramienta, y presiona la tecla 
F8 para iniciar el macro, selecciona el ítem que desees construir repetidamente, 
y no te muevas ni hagas otra cosa, excepto a chatear, porque de lo contrario el macro se desactivará.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35">F9</td>
<td class="td3">Macro de Golpes automático, deja al personaje quieto como si estuviése atacando con la tecla CTRL en la dirección hacía la que el personaje se encuentra mirando. </td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35">F10</td>
<td class="td3">Foto-Denuncias. Al presionar F10 dos veces y rápido , automaticamente se tomará una foto-denuncia. <br>
El <a href="http://www.bender-online.com.ar/web/index.php?op=Reglamento"> Reglamento Oficial </a> aclara todo acerca de la utilización de este comando. </td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="35">F12</td>
<td class="td3">Sirve para deslogear al igual que utilizando el comando /SALIR, 
y volver al panel de &quot;Conectar&quot; para logear otro personaje o el mismo.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35">Escape</td>
<td class="td3">Sirve para cerrar el juego por completo. El personaje 
permanecerá en el juego por más de 15 segundos.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="35">1, 2, 3, 4, 5, 6, 7, 8, 9 y 0</td>
<td class="td3">Mensajes predefinidos, sirven para decir un mensaje con solo presionar una tecla.<br>Se configuran desde las opciones del juego, presionando F5 o el botón Opciones.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="35">U o Doble Click</td>
<td class="td3">Sirve para usar un ítem, tenés que seleccionar un ítem del inventario y pulsar la tecla para usarlo o en el caso de un arco servirá para atacar.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35">E</td>
<td class="td3">Sirve para equiparse un ítem que hayas seleccionado de tu inventario (armas, armaduras, etc.).No hace falta desequiparse un ítem para poder venderlo/tirarlo.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="35">A</td>
<td class="td3">Sirve para agarrar ítems del suelo, sólo podes agarrar un ítem si el personaje está sobre el mismo.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35">T</td>
<td class="td3">Sirve para tirar ítems al suelo, primero debes seleccionar del inventario un ítem a tirar y luego pulsar la tecla. En el caso de querer tirar oro de la billetera sólo hace un 
clic en icono que esta al lado de donde muestra la cantidad del oro.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="35">D</td>
<td class="td3">Sirve para domar animales. Presiona la tecla y luego clickea sobre una criatura.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="35">F</td>
<td class="td3">Sirve para activar o desactivar los efectos 3D de sonido del BenderAO (Ideal para escuchar pasos de personajes invisibles con un sistema Estéreo de sonido).</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="35">S</td>
<td class="td3">Sirve para activar o desactivar el sonido general FXs del juego de manera rápida y sencilla.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35">R</td>
<td class="td3">Sirve para robar. Luego de pulsar la tecla deberás clickear sobre un usuario al que quieras robarle.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="35">O</td>
<td class="td3">Con esta tecla puedes ocultarte.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35">N</td>
<td class="td3">Esta tecla activa o desactiva los nombres fijos en pantalla de 
juego.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="35">M</td>
<td class="td3">Con esta tecla activas o desactivas la música del juego.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35">L</td>
<td class="td3">Sirve para corregir la ubicación del personaje.<br>
Esto pasa cuando hay LAG (retraso) en el servidor o en nuestra conexión, 
también puede ser causado por apretar L repetidamente. En BenderAO, es casi 
innesesario.(Aclaración: Al ser paralizado/inmovilizado automaticamente se te actualiza la posición para evitar presionar la tecla
</td>
</tr>
<tr class='colorcolumna2'><td class="tdresaltar" height="35">Q</td>
<td class="td3">Sirve para ver el mapa completo de todo el juego junto a sus referencias.
.</td>
</tr>

</table>


<br><br>
<center><b><u>Aclaración:</u></b></center><BR>

<p><center>Las teclas vienen cargadas por default, desde el menu de Opciones se pueden cargar a gusto de cada uno. <br>Es posible cambiar las teclas a su gusto, apretando F5 y luego haciendo click en &quot;Configurar Teclas&quot;.</center></p><br><br>

<span class="resaltarcmd"><center><u><b><font size="2">Comandos</font></b></u></center></span>
<br><br>Los comandos se introducen en la zona de chat y corresponden a códigos útiles para complementar el juego, estos comandos sirven para comerciar, mandar mensajes privados, etc.<br><br><br>


<table align="center" width="90%">
<tr>
<td class="tdresaltar5" width="20%">COMANDO</td>
<td class="tdresaltar5" width="79%">DESCRIPCIÓN</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">/resetear</td>
<td class="td3">Este comando es muy utilizado luego de crear el personaje. Sirve para 'volver a nacer' llevando el personaje a nivel 1 y con un rostro completamente nuevo.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">Clic a un usuario + /AYUDA</td>
<td class="td3">Sirve para mandar un mensaje de ayuda, y si el usuario que clikeaste acepta, ambos podrán ganar PREMIOS por cada nivel que vos subas. <br>
El comando puede ser utilizado sólo por usuarios nuevos en BenderAO, y apartir de nivel 10 hasta nivel 35.<br>
Los premios pueden ser: Espadas matadragones, Copas de Oro/hierro/plata (que sirven para venderlas por oro, o fundirlas para conseguir lingotes), premios de oro, pociones y más.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">-TUMENSAJE</td>
<td class="td3">Sirve para mandar un mensaje en color rojo dentro del juego, ejemplo: -hola a todos!!</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">Mensaje con color negrita/cursiva</td>
<td class="td3">Sólo se puede hacer en un mensaje que vaya a consola, ejemplo: mensaje al clan o a la party.<br>
Al final del mensaje va el código de color/negrita/cursiva, por ej. hola mundo ~255~255~255~1~1 los tres primeros números son códigos RGB de color. (ver colores personalizados en paint), los otros dos significan negrita y cursiva activadas (con ~0 se desactiva)<br><br>
Ejemplo: hola a todos!!~139~182~205~0~1 (ese mensaje saldría en color celeste con cursiva y sin negrita).</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="43">/motd</td>
<td class="td3">Muestra el Mensaje del día, es el mismo mensaje que aparece al entrar al juego.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="47">/uptime</td>
<td class="td3">Muestra el tiempo que estuvo en línea el servidor y también el tiempo que falta para el próximo mantenimiento.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">/online</td>
<td class="td3">Muestra el total de usuarios conectados.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">/ping</td>
<td class="td3">Muestra el ping actual en MiliSegundos (1000 milisegundos (ms) = 1seg), esto sirve para saber si tenés lag.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">/desc</td>
<td class="td3">Con este comando pueden cambiar la descripción del personaje (lo que va después del nombre).</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">/est</td>
<td class="td3">Esto les muestra el estado del personaje. Les indica la cantidad de vida, maná y energía que tiene, además de indicarles en qué mapa y en qué coordenadas se encuentra. También indica el mayor y menor golpe, y si tiene un arma equipada, mostrará en paréntesis sus atributos; lo mismo sucede con la defensa.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">/seg</td>
<td class="td3">Este comando activa o desactiva el seguro. Cuando el seguro está activado no le pueden pegar a ningún ciudadano.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">\NICK</td>
<td class="td3">Con esto mandarán mensajes en privado a un jugador que esté en la pantalla de juego. Es importante destacar que este comando utiliza la barra invertida a diferencia de los demás. Si el nombre es compuesto (Ej: Cid Campeador) deberán usar el símbolo + en el lugar que está el espacio, ejemplo: \cid+campeador como estas cid?)</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">/penas NICK</td>
<td class="td3">Con este comando pueden ver las penas que fueron aplicadas a un determinado personaje. (NICK se reemplaza por el nombre del personaje)</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">/salir</td>
<td class="td3">Sale del juego y vuelve a la pantalla principal. No puedes salir 
si estás invisible y/o paralizado.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">/gm</td>
<td class="td3">Sirve para abrir el panel de Consultas a un Game Master. Una vez 
enviada tu consulta, los administradores del juego responderán tu consulta lo 
antes posible, y en caso de que ya no estés jugando, la respuesta se enviará a 
tu e-mail.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">/denunciar NICK</td>
<td class="td3">Se usa para denunciar actos ilícitos de otros personajes, también para denunciar bugs (errores del juego) o cualquier acto que amerite urgencia. El comando envía un mensaje a la consola de los GMs, recuerden escribir BIEN el Nick del mismo.<br>
<b><u>Importante</u></b>: El mal uso del comando, para cosas que no sean de 
carácter urgente, o enviando varios mensajes seguidos por un mismo asunto, será 
penado con cárcel, y podría agravarse con el baneo permanente del personaje.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">/rol TUMENSAJE</td>
<td class="td3">Para hacer consultas sobre Rol, las mismas serán atendidas por los RoleMasters.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">/comerciar</td>
<td class="td3">Sirve para comerciar con un vendedor o un usuario, en el caso de un NPC pueden hacer doble 
clic sobre sus piernas.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">/apostar X</td>
<td class="td3">Sirve para apostar oro en un NPC apostador, reemplazar X por un número del 1 al 5000.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">/meditar</td>
<td class="td3">Las clases mágicas recuperan maná con este comando, o con F6.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">/descansar</td>
<td class="td3">Sirve para recuperar energía y salud junto a una fogata.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">/entrenar</td>
<td class="td3">Muestra la lista de criaturas que el entrenador puede invocar (en los entrenadores de la ciudad de 
Angrod).</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">/resucitar</td>
<td class="td3">El sacerdote de cada ciudad puede revivirte. También pueden hacer doble 
clic sobre las piernas del sacerdote y los revivirá además de curar todos los puntos de vida.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">/curar</td>
<td class="td3">El sacerdote de cada ciudad puede curarlos.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">/boveda</td>
<td class="td3">Accede al sistema de bóveda, para depositar y extraer objetos. También es posible acceder haciendo doble click sobre las piernas del banquero.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">/balance</td>
<td class="td3">Sirve para ver cuánto dinero tiene el personaje en el banco.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">/retirar X</td>
<td class="td3">Sirve para retirar oro de la cuenta bancaria, reemplazar X por la cantidad de oro a retirar.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">/depositar X</td>
<td class="td3">Sirve para depositar oro en la cuenta bancaria, reemplazar X por la cantidad de oro a depositar.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">/enlistar</td>
<td class="td3">Sirve para enlistarse en la Armada Real o en la Legión Oscura.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">/recompensa</td>
<td class="td3">Si cumplen sus objetivos faccionarios, recibirán la recompensa del Rey/Demonio con este comando.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">/informacion</td>
<td class="td3">Muestra los deberes en la Armada Real o en la Legión Oscura.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">/retirar</td>
<td class="td3">Sirve para hacerse expulsar de la Armada Real o de la Legión Oscura.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">/fundarclan</td>
<td class="td3">Sirve para fundar un clan.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">/onlineclan</td>
<td class="td3">Sirve para saber qu&eacute; miembros del clan al que pertenezcan se encuentran conectados.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">/cmsg</td>
<td class="td3">Sirve para comunicarte con los miembros de vuestro clan que estén conectados.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">/voto NICK</td>
<td class="td3">Sirve para votar el nuevo líder del clan al que pertenecen.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">/salirclan</td>
<td class="td3">Sirve para salir del clan en el que se encuentran. Por otro lado, si el fundador o lider del clan sale del mismo, y el clan solo contiene un solo miembro, entonces el clan se disolverá.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">/nuevolider</td>
<td class="td3">Sirve para elegir nuevo lider del clan en el que se encuentran y de forma instantánea. Luego de colocar ese comando, el líder o fundador del clan podrá salir del mismo. Por otro lado, si el fundador o lider del clan sale del mismo, y el clan solo contiene un solo miembro, entonces el clan se disolverá.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">/quieto</td>
<td class="td3">Sirve para que la mascota de nuestro personaje se quede en el lugar. Primero deber&aacute;n clickear la mascota y luego escribir el comando.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">/acompañar</td>
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
<td class="td3">Les dirá qui&eacute;nes integran la party, el total de experiencia logrado de cada uno y el total de experiencia acumulado.</td>
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
<td class="td3">Sirve para pasar el líder de una party a otro usuario.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">/centinela CLAVE</td>
<td class="td3">Sirve para mandar la clave que te ha dado el Centinela (sistema anti-macro inasistido).</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">/promedio</td>
<td class="td3">Sirve para saber el promedio de vida de tu personaje.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">/guardar</td>
<td class="td3">Sirve para guardar los cambios de tu personaje. Este comando sirve, por ejemplo por si el servidor se encuentra inestable y suele apagarse de forma repentina, ya sea por un corte de luz, o de manera inexplicable. Esta 
citación causaría la perdida total y/o parcial de los cambios que hayamos efectuado desde que logeamos el personaje, hasta la caída que llamamos "repentina".</td>
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
del servidor. Similar al sistema de estadísticas web del botón Opciones.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">/REYAYUDA</td>
<td class="td3">Explica detalladamente las reglas y el método de juego del 
evento automático tipo &quot;Rey vs Rey&quot;</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">/SURVIVORAYUDA</td>
<td class="td3">Explica detalladamente las reglas y el método de juego del 
evento automático tipo &quot;Survivor&quot;</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">/MISPJS</td>
<td class="td3">Este comando muestra todos los personajes registrados a tu 
e-mail, por si te olvidas el nombre de alguno de ellos. Y mediante el sistema de 
recuperar contraseña, podrás recuperar en no más de 1 minuto la contraseña de 
cualquiera de tus personajes.</td>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">/BMSG</td>
<td class="td3">Si perteneces a algún consejo (Angrod/Concilio de las sombras) 
podrás hablar entre tus compañeros del Consejo con este comando, ejemplo: /BMSG 
Hola!</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">/TORNEO</td>
<td class="td3">Cuando un Game Master realice un evento o un torneo, las 
inscripciones al mismo se hacen utilizando este comando. Es decir, que con 
/TORNEO quedamos inscriptos en el evento que se esté realizando, si es que las 
inscripciones están abiertas.</td>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">/PARTICIPAR</td>
<td class="td3">En cada ciudad, hay un NPC (una criatura estilo vendedor) que te 
informa si hay un evento en curso. Con este comando te puedes inscribir en el 
evento/torneo que haya disponible en ese momento. En la consola del juego 
aparecen diariamente varios eventos o torneos automáticos para entretenerse un 
rato.</td>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">/HOGAR</td>
<td class="td3">En cada ciudad, hay un NPC (llamado Gobernador) el cual, si lo 
deseas, te vuelve ciudadano de la ciudad que te encuentres. Ejemplo, si estas en 
Harrogath y le haces clic al gobernador e ingresas: /HOGAR harrogath<br>
te vuelves ciudadano de dicha ciudad. Si te mueres en zona insegura, y usas 
simplemente /HOGAR<br>
volverás en unos minutos a tu ciudad natal, o a la ciudad que hayas decidido 
hacerte habitante de la misma.</td>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">/FMSG</td>
<td class="td3">/FMSG MENSAJE: <br>
Sirve para comunicarte con los miembros de vuestra facción que estén conectados.</td>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">/ONLINECAOS</td>
<td class="td3">Sirve para saber que miembros de la legión oscura están conectados y solo pueden usarlos aquellos miembros pertenecientes a la facción </td>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">/ONLINEREAL</td>
<td class="td3">Sirve para saber que miembros de la Armada Real están conectados y solo pueden usarlos aquellos miembros pertenecientes a la facción</td>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">/NUEVOLIDER nick</td>
<td class="td3">Sirve para elegir a un nuevo líder del clan al que seamos líder. Los requisitos son: Tener un clan, y que el nick elegido, sea un miembro del clan actualmente. Una vez realizado, el clan, pasará a ser liderado por la persona que desiemos y podrá salir del clan con /SALIRCLAN en cualquier momento, sea fundador, o ex lider.</td>


<tr class='colorcolumna2'><td class="tdresaltar" height="45">/ACTIVAROFERTAS</td>
<td class="td3">Sirve para poder recibir ofertas de personajes u ofrecer nuestro personaje con /OFRECERPJ nick. Si esta opción la tenemos desactivada, no podremos ni recibir ofertas de otros personajes ni enviar ofertas a otros personajes.<br>
Con éste comando se puede ACTIVAR y DESACTIVAR las ofertas. Sólo hay que colocar el mismo comando: /ACTIVAROFERTAS, y si están desactivadas, las activa, y viceversa.</td>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">/OFRECERPJ nick</td>
<td class="td3">Sirve para poder ofrecer nuestro personaje, e intercambiarlo con la persona que coloquemos en "nick". Para que esta operación, pueda continuar, los personajes deben existir ambos, y además, deben tener activadas las ofertas con el comando: /ACTIVAROFERTAS</td>

<tr class='colorcolumna2'><td class="tdresaltar" height="45">/CANCELAROFERTA nick</td>
<td class="td3">Sirve para poder cancelar una oferta de nuestro personaje. Para que esta operación, pueda continuar, el personaje "nick" debe existir.
Cuando estemos en una oferta, no podremos utilizar nuestro personaje hasta aceptar o cancelar la oferta, por ende es importante tener en cuenta este comando.</td>

<tr class='colorcolumna1'><td class="tdresaltar" height="45">/ACEPTAROFERTA clave</td>
<td class="td3">Si hemos recibido una oferta para intercambiar nuestro personaje, nos daremos cuenta porque estaremos en el mapa 3, en el sector de "purgatorio" y además, porque habremos recibido un mensaje y un e-mail del juego, con TODOS los datos del personaje que quiere intercambiar nuestro personaje. Ejemplo: Si "Pedro" le ofrece su personaje "Pedro" a "Juan" entonces, "juan" recibirá un email con todos los datos de "Pedro". Como por ejemplo: Los atributos, todos los skills, todos los ítems de bóveda e inventario (Con duración de los amuletos incluídas), todos los hechizos y en que orden estan, la vida, el oro y el oro depositado en bóveda, etc.
En ese e-mail, podremos ver la CLAVE que servirá para poder concretar la primera parte del proceso. Una vez que aceptemos la oferta, debemos esperar a que el otro usuario (en este caso "Pedro") acepte la oferta, ya que cuando nosotros aceptamos con "Juan" se le envió toda nuestra información de "juan" a "pedro", y ahora "pedro", está evaluando si desea concretar el intercambio o no.</td>


</table>
<br>
<br>
<center><a href="ciudades.php#ver"> Anterior</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href="entrenamiento.php#ver"> Siguiente</a></center>
</td></tr></table><br><br><table class="titulo_seccion"><tr><td>---</td></tr></table><table class="volver_indice"><tr valign="middle"><td align="left">&nbsp;<a href="index.php">&lt;&lt;Ir al Índice del Manual</a></td><td align="right">&nbsp;</td></tr></table>
</td>
</tr>
</table>
</body>


</php>
