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
<table class="titulo_seccion"><tr><td><a name="ver"></a>- Pantalla de Conectar -</td></tr></table>

<br>
<tr><td><center><span class="size">A continuaci�n se detallar�n cada uno de los pasos a seguir para poder conectarte a tu cuenta. Es de suma importancia que leas cada uno de ellos. Lo primero que necesitas es descargar el juego COMPLETO desde el siguiente enlace OFICIAL: <br>(Recuerda, nunca descargar el juego de una p�gina alternativa que no sea bender-online.com.ar � benderao.com)<br> <a href="http://bender-online.com.ar/downloads/Bender-Online.exe">Descargar el juego completo desde aqu� (clic aqu�)</a>
Al inicio, aparecer� la pantalla principal (Imagen de abajo) y para comenzar a jugar deber�s hacer click en <span class="resaltarcmd">"CREAR CUENTA"</span></span>.
<br>
<br><table width="98%" align="center"><tr><td><center><span class="size">Imagen del juego:</span>
<br><br>
<img src="imagenes/juego/crearpersonaje.png" width="644" height="485"></center>
<br><br>

<table align="center" width="90%">

<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">1</font><br><font color="#FFFFFF">Crear Cuenta</font></td>
<td class="td3">Bot�n "CREAR CUENTA": Haz clic aqu� para crear tu cuenta, para luego poder seleccionar tus personajes y entrar al juego.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="35"><font size="4">2</font><br><font color="#FFFFFF">Confirmar Cuenta / Validar cuenta</font></td>
<td class="td3">Bot�n "CONFIRMAR CUENTA": Valida y confirma tu cuenta, para estar seguros de que no perder�s acceso a tu cuenta en caso de olvidar la contrase�a de tu cuenta. Si validas tu cuenta, podr�s recuperar la contrase�a en cualquier momento.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">3</font><br>
	<font color="#FFFFFF">Nombre de Cuenta</font></td>
<td class="td3">Bot�n "Nombre de Cuenta"<br>
Una vez que hayas creado tu cuenta, Y LA HAYAS CONFIRMADO/VALIDADO O NO (se puede jugar igual sin validar la cuenta) pondr�s el nombre aqu� y m�s abajo la contrase�a para poder ingresar al juego y crear tu primer personaje, y a su vez, comenzar esta gran aventura.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="35"><font size="4">4</font><br>
	<font color="#FFFFFF">Contrase�a </font></td>
<td class="td3">Bot�n "CONTRASE�A" Si ya tienes una cuenta, debes ingresar la contrase�a aqu�.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="35"><font size="4">5</font><br>
	<font color="#FFFFFF">Noticias del Servidor</font></td>
<td class="td3">Dato: Aqu� encontrar�s m�s herramientas para acceder a las �ltimas noticias de BenderAO, redireccion�ndote hac�a ellas en la p�gina Web para estar al tanto de las �ltimas novedades.</br>
Para m�s informaci�n, no olvides chequear las imagenes de abajo.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">6</font><br>
	<font color="#FFFFFF">CONECTAR</font></td>
<td class="td3">Bot�n "CONECTAR": Este bot�n, te conectar� a tu cuenta, cuando hayas ingresado los datos de Nombre de Cuenta y Contrase�a, reflejados en el paso 3 y 4. <br><br><U><I>Recomendaci�n</I></U>: si no est�s en una pc segura y ten�s miedo de que tenga alg�n malware como por ej. un keylogger que graba toda las teclas que se tipean, pod�s optar por usar el <span class="resaltarcmd">TECLADO VIRTUAL</span> presionando en el bot�n <span class="resaltarcmd">TECLAS 
* (6)</span></td>
</tr>


<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">7</font><br>
	<font color="#FFFFFF">Mostrar Servidores</font></td>
<td class="td3">Bot�n "MOSTRAR SERVIDORES": Este bot�n te permitir� abrir y ver el panel de servidores disponibles. Actualmente existen 2 servidores, el primario y oficial (con experiencia MEDIA/F�CIL) y el BETA (battle server, demasiado f�cil). Para ingresar al BETA por ejemplo, simplemente debemos hacer clic en �ste bot�n y seleccionar con el clic izquierdo, el servidor BETA. Tambi�n podemos encontrar conexi�n alternativa para el servidor oficial, y �sto sirve en caso de que no nos conecte al juego con la conexi�n com�n y corriente (incompatibilidad de ISP).</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">8</font><br>
	<font color="#FFFFFF">REGLAMENTO</font></td>
<td class="td3">Bot�n "REGLAMENTO": Este bot�n despliega el reglamento oficial del juego, 
para que puedas estar al tanto de las reglas que aceptas al crear tu personaje y debes respetar al pie de la letra al ingresar al juego.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">9</font><br>
	<font color="#FFFFFF">Manual del Juego</font></td>
<td class="td3">Bot�n "MANUAL DEL JUEGO": Este bot�n te llevar� f�cilmente hacia �ste manual, para que despejes tus dudas sobre el juego, en cualquier momento. Adem�s, dentro del juego, podr�s presionar la tecla ENTER y luego tipear el comando /GM y luego ENTER nuevamente, y as� se desplegar� un panel donde podr�s hacer tu consulta personalmente a un administrador o consejero del juego.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">10</font><br>
	<font color="#FFFFFF">Opciones</font></td>
<td class="td3">Bot�n de Opciones "Pre-Bender": Este bot�n despliega la pantalla de configuraci�n del juego, donde podr�s modificar todas las caracter�sticas que lo que necesites para sentirte m�s c�modo antes de entrar a jugar.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">11</font><br>
	<font color="#FFFFFF">Foro Oficial</font></td>
<td class="td3">Bot�n "FORO OFICIAL": Este bot�n abrir� la p�gina web del FORO oficial del juego, donde podr�s presentarte ante la comunidad, ser bien recibido y adem�s, hacer tus consultas, realizar debates, presentar ideas y realizar descargos faccionarios.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">12</font><br>
	<font color="#FFFFFF">Twitter</font></td>
<td class="td3">Bot�n "TWITTER": Este bot�n abrir� la p�gina oficial de 
Twitter de Bender AO, para que puedas seguirnos tood el tiempo y enterarte de las �ltimas noticias en tiempo real, como Twitter lo permite.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">13</font><br>
	<font color="#FFFFFF">Facebook</font></td>
	<td class="td3">Bot�n "FACEBOOK": Este bot�n abrir� una p�gina web con la p�gina oficial de 
	facebook de Bender AO, en la cual respondemos cualquier tipo de inconveniente, solucionamos problemas frecuentes, y adem�s de eso, te enterar�s de las �ltimas noticias, con mejor anticipaci�n que ning�n otro medio masivo de comunicaci�n.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">14</font><br>
	<font color="#FFFFFF">Canal Oficial de YouTube</font></td>
<td class="td3">CANAL OFICIAL DE YOUTUBE: Este bot�n abrir� la p�gina web oficial del Canal oficial de Youtube del juego, donde podr�s encontrar todos los �ltimos videos filmado por los usuarios y mucho m�s. Divi�rtete buscando a tus amigos y sus batallas.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">15</font><br>
	<font color="#FFFFFF">Google +</font></td>
	<td class="td3">Bot�n "GOOGLE+": Este bot�n abrir� una p�gina web con la p�gina oficial de Google + de Bender AO y nuestro canal.<br>
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

<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">1</font><br><font color="#FFFFFF">Texto de informaci�n</font></td>

<td class="td3">Bot�n "Texto de informaci�n": Este texto, te ir� guiando a medida que pases el mouse por arriba de cada recuadro negro, para que puedas saber con qu� completar cada uno de ellos. Tambi�n te informar� si haz completado alguno con errores. <br><br><U><I>Recomendaci�n</I></U>:Si ya tienes una cuenta o si ya la haz creado, debes hacer clic en "volver a conectar" y colocar el nombre de tu cuenta y la contrase�a para conectarte a tu cuenta simplemente.<span class="resaltarcmd">TECLADO VIRTUAL</span> presionando en el bot�n <span class="resaltarcmd">TECLAS 
* (6)</span>.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="35"><font size="4">2</font><br><font color="#FFFFFF">Tildes rojas y Tildes Verdes.
</font></td>
<td class="td3">Bot�n "Tildes Rojas y Verdes": Estos peque�os cuadros rojos, se ir�n poniendo en color VERDE cuando hayas colocado bien alg�n dato, y cumpla todos los requisitos m�nimos. Por ejemplo: El nombre de la cuenta, debe tener m�s de 5 caracteres, pueden ser Letras y n�meros (a elecci�n). La contrase�a debe tener al menos 6 caracteres, y debe tener siempre letras y n�meros (sin excepci�n) y adem�s puede distinguir may�sculas de min�sculas.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">3</font><br>
	<font color="#FFFFFF">Nombre de Cuenta</font></td>
<td class="td3">Bot�n "Nombre de Cuenta"<br>
Aqu� ir� el nombre de tu cuenta, (se puede jugar igual sin validar la cuenta) pondr�s el nombre aqu�, que debe tener al menos 5 caracteres. Ejemplo: SANTIAGO, o FERNANDO123.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="35"><font size="4">4</font><br>
	<font color="#FFFFFF">Contrase�a </font></td>
<td class="td3">Bot�n "CONTRASE�A Y REPITA LA CONTRASE�A" Aqu� debes ingresar la contrase�a de tu cuenta, es muy importante que no la olvides. La contrase�a debete tener letras y n�meros. Al menos 1 de cada uno como m�nimo, y debe tener al menos 6 caracteres. Ejemplo: pepito123. Por seguridad, debe repetir la contrase�a m�s abajo, para estar seguros que haz colocado bien tu contrase�a.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="35"><font size="4">5</font><br>
	<font color="#FFFFFF">Direcci�n de e-mail (o correo electr�nico)</font></td>
<td class="td3">Bot�n "OCULTAR NOTICIAS": Aqu� colocaras tu direcci�n de correo electr�nico o tambi�n conocido como "e-mail". M�s abajo repetir�s el paso, para corroborar que estas colocando bien tu direcci�n de correo, ya que es MUY IMPORTANTE, pues al finalizar, te llegar� un email por parte de BenderAO, con una clave la cual deber�s colocar en la solapa "Confirmar Cuenta"</br></td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">6</font><br>
	<font color="#FFFFFF">Pregunta y Respuesta SECRETA</font></td>
<td class="td3">Bot�n "PREGUNTA Y RESPUESTA SECRETA": Este paso sirve para dejar asentada una pregunta secreta que responder�s y debes recordar en caso de olvidar el nombre de tu cuenta o la contrase�a, o por ejemplo, en caso de robo de la cuenta. Esto sirve para apelar sobre la p�rdida de tu cuenta, y que podamos reintegrarte el acceso a la misma. </td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">7</font><br>
	<font color="#FFFFFF">Nombre y Apellido REALES</font></td>
<td class="td3">Bot�n "Nombre y Apellido REALES": Coloca tu nombre y apellido reales, este paso sirve para dejar asentado tus datos reales, en caso de necesitar reclamar algo u olvidar el nombre de tu cuenta o la contrase�a, o por ejemplo, en caso de robo de la cuenta. Esto sirve para apelar sobre la p�rdida de tu cuenta, y que podamos reintegrarte el acceso a la misma.</td>
</tr>


<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">8</font><br>
	<font color="#FFFFFF">CODIGO CAPTCHA</font></td>
<td class="td3">Bot�n "CODIGO CAPTCHA": Este c�digo sirve para verificar que no seas un robot, simplemente coloca el los n�meros y la letra final que veas, en el cuadro blanco de la derecha, ejemplo: 1235G</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">9</font><br>
	<font color="#FFFFFF">VOLVER A CONECTAR</font></td>
<td class="td3">Bot�n "VOLVER A CONECTAR": Este bot�n sirve para volver al panel de CONECTAR CUENTA y pode conectarte a tu cuenta luego de que la hayas creado.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">10</font><br>
	<font color="#FFFFFF">�CREAR MI CUENTA!</font></td>
<td class="td3">Bot�n "�CREAR MI CUENTA!": Este bot�n sirve para crear tu cuenta una vez que hayas completado CORRECTAMENTE todos los cuadros, paso por paso. En caso de haber alg�n error, intenta nuevamente crear tu cuenta. O bien, presiona "Mostrar Servidores" y elije el servidor en donde quieras crear tu cuenta.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">11</font><br>
	<font color="#FFFFFF">Mostrar Servidores</font></td>
<td class="td3">Bot�n "Mostrar Servidores": Este bot�n muestra una lista con todos los servidores activos (o no) de Bender Games. Por ejemplo, si deseas crear una cuenta en el servidor BETA ,debes hacer clic en este bot�n y luego hacer clic sobre el servidor BETA y por �ltimo crear tu cuenta. As� de simple.</td>
</tr>

</table>
<br>
<br>


<table class="titulo_seccion"><tr><td><a name="ver"></a>- Una vez que creado tu cuenta, te llegar� un correo as� -</td></tr></table>
<br><table width="98%" align="center"><tr><td><center><span class="size">Imagen de gmail:</span>
<br><br>
<img src="imagenes/juego/screenshot_validando_email.jpg" width="776" height="400"></center>
<br><br>
<table align="center" width="90%">
<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">VALIDAR CUENTA</font><br>
	<font color="#FFFFFF">Validar cuenta</font></td>
<td class="td3">Cuando hayas apretado "CREAR CUENTA" auntom�ticamente te llagar� un e-mail de staff.bender2@gmail.com o staff.bender3@gmail.com, o etc, d�ndote la bienvenida al juego, y adem�s podr�s encontrar un c�digo o una clave, para poder confirmar cuenta, y poder verificar que tienes acceso a la misma. Si abres tu correo, ver�s �ste mensaje (aunque la clave podr�a ser diferente)</td>
</tr>
</table>

<br>
<br>

<table class="titulo_seccion"><tr><td><a name="ver"></a>- Una vez que hayas copiado el c�digo o la clave de tu correo electr�nico, lo colocas aqu� -</td></tr></table>
<br><table width="98%" align="center"><tr><td><center><span class="size">Imagen del juego:</span>
<br><br>
<img src="imagenes/juego/screenshot_validando_cuenta.jpg" width="776" height="581"></center>

<br><br><br><br>
<table align="center" width="90%">
<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">1</font><br>
	<font color="#FFFFFF">Validar Cuenta</font></td>
<td class="td3">Bot�n "Validar Cuenta": Haz clic en el bot�n, para poder validar tu cuenta. S�lo debes completar los campos requeridos, primero con la direcci�n de correo electr�nico a la cual registraste tu cuenta al crearla y luego con la clave o el c�digo enviado a tu correo electr�nico y por �ltimo, coloca "Validar Cuenta" y �LISTO! </td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">2</font><br>
	<font color="#FFFFFF">Direcci�n de correo electr�nico</font></td>
<td class="td3">"Direcci�n de correo electr�nico": En este casillero, va la Direcci�n de correo electr�nico al que registraste tu cuenta al momento de crearla.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">3</font><br>
	<font color="#FFFFFF">Clave recibida por correo electr�nico</font></td>
<td class="td3">"Clave recibida por correo electr�nico": Es la clave que te llegar� a la bandeja de entrada de tu correo, como mostramos en las im�genes de m�s arriba, la cual debes colocar en este casillero para poder dar por finalizado el proceso de validaci�n de tu cuenta. �Es muy simple!</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">4</font><br>
	<font color="#FFFFFF">Bot�n "Validar Cuenta""</font></td>
<td class="td3">"Bot�n "Validar Cuenta": Una vez completados los casilleros 2 y 3, simplemente con hacer clic en �ste bot�n, podr�s confirmar tu cuenta, y quedar� validada. Con tu cuenta validada, podr�s: Recuperar la contrase� de tu cuenta (en caso de que la olvides), borrar personajes, e intercambiar personajes con otras personas.</td>
</tr>


</table>
<br>
<br>

<table class="titulo_seccion"><tr><td><a name="ver"></a>- Una vez que hayas entrado a tu cuenta, ver�s as� -</td></tr></table>
<br><table width="98%" align="center"><tr><td><center><span class="size">Imagen del juego:</span>
<br><br>
<img src="imagenes/juego/Conectar.png" width="776" height="581"></center>

<br><br><br><br>
<table align="center" width="90%">
<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">1</font><br>
	<font color="#FFFFFF">Casillero Vac�o</font></td>
<td class="td3">Bot�n "Casillero Vac�o": Haz clic en cualquier casillero vac�o (hay 18 en total), y si realmente est� vac�o te preguntar� si deseas crear un personaje all�. Colocas que si.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">2</font><br>
	<font color="#FFFFFF">Conectar</font></td>
<td class="td3">Bot�n "Conectar": Este bot�n sirve para conectarte a un personaje determinado (si es que ya lo haz creado), y si el casillero est� vac�o, te preguntar� si deseas crear un personaje..</td>
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
<td class="td3">En este casillero es donde ten�s que poner el nombre que llevar� tu personaje. Una vez creado el mismo, no podr�s modificarlo, por eso recomendamos consultar el inciso 2.1 del <a href="http://www.bender-online.com.ar/web/?op=Reglamento" target="_blank">Reglamento del Juego</a> que habla sobre los nombres inv�lidos.
</td>
</tr>
<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">2</font><br><font color="#FFFFFF">Raza</font></td>

<td class="td3">Desde ac� se le asigna la raza al personaje. Es importante tener 
en cuenta las modificaciones que producen en cada atributo seg�n la clase.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="35"><font size="4">3</font><br><font color="#FFFFFF">G�nero</font></td>
<td class="td3">Ac� se elige el g�nero del personaje. Esto har� que var�en algunas cosas, como las vestimentas que podr� usar el personaje.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">4</font><br><font color="#FFFFFF">Clase</font></td>
<td class="td3">En este casillero elegir�s la clase o el oficio que quieres que tenga.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="35"><font size="4">5</font><br><font color="#FFFFFF">Atributos</font></td>
<td class="td3">Estos son los atributos y de ellos depender� la optimizaci�n del personaje dentro del juego. Se pueden modificar "tirando dados" (<I>ver punto 9</I>).</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">6</font><br><font color="#FFFFFF">Habilidades</font></td>
<td class="td3">Son las habilidades que ten�s que entrenar. En esta primer pantalla podr�s asignarle 10 puntos a la habilidad que quieras. Se recomienda consultar la <a href="skills.php?seccion=habilidades#ver" target="_blank">Secci�n: Habilidades</a> para su correcto uso ya que algunos puntos de habilidad se ganar�n naturalmente (entrenando), pero otros s�lo asignando determinada cantidad de skills.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="35"><font size="4">7</font><br><font color="#FFFFFF">Ciudad Natal</font></td>
<td class="td3">Desde ac� se elige la ciudad natal del personaje. Esto no influye en la jugabilidad.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="35"><font size="4">8</font><br><font color="#FFFFFF">Puntos de Habilidad Libres</font></td>
<td class="td3">Indica la cantidad de puntos de habilidad libres para asignar por primera y �nica vez.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="35"><font size="4">9</font><br><font color="#FFFFFF">Dados</font></td>
<td class="td3">Presionando sobre el dado cambiar�s al azar los atributos del personaje.<br>
Podes clickear sobre el mismo la cantidad de veces que quieras.</td>
</tr>

<br><br>
</table>

</table><br><br>
<br><br>
</p>


</td></tr></table><br><br><table class="titulo_seccion"><tr><td>---</td></tr></table><table class="volver_indice"><tr valign="middle"><td align="left">&nbsp;<a href="index.php">&lt;&lt;Ir al �ndice del Manual</a></td><td align="right">&nbsp;</td></tr></table>
</php>
