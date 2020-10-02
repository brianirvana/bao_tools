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
<table class="titulo_seccion"><tr><td><a name="ver"></a>- Criaturas Guardianas -</td></tr></table><br><table width="98%" align="center"><tr><td><center>Guardias de la Armada Real:</center><br>

<table align="center" width="95%">
<tr>
<td class="tdresaltar">IMAGEN</td>
<td class="tdresaltar" width="9%">NOMBRE</td>
<td class="tdresaltar">VIDA</td>
<td class="tdresaltar">DAÑO MIN/MAX<br>Y HECHIZOS</td>
<td class="tdresaltar" width="6%">PUNTE<br>RÍA</td>
<td class="tdresaltar" width="6%">EVA<br>SIÓN</td>
<td class="tdresaltar" width="6%">DEF<br>FÍSICA</td>
<td class="tdresaltar" width="6%">DEF<br>MÁGICA</td>
<td class="tdresaltar" width="6%">DOMA<br>BLE</td>
<td class="tdresaltar">RECOMPENSA</td>
<td class="tdresaltar" width="4%">EXP</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/guardia.gif" width="28" height="50"></td>
<td class="td2">Guardia Imperial</td>
<td class="td2">1000</td>
<td class="td2">115 / 250</td>
<td class="td2">400</td>
<td class="td2">190</td>
<td class="td2">30</td>
<td class="td2">0</td>
<td class="td2">-</td>
<td class="td2">-</td>
<td class="td2">0</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes\juego/RangeReal.png" width="23" height="53"></td>
<td class="td2">Arquera Real</td>
<td class="td2">1000</td>
<td class="td2">30 / 50<br>(Flecha 40 / 60)</td>
<td class="td2">1500</td>
<td class="td2">190</td>
<td class="td2">10</td>
<td class="td2">0</td>
<td class="td2">-</td>
<td class="td2">Flecha +1 (10)</td>
<td class="td2">0</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/Juego/SacerdoteReal.PNG" width="24" height="52"></td>
<td class="td2">Sacerdote Imperial</td>
<td class="td2">1000</td>
<td class="td2">100 / 100<br>(Apocalipsis 85 / 100)<br>(Paralizar)</td>
<td class="td2">1500</td>
<td class="td2">190</td>
<td class="td2">10</td>
<td class="td2">0</td>
<td class="td2">-</td>
<td class="td2">-</td>
<td class="td2">0</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/Juego/DruidaReal.PNG" width="21" height="54"></td>
<td class="td2">Druida Imperial</td>
<td class="td2">1000</td>
<td class="td2">100 / 100<br>(Inmovilizar)<br>(Descarga Eléctrica 55 / 85)</td>
<td class="td2">1500</td>
<td class="td2">190</td>
<td class="td2">10</td>
<td class="td2">0</td>
<td class="td2">-</td>
<td class="td2">-</td>
<td class="td2">0</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/Juego/MagoReal.PNG" width="23" height="54"></td>
<td class="td2">Mago Imperial</td>
<td class="td2">1000</td>
<td class="td2">100 / 100<br>(Inmovilizar)<br>(Descarga Eléctrica 55 / 85)</td>
<td class="td2">1500</td>
<td class="td2">190</td>
<td class="td2">10</td>
<td class="td2">0</td>
<td class="td2">-</td>
<td class="td2">-</td>
<td class="td2">0</td>
</tr>

</table>



<br><br><br>
<center>Guardias de la Legión Oscura:</center><br>



<table align="center" width="95%">
<tr>
<td class="tdresaltar">IMAGEN</td>
<td class="tdresaltar" width="9%">NOMBRE</td>
<td class="tdresaltar">VIDA</td>
<td class="tdresaltar">DAÑO MIN/MAX<br>Y HECHIZOS</td>
<td class="tdresaltar" width="6%">PUNTE<br>RÍA</td>
<td class="tdresaltar" width="6%">EVA<br>SIÓN</td>
<td class="tdresaltar" width="6%">DEF<br>FÍSICA</td>
<td class="tdresaltar" width="6%">DEF<br>MÁGICA</td>
<td class="tdresaltar" width="6%">DOMA<br>BLE</td>
<td class="tdresaltar">RECOMPENSA</td>
<td class="tdresaltar" width="4%">EXP</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/guardia_infernal.gif" width="28" height="53"></td>
<td class="td2">Guardia Legionario</td>
<td class="td2">1000</td>
<td class="td2">115 / 250</td>
<td class="td2">400</td>
<td class="td2">190</td>
<td class="td2">30</td>
<td class="td2">0</td>
<td class="td2">-</td>
<td class="td2">-</td>
<td class="td2">0</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/Juego/Mage2Legion.PNG" width="25" height="51"></td>
<td class="td2">Mago del Caos</td>
<td class="td2">1000</td>
<td class="td2">100 / 100<br>(Inmovilizar)<br>(Descarga Eléctrica 55 / 85)</td>
<td class="td2">1500</td>
<td class="td2">190</td>
<td class="td2">10</td>
<td class="td2">0</td>
<td class="td2">-</td>
<td class="td2">-</td>
<td class="td2">0</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/golem.gif" width="52" height="69"></td>
<td class="td2">Golem Oscuro</td>
<td class="td2">10000</td>
<td class="td2">300 / 450</td>
<td class="td2">400</td>
<td class="td2">50</td>
<td class="td2">30</td>
<td class="td2">0</td>
<td class="td2">-</td>
<td class="td2">-</td>
<td class="td2">0</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/Juego/Mage1Legion.PNG" width="25" height="51"></td>
<td class="td2">Mago del Caos</td>
<td class="td2">1000</td>
<td class="td2">100 / 100<br>(Inmovilizar)<br>(Descarga Eléctrica 55 / 85)</td>
<td class="td2">1500</td>
<td class="td2">190</td>
<td class="td2">10</td>
<td class="td2">0</td>
<td class="td2">-</td>
<td class="td2">-</td>
<td class="td2">0</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/Juego/RangeLegion.PNG" width="25" height="51"></td>
<td class="td2">Arquera del Caos</td>
<td class="td2">1000</td>
<td class="td2">100 / 200</td>
<td class="td2">1500</td>
<td class="td2">190</td>
<td class="td2">10</td>
<td class="td2">0</td>
<td class="td2">-</td>
<td class="td2">-</td>
<td class="td2">0</td>
</tr>










</table></td></tr></table><br><br>

<center><a href="criaturasinvocables.php#ver">Anterior</a>&nbsp&nbsp</center>
<br><br><table class="titulo_seccion"><tr><td>---</td></tr></table><table class="volver_indice"><tr valign="middle"><td align="left">&nbsp;<a href="index.php">&lt;&lt;Ir al Índice del Manual</a></td><td align="right">&nbsp;</td></tr></table>

</td>
</tr>
</table>
</body>

