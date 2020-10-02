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
<table class="titulo_seccion"><tr><td><a name="ver"></a>- Pantalla de Conectar -</td></tr></table>

<br>
<tr><td><center><span class="size">A continuación se detallarán cada uno de los pasos a seguir para poder conectarte a tu cuenta. Es de suma importancia que leas cada uno de ellos. Lo primero que necesitas es descargar el juego COMPLETO desde el siguiente enlace OFICIAL: <br>(Recuerda, nunca descargar el juego de una página alternativa que no sea bender-online.com.ar ó benderao.com)<br> <a href="http://bender-online.com.ar/downloads/Bender-Online.exe">Descargar el juego completo desde aquí (clic aquí)</a>
Al inicio, aparecerá la pantalla principal (Imagen de abajo) y para comenzar a jugar deberás hacer click en <span class="resaltarcmd">"CREAR CUENTA"</span></span>.
<br>
<br><table width="98%" align="center"><tr><td><center><span class="size">Imagen del juego:</span>
<br><br>
<img src="imagenes/juego/crearpersonaje.png" width="644" height="485"></center>
<br><br>

<table align="center" width="90%">

<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">1</font><br><font color="#FFFFFF">Crear Cuenta</font></td>
<td class="td3">Botón "CREAR CUENTA": Haz clic aquí para crear tu cuenta, para luego poder seleccionar tus personajes y entrar al juego.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="35"><font size="4">2</font><br><font color="#FFFFFF">Confirmar Cuenta / Validar cuenta</font></td>
<td class="td3">Botón "CONFIRMAR CUENTA": Valida y confirma tu cuenta, para estar seguros de que no perderás acceso a tu cuenta en caso de olvidar la contraseña de tu cuenta. Si validas tu cuenta, podrás recuperar la contraseña en cualquier momento.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">3</font><br>
	<font color="#FFFFFF">Nombre de Cuenta</font></td>
<td class="td3">Botón "Nombre de Cuenta"<br>
Una vez que hayas creado tu cuenta, Y LA HAYAS CONFIRMADO/VALIDADO O NO (se puede jugar igual sin validar la cuenta) pondrás el nombre aquí y más abajo la contraseña para poder ingresar al juego y crear tu primer personaje, y a su vez, comenzar esta gran aventura.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="35"><font size="4">4</font><br>
	<font color="#FFFFFF">Contraseña </font></td>
<td class="td3">Botón "CONTRASEÑA" Si ya tienes una cuenta, debes ingresar la contraseña aquí.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="35"><font size="4">5</font><br>
	<font color="#FFFFFF">Noticias del Servidor</font></td>
<td class="td3">Dato: Aquí encontrarás más herramientas para acceder a las últimas noticias de BenderAO, redireccionándote hacía ellas en la página Web para estar al tanto de las últimas novedades.</br>
Para más información, no olvides chequear las imagenes de abajo.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">6</font><br>
	<font color="#FFFFFF">CONECTAR</font></td>
<td class="td3">Botón "CONECTAR": Este botón, te conectará a tu cuenta, cuando hayas ingresado los datos de Nombre de Cuenta y Contraseña, reflejados en el paso 3 y 4. <br><br><U><I>Recomendación</I></U>: si no estás en una pc segura y tenés miedo de que tenga algún malware como por ej. un keylogger que graba toda las teclas que se tipean, podés optar por usar el <span class="resaltarcmd">TECLADO VIRTUAL</span> presionando en el botón <span class="resaltarcmd">TECLAS 
* (6)</span></td>
</tr>


<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">7</font><br>
	<font color="#FFFFFF">Mostrar Servidores</font></td>
<td class="td3">Botón "MOSTRAR SERVIDORES": Este botón te permitirá abrir y ver el panel de servidores disponibles. Actualmente existen 2 servidores, el primario y oficial (con experiencia MEDIA/FÁCIL) y el BETA (battle server, demasiado fácil). Para ingresar al BETA por ejemplo, simplemente debemos hacer clic en éste botón y seleccionar con el clic izquierdo, el servidor BETA. También podemos encontrar conexión alternativa para el servidor oficial, y ésto sirve en caso de que no nos conecte al juego con la conexión común y corriente (incompatibilidad de ISP).</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">8</font><br>
	<font color="#FFFFFF">REGLAMENTO</font></td>
<td class="td3">Botón "REGLAMENTO": Este botón despliega el reglamento oficial del juego, 
para que puedas estar al tanto de las reglas que aceptas al crear tu personaje y debes respetar al pie de la letra al ingresar al juego.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">9</font><br>
	<font color="#FFFFFF">Manual del Juego</font></td>
<td class="td3">Botón "MANUAL DEL JUEGO": Este botón te llevará fácilmente hacia éste manual, para que despejes tus dudas sobre el juego, en cualquier momento. Además, dentro del juego, podrás presionar la tecla ENTER y luego tipear el comando /GM y luego ENTER nuevamente, y así se desplegará un panel donde podrás hacer tu consulta personalmente a un administrador o consejero del juego.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">10</font><br>
	<font color="#FFFFFF">Opciones</font></td>
<td class="td3">Botón de Opciones "Pre-Bender": Este botón despliega la pantalla de configuración del juego, donde podrás modificar todas las características que lo que necesites para sentirte más cómodo antes de entrar a jugar.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">11</font><br>
	<font color="#FFFFFF">Foro Oficial</font></td>
<td class="td3">Botón "FORO OFICIAL": Este botón abrirá la página web del FORO oficial del juego, donde podrás presentarte ante la comunidad, ser bien recibido y además, hacer tus consultas, realizar debates, presentar ideas y realizar descargos faccionarios.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">12</font><br>
	<font color="#FFFFFF">Twitter</font></td>
<td class="td3">Botón "TWITTER": Este botón abrirá la página oficial de 
Twitter de Bender AO, para que puedas seguirnos tood el tiempo y enterarte de las últimas noticias en tiempo real, como Twitter lo permite.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">13</font><br>
	<font color="#FFFFFF">Facebook</font></td>
	<td class="td3">Botón "FACEBOOK": Este botón abrirá una página web con la página oficial de 
	facebook de Bender AO, en la cual respondemos cualquier tipo de inconveniente, solucionamos problemas frecuentes, y además de eso, te enterarás de las últimas noticias, con mejor anticipación que ningún otro medio masivo de comunicación.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">14</font><br>
	<font color="#FFFFFF">Canal Oficial de YouTube</font></td>
<td class="td3">CANAL OFICIAL DE YOUTUBE: Este botón abrirá la página web oficial del Canal oficial de Youtube del juego, donde podrás encontrar todos los últimos videos filmado por los usuarios y mucho más. Diviértete buscando a tus amigos y sus batallas.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">15</font><br>
	<font color="#FFFFFF">Google +</font></td>
	<td class="td3">Botón "GOOGLE+": Este botón abrirá una página web con la página oficial de Google + de Bender AO y nuestro canal.<br>
</tr>

</table>







<br>
<br>
<table class="titulo_seccion"><tr><td><a name="ver"></a>- Crear Cuenta -</td></tr></table>
<br><table width="98%" align="center"><tr><td><center><span class="size">Imagen del juego:</span>
<br>
<br>

<img src="imagenes/juego/CrearCuenta.png" width="644" height="485"></center>
<br><br>

<table align="center" width="90%">

<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">1</font><br><font color="#FFFFFF">Texto de información</font></td>

<td class="td3">Botón "Texto de información": Este texto, te irá guiando a medida que pases el mouse por arriba de cada recuadro negro, para que puedas saber con qué completar cada uno de ellos. También te informará si haz completado alguno con errores. <br><br><U><I>Recomendación</I></U>:Si ya tienes una cuenta o si ya la haz creado, debes hacer clic en "volver a conectar" y colocar el nombre de tu cuenta y la contraseña para conectarte a tu cuenta simplemente.<span class="resaltarcmd">TECLADO VIRTUAL</span> presionando en el botón <span class="resaltarcmd">TECLAS 
* (6)</span>.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="35"><font size="4">2</font><br><font color="#FFFFFF">Tildes rojas y Tildes Verdes.
</font></td>
<td class="td3">Botón "Tildes Rojas y Verdes": Estos pequeños cuadros rojos, se irán poniendo en color VERDE cuando hayas colocado bien algún dato, y cumpla todos los requisitos mínimos. Por ejemplo: El nombre de la cuenta, debe tener más de 5 caracteres, pueden ser Letras y números (a elección). La contraseña debe tener al menos 6 caracteres, y debe tener siempre letras y números (sin excepción) y además puede distinguir mayúsculas de minúsculas.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">3</font><br>
	<font color="#FFFFFF">Nombre de Cuenta</font></td>
<td class="td3">Botón "Nombre de Cuenta"<br>
Aquí irá el nombre de tu cuenta, (se puede jugar igual sin validar la cuenta) pondrás el nombre aquí, que debe tener al menos 5 caracteres. Ejemplo: SANTIAGO, o FERNANDO123.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="35"><font size="4">4</font><br>
	<font color="#FFFFFF">Contraseña </font></td>
<td class="td3">Botón "CONTRASEÑA Y REPITA LA CONTRASEÑA" Aquí debes ingresar la contraseña de tu cuenta, es muy importante que no la olvides. La contraseña debete tener letras y números. Al menos 1 de cada uno como mínimo, y debe tener al menos 6 caracteres. Ejemplo: pepito123. Por seguridad, debe repetir la contraseña más abajo, para estar seguros que haz colocado bien tu contraseña.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="35"><font size="4">5</font><br>
	<font color="#FFFFFF">Dirección de e-mail (o correo electrónico)</font></td>
<td class="td3">Botón "OCULTAR NOTICIAS": Aquí colocaras tu dirección de correo electrónico o también conocido como "e-mail". Más abajo repetirás el paso, para corroborar que estas colocando bien tu dirección de correo, ya que es MUY IMPORTANTE, pues al finalizar, te llegará un email por parte de BenderAO, con una clave la cual deberás colocar en la solapa "Confirmar Cuenta"</br></td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">6</font><br>
	<font color="#FFFFFF">Pregunta y Respuesta SECRETA</font></td>
<td class="td3">Botón "PREGUNTA Y RESPUESTA SECRETA": Este paso sirve para dejar asentada una pregunta secreta que responderás y debes recordar en caso de olvidar el nombre de tu cuenta o la contraseña, o por ejemplo, en caso de robo de la cuenta. Esto sirve para apelar sobre la pérdida de tu cuenta, y que podamos reintegrarte el acceso a la misma. </td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">7</font><br>
	<font color="#FFFFFF">Nombre y Apellido REALES</font></td>
<td class="td3">Botón "Nombre y Apellido REALES": Coloca tu nombre y apellido reales, este paso sirve para dejar asentado tus datos reales, en caso de necesitar reclamar algo u olvidar el nombre de tu cuenta o la contraseña, o por ejemplo, en caso de robo de la cuenta. Esto sirve para apelar sobre la pérdida de tu cuenta, y que podamos reintegrarte el acceso a la misma.</td>
</tr>


<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">8</font><br>
	<font color="#FFFFFF">CODIGO CAPTCHA</font></td>
<td class="td3">Botón "CODIGO CAPTCHA": Este código sirve para verificar que no seas un robot, simplemente coloca el los números y la letra final que veas, en el cuadro blanco de la derecha, ejemplo: 1235G</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">9</font><br>
	<font color="#FFFFFF">VOLVER A CONECTAR</font></td>
<td class="td3">Botón "VOLVER A CONECTAR": Este botón sirve para volver al panel de CONECTAR CUENTA y pode conectarte a tu cuenta luego de que la hayas creado.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">10</font><br>
	<font color="#FFFFFF">¡CREAR MI CUENTA!</font></td>
<td class="td3">Botón "¡CREAR MI CUENTA!": Este botón sirve para crear tu cuenta una vez que hayas completado CORRECTAMENTE todos los cuadros, paso por paso. En caso de haber algún error, intenta nuevamente crear tu cuenta. O bien, presiona "Mostrar Servidores" y elije el servidor en donde quieras crear tu cuenta.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">11</font><br>
	<font color="#FFFFFF">Mostrar Servidores</font></td>
<td class="td3">Botón "Mostrar Servidores": Este botón muestra una lista con todos los servidores activos (o no) de Bender Games. Por ejemplo, si deseas crear una cuenta en el servidor BETA ,debes hacer clic en este botón y luego hacer clic sobre el servidor BETA y por último crear tu cuenta. Así de simple.</td>
</tr>

</table>
<br>
<br>


<table class="titulo_seccion"><tr><td><a name="ver"></a>- Una vez que creado tu cuenta, te llegará un correo así -</td></tr></table>
<br><table width="98%" align="center"><tr><td><center><span class="size">Imagen de gmail:</span>
<br><br>
<img src="imagenes/juego/screenshot_validando_email.jpg" width="776" height="400"></center>
<br><br>
<table align="center" width="90%">
<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">VALIDAR CUENTA</font><br>
	<font color="#FFFFFF">Validar cuenta</font></td>
<td class="td3">Cuando hayas apretado "CREAR CUENTA" auntomáticamente te llagará un e-mail de staff.bender2@gmail.com o staff.bender3@gmail.com, o etc, dándote la bienvenida al juego, y además podrás encontrar un código o una clave, para poder confirmar cuenta, y poder verificar que tienes acceso a la misma. Si abres tu correo, verás éste mensaje (aunque la clave podría ser diferente)</td>
</tr>
</table>

<br>
<br>

<table class="titulo_seccion"><tr><td><a name="ver"></a>- Una vez que hayas copiado el código o la clave de tu correo electrónico, lo colocas aquí -</td></tr></table>
<br><table width="98%" align="center"><tr><td><center><span class="size">Imagen del juego:</span>
<br><br>
<img src="imagenes/juego/screenshot_validando_cuenta.jpg" width="776" height="581"></center>

<br><br><br><br>
<table align="center" width="90%">
<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">1</font><br>
	<font color="#FFFFFF">Validar Cuenta</font></td>
<td class="td3">Botón "Validar Cuenta": Haz clic en el botón, para poder validar tu cuenta. Sólo debes completar los campos requeridos, primero con la dirección de correo electrónico a la cual registraste tu cuenta al crearla y luego con la clave o el código enviado a tu correo electrónico y por último, coloca "Validar Cuenta" y ¡LISTO! </td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">2</font><br>
	<font color="#FFFFFF">Dirección de correo electrónico</font></td>
<td class="td3">"Dirección de correo electrónico": En este casillero, va la Dirección de correo electrónico al que registraste tu cuenta al momento de crearla.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">3</font><br>
	<font color="#FFFFFF">Clave recibida por correo electrónico</font></td>
<td class="td3">"Clave recibida por correo electrónico": Es la clave que te llegará a la bandeja de entrada de tu correo, como mostramos en las imágenes de más arriba, la cual debes colocar en este casillero para poder dar por finalizado el proceso de validación de tu cuenta. ¡Es muy simple!</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">4</font><br>
	<font color="#FFFFFF">Botón "Validar Cuenta""</font></td>
<td class="td3">"Botón "Validar Cuenta": Una vez completados los casilleros 2 y 3, simplemente con hacer clic en éste botón, podrás confirmar tu cuenta, y quedará validada. Con tu cuenta validada, podrás: Recuperar la contraseá de tu cuenta (en caso de que la olvides), borrar personajes, e intercambiar personajes con otras personas.</td>
</tr>


</table>
<br>
<br>

<table class="titulo_seccion"><tr><td><a name="ver"></a>- Una vez que hayas entrado a tu cuenta, verás así -</td></tr></table>
<br><table width="98%" align="center"><tr><td><center><span class="size">Imagen del juego:</span>
<br><br>
<img src="imagenes/juego/Conectar.png" width="776" height="581"></center>

<br><br><br><br>
<table align="center" width="90%">
<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">1</font><br>
	<font color="#FFFFFF">Casillero Vacío</font></td>
<td class="td3">Botón "Casillero Vacío": Haz clic en cualquier casillero vacío (hay 18 en total), y si realmente está vacío te preguntará si deseas crear un personaje allí. Colocas que si.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">2</font><br>
	<font color="#FFFFFF">Conectar</font></td>
<td class="td3">Botón "Conectar": Este botón sirve para conectarte a un personaje determinado (si es que ya lo haz creado), y si el casillero está vacío, te preguntará si deseas crear un personaje..</td>
</tr>

</table>
<br>
<br>

<table class="titulo_seccion"><tr><td><a name="ver"></a>- Crear personaje -</td></tr></table><br><br>
<table width="98%" align="center"><tr><td><center><span class="size">Imagen del juego:</span>
<br><br>
<img src="imagenes/juego/screenshot_creando_pj.jpg" width="776" height="581"></center>

<br>
<br>
<br>
<br>


<table align="center" width="90%">
<tr class='colorcolumna2'><td class="tdresaltar" height="35"><font size="4">1</font><br><font color="#FFFFFF">Nombre</font></td>
<td class="td3">En este casillero es donde tenés que poner el nombre que llevará tu personaje. Una vez creado el mismo, no podrás modificarlo, por eso recomendamos consultar el inciso 2.1 del <a href="http://www.bender-online.com.ar/web/?op=Reglamento" target="_blank">Reglamento del Juego</a> que habla sobre los nombres inválidos.
</td>
</tr>
<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">2</font><br><font color="#FFFFFF">Raza</font></td>

<td class="td3">Desde acá se le asigna la raza al personaje. Es importante tener 
en cuenta las modificaciones que producen en cada atributo según la clase.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="35"><font size="4">3</font><br><font color="#FFFFFF">Género</font></td>
<td class="td3">Acá se elige el género del personaje. Esto hará que varíen algunas cosas, como las vestimentas que podrá usar el personaje.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">4</font><br><font color="#FFFFFF">Clase</font></td>
<td class="td3">En este casillero elegirás la clase o el oficio que quieres que tenga.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="35"><font size="4">5</font><br><font color="#FFFFFF">Atributos</font></td>
<td class="td3">Estos son los atributos y de ellos dependerá la optimización del personaje dentro del juego. Se pueden modificar "tirando dados" (<I>ver punto 9</I>).</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">6</font><br><font color="#FFFFFF">Habilidades</font></td>
<td class="td3">Son las habilidades que tenés que entrenar. En esta primer pantalla podrás asignarle 10 puntos a la habilidad que quieras. Se recomienda consultar la <a href="skills.php?seccion=habilidades#ver" target="_blank">Sección: Habilidades</a> para su correcto uso ya que algunos puntos de habilidad se ganarán naturalmente (entrenando), pero otros sólo asignando determinada cantidad de skills.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="35"><font size="4">7</font><br><font color="#FFFFFF">Ciudad Natal</font></td>
<td class="td3">Desde acá se elige la ciudad natal del personaje. Esto no influye en la jugabilidad.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">8</font><br><font color="#FFFFFF">Puntos de Habilidad Libres</font></td>
<td class="td3">Indica la cantidad de puntos de habilidad libres para asignar por primera y única vez.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="35"><font size="4">9</font><br><font color="#FFFFFF">Dados</font></td>
<td class="td3">Presionando sobre el dado cambiarás al azar los atributos del personaje.<br>
Podes clickear sobre el mismo la cantidad de veces que quieras.</td>
</tr>

<br><br>
</table>

</table><br><br>
<br><br>
</p>


</td></tr></table><br><br><table class="titulo_seccion"><tr><td>---</td></tr></table><table class="volver_indice"><tr valign="middle"><td align="left">&nbsp;<a href="index.php">&lt;&lt;Ir al Índice del Manual</a></td><td align="right">&nbsp;</td></tr></table>
</php>
