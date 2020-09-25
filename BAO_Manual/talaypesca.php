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
<table class="titulo_seccion"><tr><td><a name="ver"></a>- Tala y Pesca -</td></tr></table><br><table width="98%" align="center"><tr><td><center><u><span class="resaltar">TALA</span></u></center><br><br>
<table border="0" align="center" width="75%"><tr>
<td><img src="imagenes/juego/pj_talando.jpg" width="160" height="189"></td><td width="3%"></td>
<td align="left">
El oficio de la tala consiste en la obtención de leños, una vez que tengas un <span class="resaltarcmd">HACHA DE LEÑADOR</span> deberás equiparla con <span class="resaltarcmd">TECLA EQUIPAR (E)</span>, luego buscar un árbol, presionar <span class="resaltarcmd">TECLA USAR (U o DOBLE CLICK)</span> y hacer click sobre el árbol.<br>
<br>
La tala depende de la clase y los puntos de habilidad en Tala del personaje, puesto que un Trabajador obtendra muchos más leños (VER , mientras que cualquier otra clase sólo conseguirá obtener de a UNO por vez.<br><br>

<span class="resaltarcmd">¿Cómo funciona la Tala de árboles según los niveles?</span><br><br>

<span class="resaltarcmd">Zona segura:</span><br><br>

<span class="resaltarcmd">Con hacha de leñador común:</span><br>
Si sos MENOR a 20, el minimo de Madera por vez es: 1 y tu nivel.<br>
Si sos MAYOR a nivel 20 y menor a 24, el minimo es 1 y tu nivel -5.<br>
Si sos MAYOR a nivel 25 y menor a 29, el minimo sube a 3 y tu nivel -5.<br>
Si sos MAYOR o IGUAL a nivel 30, el minimo sube a 5 y tu nivel -5.<br><br>

<span class="resaltarcmd">Con hacha de leñador Donante:</span><br>
Menor a nivel 20: entre 1 y el nivel que sea + 3 de bonus. Ej nivel 15, saca entre 1 y 18.<br>
Menor a nivel 30: entre 5 y el nivel que sea + 5 de bonus. Ej: nivel 27 saca entre 5 y 32.<br>
Mayor a nivel 30: entre 7 y el nivel que sea + 10 de bonus. Ej: nivel 31 saca entre 7 y 41.<br><br>

<span class="resaltarcmd">Zona insegura: (Sólo se puede talar en el bosque de los ENTS, hay unos árboles comunes que se pueden talar, sólo hay que buscarlos.)</span><br><br> 

<span class="resaltarcmd">Con hacha de leñador común:</span><br>
Si sos MENOR a 20, el minimo de Madera por vez es: 3 y tu nivel.<br>
Si sos MAYOR a nivel 19 y menor a 24, el minimo sube a 4 y tu nivel.<br>
Si sos MAYOR a nivel 25 y menor a 29, el minimo sube a 5 y tu nivel +5.<br>
Si sos MAYOR o IGUAL a nivel 30, te da entre 7 y tu nivel +10.<br>
<br><br>

<span class="resaltarcmd">Con hacha de leñador Donante:</span><br>
Menor a nivel 20: entre 15 y el nivel que sea + 10 de bonus. Ej nivel 15, saca entre 15 y 25.<br>
Menor a nivel 30: entre 25 y el nivel que sea + 15 de bonus. Ej: nivel 27 saca entre 25 y 42.<br>
Mayor a nivel 30: entre 35 y el nivel que sea + 30 de bonus. Ej: nivel 31 saca entre 35 y 61.<br><br>

<br><br><i><u>Temas Relacionados</u></i>: <a href="macrosycentinela.php?seccion=macros_centinela#ver" target="_blank">Sección: Macros y Centinela</a>
</td>
</tr></table>


<br><br><br><hr noshade width="55%" size="1" color="#959595" align="center"><br><br>


<center><u><span class="resaltar">PESCA</span></u></center><br><br>

<table border="0" align="center" width="75%"><tr>
<td><img src="imagenes/juego/pj_pesca.jpg" width="160" height="190"></td><td width="3%"></td>
<td align="left">
El oficio de la pesca consiste en la obtención de pescados, una vez que tengas una <span class="resaltarcmd">CAÑA DE PESCAR</span> deberás equiparla con <span class="resaltarcmd">TECLA EQUIPAR (E)</span>, luego buscar agua ya sea un lago o muelle, presionar <span class="resaltarcmd">TECLA USAR (U o DOBLE CLICK)</span> y hacer click sobre el agua.<br>
<br><br>
La pesca depende de la clase y los puntos de habilidad en Pesca del personaje, puesto que un Pescador obtendrá muchos pescados al mismo tiempo por cada vez que pesque, mientras que cualquier otra clase sólo conseguirá obtener de a UNO por vez.<br><br>

<span class="resaltarcmd">¿Cómo funciona la pesca según los niveles?</span><br><br>

<span class="resaltarcmd">Zona segura:</span><br><br>

Si sos MENOR a 20, el mínimo de pesca por vez es: 1 y tu nivel.<br>
Si sos MAYOR a nivel 20 y menor a 24, el minimo sube a 3 y tu nivel.<br>
Si sos MAYOR a nivel 25 y menor a 29, el minimo sube a 5 y tu nivel +5.<br>
Si sos MAYOR o IGUAL a nivel 30, te da entre 7 y tu nivel +10.<br><br>

<span class="resaltarcmd">Zona insegura:</span><br><br>

Si sos MENOR a 20, el mínimo de pesca por vez es: 1 y tu nivel +5.<br>
Si sos MAYOR a nivel 20 y menor a 24, el minimo sube a 3 y tu nivel +10.<br>
Si sos MAYOR a nivel 25 y menor a 29, el minimo sube a 5 y tu nivel +15.<br>
Si sos MAYOR o IGUAL a nivel 30, te da entre 7 y tu nivel +20.<br><br>

<span class="resaltarcmd">¿Cómo funciona la Pesca según los niveles? (CON RED DE PESCA DONANTE)</span><br><br>

- Info: La diferencia de la Red de Pesca y la Caña de Pesca, es que la Red puede pescar más variedad de peces y mayor cantidad, y además salen más caros al venderlos y así podes conseguir más oro.<br>

<span class="resaltarcmd">Zona segura:</span><br><br>

Si sos MENOR a 20, el mínimo de pesca por vez es: 1 y tu nivel.<br>
Si sos MAYOR a nivel 20 y menor a 24, el minimo sube a 3 y tu nivel<br>
Si sos MAYOR a nivel 25 y menor a 29, el minimo sube a 5 y tu nivel +15<br>
Si sos MAYOR o IGUAL a nivel 30, te da entre 7 y tu nivel +10<br><br>

<span class="resaltarcmd">Zona insegura:</span><br><br> 

<span class="resaltarcmd">Con RED Donante:</span><br>
Si sos MENOR a 20, el mínimo de pesca por vez es: 1 y tu nivel +5.<br>
Si sos MAYOR a nivel 20 y menor a 24, el minimo sube a 3 y tu nivel +10.<br>
Si sos MAYOR a nivel 25 y menor a 29, el minimo sube a 5 y tu nivel +15<br>
Si sos MAYOR o IGUAL a nivel 30, te da entre 7 y tu nivel +25<br><br>


<br><br><i><u>Temas Relacionados</u></i>: <a href="macrosycentinela.php?seccion=macros_centinela#ver" target="_blank">Sección: Macros y Centinela</a>
</td>
</tr></table></td></tr></table><br><br>
<center><a href="trabajador.php#ver">Anterior</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href="mineria.php#ver"> Siguiente</a></center>
<br><br><table class="titulo_seccion"><tr><td>---</td></tr></table><table class="volver_indice"><tr valign="middle"><td align="left">&nbsp;<a href="index.php">&lt;&lt;Ir al Índice del Manual</a></td><td align="right">&nbsp;</td></tr></table>

</td></tr>
</table>
</body>

