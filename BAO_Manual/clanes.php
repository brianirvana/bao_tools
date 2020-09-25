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

<table class="titulo_seccion"><tr><td><a name="ver"></a>- Clanes -</td></tr></table><br><table width="98%" align="center"><tr><td>

Un clan es un grupo de gente unida, ya sea por lazos de parentesco y ascendencia, vinculado por la percepci�n de ser descendientes de un ancestro com�n. La denominaci�n proviene del ga�lico clann, que significa "hijo" o "descendiente"<br><br>

En las tierras de Bender, puedes formar un clan para reclutar aliados en forma directa.<br> 

Para poder fundar un clan debes ser nivel 35 como m�nimo, y tener 5 
	<span class="resaltarcmd">GuildPoints</span> .<p> <span class="resaltarcmd">
GuildPoints</span>: Los <span class="resaltarcmd">GuildPoints</span> los pueden 
otorgar los usuarios mayores a nivel 30, con el comando <span class="resaltarcmd">
/REPUTACION nick.</span> 
Ejemplo: <span class="resaltarcmd">/REPUTACION juan.</span> Esto producir� que 
nos diga en consola si queremos otorgarle nuestro �nico punto, dado a que cada 
personaje puede votar una sola vez, sin posibilidad de cambiar el voto en ning�n 
momento.<br>
		Cada voto, cuenta como 1 (un) voto. Es decir, que necesitas 1 voto de 5 
personas distintas [S�lo se contabilizar� 1 voto por Cuenta de usuario].<br>

-Tambi�n es posible comerciar GuildPoints por comercio seguro con <span class="resaltarcmd">/COMERCIAR.</span><br><br>

Para conocer cuantos <span class="resaltarcmd">GuildPoints</span> tienes 
acumulados, ingresa el comando <span class="resaltarcmd">/MIREPUTACION.</span><br><br>
Si cumpl�s con estos requisitos s�lo debes escribir el comando <span class="resaltarcmd">
/FUNDARCLAN</span> y te aparecer�n unas ventanas para poner el nombre del clan, 
la alineaci�n, Web, c�dex y descripci�n. Cabe destacar que el nombre del clan y 
la alineaci�n no se podr� modificar despu�s de haber creado clan.<br>
Una vez creado el clan podr�s aceptar y echar miembros en la nueva ventana que 
aparecer� cuando clickees en el <span class="resaltarcmd">BOT�N CLANES</span> de la siguiente manera:<br><br>

<table align="center" width="75%" class="tablaindice2"><tr><td>
<img src="imagenes/juego/listaclanes.jpg" width="250" height="270">
</table>
	</p>

<table align="center" width="75%" class="tablaindice2"><tr><td>
<u><span class="resaltar">Atenci�n</span>:</u> al fundar un clan, el personaje 
se convertir� en fundador y l�der del mismo, adem�s una vez creado el clan ya no 
se podr� cambiar la alineaci�n.
</td></tr></table><br><br>


<table align="center" width="50%">

<tr>
<td class="tdresaltar5">TIPOS DE CLANES</td>
</tr>
<tr>
<td class="tdresaltar" style="background:#2B3C40">
<table><tr><td height="4"></td></tr></table>
Armada Real
<br>
<font color="#F0F0F0">Integrado por personajes de la Armada Real</font>
<table><tr><td height="4"></td></tr></table>
</td>
</tr>
<tr>
<td class="tdresaltar" style="background:#2B3C40">
<table><tr><td height="4"></td></tr></table>
Legal
<br>
<font color="#F0F0F0">Integrado por personajes de la Armada Real y Ciudadanos</font>
<table><tr><td height="4"></td></tr></table>
</td>
</tr>
<tr>
<td class="tdresaltar" style="background:#2B3C40">
<table><tr><td height="4"></td></tr></table>
Neutro
<br>
<font color="#F0F0F0">Integrado por personajes Ciudadanos y Criminales</font>
<table><tr><td height="4"></td></tr></table>
</td>
</tr>
<tr>
<td class="tdresaltar" style="background:#2B3C40">
<table><tr><td height="4"></td></tr></table>
Criminal
<br>
<font color="#F0F0F0">Integrado por personajes de la Legi�n Oscura y Criminales</font>
<table><tr><td height="4"></td></tr></table>
</td>
</tr>
<tr>
<td class="tdresaltar" style="background:#2B3C40">
<table><tr><td height="4"></td></tr></table>
Legi�n Oscura
<br>
<font color="#F0F0F0">Integrado por personajes de la Legi�n Oscura</font>
<table><tr><td height="4"></td></tr></table>
</td>
</tr>
</table>

<br>

<u><span class="resaltar">Puntos de Antifacci�n:</span></u><br><br>
<b><font color="#FFCC33">Clan Neutro:</font></b> puntos de antifacci�n 
deshabilitados, cualquier personaje que se haga Armada/Legi�n dentro de este 
tipo de clan ser� autom�ticamente expulsado.<br>
<b><font color="#FFCC33">Clan Armada Real:</font></b> cualquier personaje que 
deje de ser Armada o se haga Criminal ser� autom�ticamente expulsado y sumar� 1 
punto de antifacci�n al clan donde pertenec�a.<br>
<b><font color="#FFCC33">Clan Legi�n Oscura:</font></b> cualquier personaje que 
deje de ser Legi�n o se haga Ciudadano ser� autom�ticamente expulsado y sumar� 1 
punto de antifacci�n al clan donde pertenec�a.<br>
<b><font color="#FFCC33">Clan Legal:</font></b> cualquier personaje que se haga 
Criminal ser� autom�ticamente expulsado y sumar� 1 punto de antifacci�n al clan 
donde pertenec�a.<br>
<b><font color="#FFCC33">Clan Criminal:</font></b> cualquier personaje que se 
haga Ciudadano ser� autom�ticamente expulsado y sumar� 1 punto de antifacci�n al 
clan donde pertenec�a.<br><br>

<span class="resaltar">*</span>Si un clan llega al l�mite de puntos de 
antifacci�n bajar� de alineaci�n (Armada Real--&gt; Neutro &lt;--Legi�n Oscura).<br><br>
<span class="resaltar">*</span>Si, por ejemplo, el L�der de un clan &quot;Legal&quot; se 
hace Criminal todos los miembros ser�n expulsados autom�ticamente y el clan ser� 
de tipo &quot;Neutro&quot; (lo mismo pasar�a en los dem�s tipos de clanes menos en el 
&quot;Neutro&quot;).<br><br>
<span class="resaltar">*</span>Se recomienda salir del clan al enlistarse o 
retirarse de una facci�n para no darle puntos antifacci�n al clan.
<br><br><br>

<u><span class="resaltar">Diferencias entre Fundador y L�der:</span></u><br>
Al crear un clan, el personaje pasa a ser L�der y Fundador del mismo.<br>
Siendo L�der podes modificar cosas del clan. Por esto 
mismo si en la votaci�n de nuevo L�der, perdes ser &quot;el L�derazgo&quot; del clan, ya no hay 
forma de hacer nada, a menos que haya una nueva votaci�n y volvamos a ser L�der, 
sino nos convertiremos en un integrante com�n del clan que <b>puede ser 
expulsado del clan</b> y seguiremos siendo registrado como el Fundador del clan, en la informaci�n del clan <br>
aunque ya no tengamos relaci�n con el mismo.
<br><br><br>

<u><span class="resaltar">Votaci�n de nuevo L�der:</span></u><br>
El L�der puede abrir en cualquier momento una votaci�n para nuevo L�der.<br>
Al entrar al juego aparecer�a &quot;Hoy es d�a de votaci�n para un nuevo l�der&quot;, la 
votaci�n dura 24 horas, para votar usa este comando: <span class="resaltarcmd">
/VOTO NICK</span> (reemplaza nick por el nombre del personaje).
<p><u><span class="resaltar">Puntos de Clan:</span></u><br>
Existe la posibilidad de declarar clanes Enemigos, Aliados, Paz, o sino ser�n 
&quot;neutrales&quot;.<br>
- Al crear clanes con alineaci�n: &quot;Armada&quot; � &quot;Legionario&quot; 
el clan comienza con <span class="resaltarcmd">1200 Puntos De Clan.</span><br>
- Al crear un clan, se empieza con <span class="resaltarcmd">1000 Puntos De Clan.<br>
</span>- Cuando matas a un enemigo y hay alg�n aliado en el mapa ,<br>
le da 2 puntos al clan de su aliado. <span class="resaltarcmd"><br>
</span>- La cantidad de puntos que solicita para el clan es la cantidad total de 
los <br>
miembros en el clan.<span class="resaltarcmd"><br>
</span>-<span class="resaltarcmd"> </span>
- Aceptar Miembro: -1 punto.<br>
- Puntos de Antifacci�n al Clan: Resta&nbsp; 10 puntos al clan.<br>
- Morir por un clan enemigo: Resta 2 puntos al clan.<br>
- Resucitar a un miembro de un clan enemigo: Resta 35 puntos al clan. <br>
- Matar a un clan enemigo: Otorga 6 puntos al clan.<p><br>
*
En el resto de los casos, no se suman ni restan puntos.<br>
* Si no tenemos puntos de Clan, podr�n declarar alianzas o paz hacia otros 
clanes para obtener puntos, pero los dem�s clanes deber�n aceptar la propuesta 
de paz/alianza.<p>- La lista de clanes al tocar CLANES esta 
organizado por puntaje, los clanes se rankean. Es decir, el clan que est� 
primero, es el que m�s puntos de Clan tiene. La lista se actualiza cada vez que los puntos se modifican, por ende, esta actualizada en tiempo real.<br>
<br>

<u><span class="resaltar">�C�mo entrar a un clan?</span></u><br>
Para unirse a un clan, lo que debes hacer, una vez en el juego, es presionar el <span class="resaltarcmd">
BOT�N CLANES</span>. All� podr�s ver el ranking de clanes y ver la totalidad de 
clanes fundados y los detalles de cada uno de ellos si lo deseas. Si crees que podes entrar 
en alguno, debes seleccionar un clan, pulsar en &quot;Detalles&quot; y apretar el <span class="resaltarcmd">BOT�N SOLICITAR INGRESO</span>, 
entonces deber�s escribirle al l�der del clan, explic�ndole las razones por las 
que quieres solicitar tu ingreso al mismo.<br>
-S�lo podes mandar una solicitud a la vez, si por ejemplo haces una nueva 
solicitud se borra la anterior.<br>
-Los personajes &lt;NEWBIES&gt; no pueden solicitar entrar a un clan.
<br><br><br>

<u><span class="resaltar">Otras cosas a tener en cuenta:</span></u><br>
-Si formas parte de un clan podes usar <span class="resaltarcmd">/CMSG + texto o TECLA 
SUPRIMIR + texto </span>para mandar un mensaje al clan que aparecer� en la consola o 
arriba-izquierda y arriba del personaje tu mensaje. <br>
- Con <span class="resaltarcmd">
/ONLINECLAN</span> 
podes ver los usuarios del clan que hay conectados.<br>
- Cada vez que entres al juego con un personaje que pertenece a un clan, en las 
ciudades o zona segura 
se te abrir� una ventana con las novedades, noticias, clanes aliados y enemigos.<br>
- No es posible pertenecer a mas de un clan con el mismo personaje.<br>
- Para salir de un clan deber�s usar el comando <span class="resaltarcmd">/SALIRCLAN</span>.

<center><a href="oro.php#ver">Anterior</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href="party.php#ver"> Siguiente</a></center>
<br><br><table class="titulo_seccion"><tr><td>---</td></tr></table><table class="volver_indice"><tr valign="middle"><td align="left">&nbsp;<a href="index.php">&lt;&lt;Ir al �ndice del Manual</a></td><td align="right">&nbsp;</td></tr></table>
</td>
</tr>
</table>
</body>
