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

<table class="titulo_seccion"><tr><td><a name="ver"></a>- Clanes -</td></tr></table><br><table width="98%" align="center"><tr><td>

Un clan es un grupo de gente unida, ya sea por lazos de parentesco y ascendencia, vinculado por la percepción de ser descendientes de un ancestro común. La denominación proviene del gaélico clann, que significa "hijo" o "descendiente"<br><br>

En las tierras de Bender, puedes formar un clan para reclutar aliados en forma directa.<br> 

Para poder fundar un clan debes ser nivel 35 como mínimo, y tener 5 
	<span class="resaltarcmd">GuildPoints</span> .<p> <span class="resaltarcmd">
GuildPoints</span>: Los <span class="resaltarcmd">GuildPoints</span> los pueden 
otorgar los usuarios mayores a nivel 30, con el comando <span class="resaltarcmd">
/REPUTACION nick.</span> 
Ejemplo: <span class="resaltarcmd">/REPUTACION juan.</span> Esto producirá que 
nos diga en consola si queremos otorgarle nuestro único punto, dado a que cada 
personaje puede votar una sola vez, sin posibilidad de cambiar el voto en ningún 
momento.<br>
		Cada voto, cuenta como 1 (un) voto. Es decir, que necesitas 1 voto de 5 
personas distintas [Sólo se contabilizará 1 voto por Cuenta de usuario].<br>

-También es posible comerciar GuildPoints por comercio seguro con <span class="resaltarcmd">/COMERCIAR.</span><br><br>

Para conocer cuantos <span class="resaltarcmd">GuildPoints</span> tienes 
acumulados, ingresa el comando <span class="resaltarcmd">/MIREPUTACION.</span><br><br>
Si cumplís con estos requisitos sólo debes escribir el comando <span class="resaltarcmd">
/FUNDARCLAN</span> y te aparecerán unas ventanas para poner el nombre del clan, 
la alineación, Web, códex y descripción. Cabe destacar que el nombre del clan y 
la alineación no se podrá modificar después de haber creado clan.<br>
Una vez creado el clan podrás aceptar y echar miembros en la nueva ventana que 
aparecerá cuando clickees en el <span class="resaltarcmd">BOTÓN CLANES</span> de la siguiente manera:<br><br>

<table align="center" width="75%" class="tablaindice2"><tr><td>
<img src="imagenes/juego/listaclanes.jpg" width="250" height="270">
</table>
	</p>

<table align="center" width="75%" class="tablaindice2"><tr><td>
<u><span class="resaltar">Atención</span>:</u> al fundar un clan, el personaje 
se convertirá en fundador y líder del mismo, además una vez creado el clan ya no 
se podrá cambiar la alineación.
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
<font color="#F0F0F0">Integrado por personajes de la Legión Oscura y Criminales</font>
<table><tr><td height="4"></td></tr></table>
</td>
</tr>
<tr>
<td class="tdresaltar" style="background:#2B3C40">
<table><tr><td height="4"></td></tr></table>
Legión Oscura
<br>
<font color="#F0F0F0">Integrado por personajes de la Legión Oscura</font>
<table><tr><td height="4"></td></tr></table>
</td>
</tr>
</table>

<br>

<u><span class="resaltar">Puntos de Antifacción:</span></u><br><br>
<b><font color="#FFCC33">Clan Neutro:</font></b> puntos de antifacción 
deshabilitados, cualquier personaje que se haga Armada/Legión dentro de este 
tipo de clan será automáticamente expulsado.<br>
<b><font color="#FFCC33">Clan Armada Real:</font></b> cualquier personaje que 
deje de ser Armada o se haga Criminal será automáticamente expulsado y sumará 1 
punto de antifacción al clan donde pertenecía.<br>
<b><font color="#FFCC33">Clan Legión Oscura:</font></b> cualquier personaje que 
deje de ser Legión o se haga Ciudadano será automáticamente expulsado y sumará 1 
punto de antifacción al clan donde pertenecía.<br>
<b><font color="#FFCC33">Clan Legal:</font></b> cualquier personaje que se haga 
Criminal será automáticamente expulsado y sumará 1 punto de antifacción al clan 
donde pertenecía.<br>
<b><font color="#FFCC33">Clan Criminal:</font></b> cualquier personaje que se 
haga Ciudadano será automáticamente expulsado y sumará 1 punto de antifacción al 
clan donde pertenecía.<br><br>

<span class="resaltar">*</span>Si un clan llega al límite de puntos de 
antifacción bajará de alineación (Armada Real--&gt; Neutro &lt;--Legión Oscura).<br><br>
<span class="resaltar">*</span>Si, por ejemplo, el Líder de un clan &quot;Legal&quot; se 
hace Criminal todos los miembros serán expulsados automáticamente y el clan será 
de tipo &quot;Neutro&quot; (lo mismo pasaría en los demás tipos de clanes menos en el 
&quot;Neutro&quot;).<br><br>
<span class="resaltar">*</span>Se recomienda salir del clan al enlistarse o 
retirarse de una facción para no darle puntos antifacción al clan.
<br><br><br>

<u><span class="resaltar">Diferencias entre Fundador y Líder:</span></u><br>
Al crear un clan, el personaje pasa a ser Líder y Fundador del mismo.<br>
Siendo Líder podes modificar cosas del clan. Por esto 
mismo si en la votación de nuevo Líder, perdes ser &quot;el Líderazgo&quot; del clan, ya no hay 
forma de hacer nada, a menos que haya una nueva votación y volvamos a ser Líder, 
sino nos convertiremos en un integrante común del clan que <b>puede ser 
expulsado del clan</b> y seguiremos siendo registrado como el Fundador del clan, en la información del clan <br>
aunque ya no tengamos relación con el mismo.
<br><br><br>

<u><span class="resaltar">Votación de nuevo Líder:</span></u><br>
El Líder puede abrir en cualquier momento una votación para nuevo Líder.<br>
Al entrar al juego aparecería &quot;Hoy es día de votación para un nuevo líder&quot;, la 
votación dura 24 horas, para votar usa este comando: <span class="resaltarcmd">
/VOTO NICK</span> (reemplaza nick por el nombre del personaje).
<p><u><span class="resaltar">Puntos de Clan:</span></u><br>
Existe la posibilidad de declarar clanes Enemigos, Aliados, Paz, o sino serán 
&quot;neutrales&quot;.<br>
- Al crear clanes con alineación: &quot;Armada&quot; ó &quot;Legionario&quot; 
el clan comienza con <span class="resaltarcmd">1200 Puntos De Clan.</span><br>
- Al crear un clan, se empieza con <span class="resaltarcmd">1000 Puntos De Clan.<br>
</span>- Cuando matas a un enemigo y hay algún aliado en el mapa ,<br>
le da 2 puntos al clan de su aliado. <span class="resaltarcmd"><br>
</span>- La cantidad de puntos que solicita para el clan es la cantidad total de 
los <br>
miembros en el clan.<span class="resaltarcmd"><br>
</span>-<span class="resaltarcmd"> </span>
- Aceptar Miembro: -1 punto.<br>
- Puntos de Antifacción al Clan: Resta&nbsp; 10 puntos al clan.<br>
- Morir por un clan enemigo: Resta 2 puntos al clan.<br>
- Resucitar a un miembro de un clan enemigo: Resta 35 puntos al clan. <br>
- Matar a un clan enemigo: Otorga 6 puntos al clan.<p><br>
*
En el resto de los casos, no se suman ni restan puntos.<br>
* Si no tenemos puntos de Clan, podrán declarar alianzas o paz hacia otros 
clanes para obtener puntos, pero los demás clanes deberán aceptar la propuesta 
de paz/alianza.<p>- La lista de clanes al tocar CLANES esta 
organizado por puntaje, los clanes se rankean. Es decir, el clan que está 
primero, es el que más puntos de Clan tiene. La lista se actualiza cada vez que los puntos se modifican, por ende, esta actualizada en tiempo real.<br>
<br>

<u><span class="resaltar">¿Cómo entrar a un clan?</span></u><br>
Para unirse a un clan, lo que debes hacer, una vez en el juego, es presionar el <span class="resaltarcmd">
BOTÓN CLANES</span>. Allí podrás ver el ranking de clanes y ver la totalidad de 
clanes fundados y los detalles de cada uno de ellos si lo deseas. Si crees que podes entrar 
en alguno, debes seleccionar un clan, pulsar en &quot;Detalles&quot; y apretar el <span class="resaltarcmd">BOTÓN SOLICITAR INGRESO</span>, 
entonces deberás escribirle al líder del clan, explicándole las razones por las 
que quieres solicitar tu ingreso al mismo.<br>
-Sólo podes mandar una solicitud a la vez, si por ejemplo haces una nueva 
solicitud se borra la anterior.<br>
-Los personajes &lt;NEWBIES&gt; no pueden solicitar entrar a un clan.
<br><br><br>

<u><span class="resaltar">Otras cosas a tener en cuenta:</span></u><br>
-Si formas parte de un clan podes usar <span class="resaltarcmd">/CMSG + texto o TECLA 
SUPRIMIR + texto </span>para mandar un mensaje al clan que aparecerá en la consola o 
arriba-izquierda y arriba del personaje tu mensaje. <br>
- Con <span class="resaltarcmd">
/ONLINECLAN</span> 
podes ver los usuarios del clan que hay conectados.<br>
- Cada vez que entres al juego con un personaje que pertenece a un clan, en las 
ciudades o zona segura 
se te abrirá una ventana con las novedades, noticias, clanes aliados y enemigos.<br>
- No es posible pertenecer a mas de un clan con el mismo personaje.<br>
- Para salir de un clan deberás usar el comando <span class="resaltarcmd">/SALIRCLAN</span>.

<center><a href="oro.php#ver">Anterior</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href="party.php#ver"> Siguiente</a></center>
<br><br><table class="titulo_seccion"><tr><td>---</td></tr></table><table class="volver_indice"><tr valign="middle"><td align="left">&nbsp;<a href="index.php">&lt;&lt;Ir al Índice del Manual</a></td><td align="right">&nbsp;</td></tr></table>
</td>
</tr>
</table>
</body>
