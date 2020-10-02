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
<table class="titulo_seccion"><tr><td><a name="ver"></a>- Criaturas No Hostiles -</td></tr></table><br><table width="98%" align="center"><tr><td>Estas criaturas no te atacarán a menos que las ataques, pero si lo hacés recibirás puntos de asesino y bandido. Para más información ver <a href="estados.php?seccion=reputacion#ver">SECCIÓN: Reputación</a>.<br><br><br>


<table align="center" width="97%">
<tr>
<td class="tdresaltar">IMAGEN</td>
<td class="tdresaltar" width="10%">NOMBRE</td>
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

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/hormiga.gif" width="29" height="19"></td>
<td class="td2">Hormiga</td>
<td class="td2">5</td>
<td class="td2">1 / 1</td>
<td class="td2">5</td>
<td class="td2">3</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2">425</td>
<td class="td2">-</td>
<td class="td2">50</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/conejo.gif" width="10" height="13"></td>
<td class="td2">Conejo</td>
<td class="td2">15</td>
<td class="td2">1 / 1</td>
<td class="td2">5</td>
<td class="td2">5</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2">450</td>
<td class="td2">-</td>
<td class="td2">100</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/gallo.gif" width="10" height="13"></td>
<td class="td2">Gallo</td>
<td class="td2">15</td>
<td class="td2">1 / 1</td>
<td class="td2">5</td>
<td class="td2">5</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2">450</td>
<td class="td2">-</td>
<td class="td2">100</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/pavo_real.gif" width="27" height="29"></td>
<td class="td2">Pavo Real</td>
<td class="td2">15</td>
<td class="td2">1 / 1</td>
<td class="td2">5</td>
<td class="td2">5</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2">450</td>
<td class="td2">-</td>
<td class="td2">100</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/rata.gif" width="30" height="19"></td>
<td class="td2">Rata</td>
<td class="td2">15</td>
<td class="td2">2 / 4</td>
<td class="td2">10</td>
<td class="td2">20</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2">700</td>
<td class="td2">-</td>
<td class="td2">50</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/pato.gif" width="36" height="36"></td>
<td class="td2">Pato</td>
<td class="td2">30</td>
<td class="td2">3 / 5</td>
<td class="td2">10</td>
<td class="td2">10</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2">660</td>
<td class="td2">-</td>
<td class="td2">200</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/cuervo.gif" width="24" height="17"></td>
<td class="td2">Cuervo</td>
<td class="td2">30</td>
<td class="td2">4 / 10</td>
<td class="td2">15</td>
<td class="td2">50</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2">1100</td>
<td class="td2">-</td>
<td class="td2">550</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/aguila.gif" width="25" height="20"></td>
<td class="td2">Gran Águila</td>
<td class="td2">40</td>
<td class="td2">4 / 15</td>
<td class="td2">25</td>
<td class="td2">160</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2">1200</td>
<td class="td2">-</td>
<td class="td2">750</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/cerdo.gif" width="42" height="24"></td>
<td class="td2">Cerdo</td>
<td class="td2">35</td>
<td class="td2">1 / 2</td>
<td class="td2">10</td>
<td class="td2">15</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2">500</td>
<td class="td2">-</td>
<td class="td2">150</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/vaca.gif" width="70" height="48"></td>
<td class="td2">Vaca</td>
<td class="td2">65</td>
<td class="td2">2 / 5</td>
<td class="td2">25</td>
<td class="td2">15</td>
<td class="td2">2</td>
<td class="td2">0</td>
<td class="td2">810</td>
<td class="td2">-</td>
<td class="td2">100</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/tortuga.gif" width="61" height="41"></td>
<td class="td2">Tortuga de Mar</td>
<td class="td2">550</td>
<td class="td2">35 / 50</td>
<td class="td2">100</td>
<td class="td2">45</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2">2010</td>
<td class="td2">-</td>
<td class="td2">3500</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/oso.gif" width="41" height="51"></td>
<td class="td2">Oso Pardo Domesticado</td>
<td class="td2">600</td>
<td class="td2">65 / 100</td>
<td class="td2">250</td>
<td class="td2">65</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2">2200</td>
<td class="td2">-</td>
<td class="td2">5500</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/jabali.gif" width="43" height="26"></td>
<td class="td2">Jabalí</td>
<td class="td2">515</td>
<td class="td2">65 / 100</td>
<td class="td2">130</td>
<td class="td2">70</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2">2100</td>
<td class="td2">-</td>
<td class="td2">5500</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/tigre.gif" width="53" height="35"></td>
<td class="td2">Tigre de Bengala</td>
<td class="td2">800</td>
<td class="td2">30 / 70</td>
<td class="td2">700</td>
<td class="td2">45</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2">2100</td>
<td class="td2">-</td>
<td class="td2">6000</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/fatuo.gif" width="18" height="15"></td>
<td class="td2">Fuego Fatuo</td>
<td class="td2">15000</td>
<td class="td2">100 / 100<br>(Inmovilizar)<br>(Descarga Eléctrica 55 / 85)</td>
<td class="td2">1000</td>
<td class="td2">500</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2">-</td>
<td class="td2">Oro (1000)</td>
<td class="td2">60000</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/fatuo.gif" width="18" height="15"></td>
<td class="td2">Morgolock's Soul</td>
<td class="td2">29550</td>
<td class="td2">100 / 100<br>(Inmovilizar)<br>(Descarga Eléctrica 55 / 85)</td>
<td class="td2">1500</td>
<td class="td2">1500</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2">-</td>
<td class="td2">Oro (2000)</td>
<td class="td2">20000</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/ely.gif" width="20" height="27"></td>
<td class="td2">Ely</td>
<td class="td2">0</td>
<td class="td2">1 / 1<br>(Aura Sanadora Avanzada 12 / 35)</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2">-</td>
<td class="td2">-</td>
<td class="td2">0</td>
</tr>

</table>
</td></tr></table><br><br>

<center><a href="criaturashostiles.php#ver">Anterior</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href="criaturasinvocables.php#ver"> Siguiente</a></center>
<br><br><table class="titulo_seccion"><tr><td>---</td></tr></table><table class="volver_indice"><tr valign="middle"><td align="left">&nbsp;<a href="index.php">&lt;&lt;Ir al Índice del Manual</a></td><td align="right">&nbsp;</td></tr></table>

</td>
</tr>
</table>
</body>

