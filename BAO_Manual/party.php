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
<table class="titulo_seccion"><tr><td><a name="ver"></a>- Party -</td></tr></table><br><table width="98%" align="center"><tr><td>El party es una herramienta muy útil para poder entrenar de manera más veloz y organizada (También sirve para comunicarse a largas distancias sin muchas complicaciones).<br><br>

Cualquier personaje de cualquier nivel puede crear partys, e incorporar usuarios a la misma. <br> [Se ha removido la habilidad liderazgo, y ya no se requiere carisma para crear una party]

<br><br>

Para crear una party deberás tipear el comando <span class="resaltarcmd">/CREARPARTY o podes presionar F3 y abrirá el panel de Party</span>. Una vez que la hayas creado, el personaje que desee ingresar debera hacer click en tu personaje y tipear el comando <span class="resaltarcmd">/PARTY o bien, presionar F1</span> para solicitar el ingreso a la misma. Para aceptarlo deberás tipear <span class="resaltarcmd">/ACCEPTPARTY [Nick] o F1</span> y hacerle previamente click a la persona que queramos incorporar a la party. <br>

NOTA: La persona solicitante NO debe encontrarse a más de un tile (Cuadrado) de distancia del fundador de la party, de lo contrario el intento de incorporación a la party fracasará rotundamente.

<br><br><br>


<table id="menuinfoespecial" align="center" width="80%">
<tr>
<td align="center" valign="middle" style="background:url(imagenes/manual/menuinfo_fondo_arrow.gif);"><img src="imagenes/manual/menuinfo_arrow.gif"> <font color="#FFFFFF"><b>Importante</b></font> <img src="imagenes/manual/menuinfo_arrow.gif"></td>
</tr>
<tr>
<td align="left" valign="top" style="background:url(imagenes/manual/menuinfo_fondo.gif) bottom repeat-x;padding-left:3px;">

<img src="imagenes/manual/menuinfo_flechita.gif"> No hay límite de nivel de diferencia entre los miembros de la party.
<table><tr><td height="3"></td></tr></table>
<img src="imagenes/manual/menuinfo_flechita.gif"> El límite máximo de personajes en una party es 7.
<table><tr><td height="3"></td></tr></table>
<img src="imagenes/manual/menuinfo_flechita.gif"> Sólo se permiten partys de &quot;ciudadanos y armadas&quot;, 
&quot;caos y criminales&quot; o &quot;criminales y ciudadanos [Neutrales] <br>
Si la party posee 3 miembros o más, dependiendo de quienes se encuentren dentro de ella, obtendrán diversas bonificaciones de experiencia: <br><br>
-Party con 3 o más personajes de alineación [Ejército Real] ó [Legión Oscura] tendrán una amplificación del 30% de la experiencia total. <br>
-Party con 3 o más personajes sin alineación alguna [CIUDADANOS] ó [CRIMINALES] tendrán una amplificación del 15% de la experiencia total. <br>

<table><tr><td height="3"></td></tr></table>
<img src="imagenes/manual/menuinfo_flechita.gif"> La experiencia se reparte instantáneamente hasta una distancia de 18 tiles (una pantalla), la recibirás constantemente a medida que vayan atacando criaturas los demás miembros de la party.
<table><tr><td height="3"></td></tr></table><img src="imagenes/manual/menuinfo_flechita.gif">La experiencia dentro de la party se distribuye bajo la siguiente ecuación: Experiencia total obtenida / cantidad de personajes.<br>
<img src="imagenes/manual/menuinfo_flechita.gif">Con el amuleto 90/10 los miembros de la party recibiran 90%(El creador de la misma) y el 10% restante se dividira entre los demas miembros de la party.
</td>
</tr>
</table>


<br><br>

<u><b>Una vez en party podras usar estos comandos:</b></u><br><br>
<span class="resaltarcmd">/PMSG</span> (Mensaje privado entre miembros de la party). Y también se puede utilizar la tecla SUPRIMIR + texto + ENTER para hablar por Party, al igual que se hace por clan.<br>
<span class="resaltarcmd">/ONLINEPARTY</span> (Aparece quienes integran la party, experiencia lograda por cada miembro y el total de 
exp. acumulada en la party).<br>
<span class="resaltarcmd">/SALIRPARTY</span> (Abandona la party y cobra la experiencia que tenga acumulada, si el fundador abandona la party se disuelve).<br>
<span class="resaltarcmd">/PARTYLIDER</span> NICK (Pasa el liderazgo a otro personaje que esté dentro de la party).<br>
<span class="resaltarcmd">/ECHARPARTY</span> NICK (Echa un personaje de la party, sólo el fundador puede utilizar este comando).
<center><a href="clane.php#ver">Anterior</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href="estados.php#ver"> Siguiente</a></center>
<br><br><table class="titulo_seccion"><tr><td>---</td></tr></table><table class="volver_indice"><tr valign="middle"><td align="left">&nbsp;<a href="index.php">&lt;&lt;Ir al Índice del Manual</a></td><td align="right">&nbsp;</td></tr></table>
</td>
</tr>
</table>
</body>