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
<table class="titulo_seccion"><tr><td><a name="ver"></a>- Criaturas Invocadas -</td></tr></table><br><table width="98%" align="center"><tr><td>Acá verás las criaturas que podés invocar gracias al <span class="resaltarcmd">ENTRENADOR</span> con el comando <span class="resaltarcmd">/ENTRENAR</span>. Estas criaturas creadas mágicamente tienen algunas diferencias con las normales que aparecen por si solas en algún mapa.<br><br><br>

<table align="center" width="96%">
<tr>
<td class="tdresaltar">IMAGEN</td>
<td class="tdresaltar" width="10%">NOMBRE</td>
<td class="tdresaltar" width="4%">VIDA</td>
<td class="tdresaltar" width="18%">DAÑO MIN/MAX<br>Y HECHIZOS</td>
<td class="tdresaltar" width="6%">PUNTE<br>RÍA</td>
<td class="tdresaltar" width="6%">EVA<br>SIÓN</td>
<td class="tdresaltar" width="6%">DEF<br>FÍSICA</td>
<td class="tdresaltar" width="6%">DEF<br>MÁGICA</td>
<td class="tdresaltar" width="6%">DOMA<br>BLE</td>
<td class="tdresaltar">RECOMPENSA</td>
<td class="tdresaltar" width="4%">EXP</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/murcielago.gif" width="25" height="18" border="0"></td>
<td class="td2">Murciélago</td>
<td class="td2">10</td>
<td class="td2">1 / 1</td>
<td class="td2">15</td>
<td class="td2">10</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2">-</td>
<td class="td2">-</td>
<td class="td2">120</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/serpiente.gif" width="24" height="23" border="0"></td>
<td class="td2">Serpiente</td>
<td class="td2">22</td>
<td class="td2">1 / 1</td>
<td class="td2">10</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2">-</td>
<td class="td2">-</td>
<td class="td2">150</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/escorpion.gif" width="27" height="18" border="0"></td>
<td class="td2">Escorpión</td>
<td class="td2">32</td>
<td class="td2">1 / 3</td>
<td class="td2">30</td>
<td class="td2">10</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2">-</td>
<td class="td2">-</td>
<td class="td2">320</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/goblin.gif" width="25" height="34" border="0"></td>
<td class="td2">Goblin</td>
<td class="td2">90</td>
<td class="td2">4 / 12</td>
<td class="td2">50</td>
<td class="td2">40</td>
<td class="td2">15</td>
<td class="td2">0</td>
<td class="td2">-</td>
<td class="td2">-</td>
<td class="td2">450</td>
</tr>

</table>





<br><br><br>





Acá se muestran las criaturas que un personaje podrá invocar utilizando <span class="resaltarcmd">HECHIZOS</span>, se debe tener en cuenta que: El daño y la frecuencia de ataque de nuestras mascotas aumentará leve y progresivamente a medida que subamos de nivel. Para más detalles ver <a href="hechizos.php?seccion=magiayhechizos#ver" target="_blank">Sección: Magia y Hechizos</a>.<br><br><br>

<table align="center" width="98%">
<tr>
<td class="tdresaltar">IMAGEN</td>
<td class="tdresaltar" width="4%">NOMBRE</td>
<td class="tdresaltar" width="4%">VIDA</td>
<td class="tdresaltar">DAÑO MIN/MAX<br>Y HECHIZOS</td>
<td class="tdresaltar" width="6%">PUNTE<br>RÍA</td>
<td class="tdresaltar" width="6%">EVA<br>SIÓN</td>
<td class="tdresaltar" width="6%">DEF<br>FÍSICA</td>
<td class="tdresaltar" width="6%">DEF<br>MÁGICA</td>
<td class="tdresaltar" width="4%">PUEDE ATACAR</td>
<td class="tdresaltar">COMO FUNCIONA</td>
</tr>


<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/elemental_fuego2.gif" width="36" height="63" border="0"></td>
<td class="td2">Elemental de Fuego</td>
<td class="td2">200</td>
<td class="td2">Tormenta de Fuego 30 / 55</td>
<td class="td2">-</td>
<td class="td2">100</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2">Usuarios</td>
<td class="td2">El personaje debe dejarse golpear por un usuario, o que ataquen su elemental, o atacar a un usuario para que 
comience a atacar.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/elemental_tierra.gif" width="30" height="55" border="0"></td>
<td class="td2">Elemental de Tierra</td>
<td class="td2">200</td>
<td class="td2">Paralizar</td>
<td class="td2">-</td>
<td class="td2">100</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2">Usuarios</td>
<td class="td2">El personaje debe dejarse golpear por un usuario, o que ataquen su elemental, o atacar a un usuario para que 
comience a atacar - NOTA IMPORTANTE: Este conjuro ha sido removido para usuarios y solamente los GAME MASTERS pueden invocar elementales de tierra, o predisponerlos para un evento.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/elemental_agua.gif" width="28" height="62" border="0"></td>
<td class="td2">Elemental de Agua</td>
<td class="td2">400</td>
<td class="td2">85 / 110</td>
<td class="td2">150</td>
<td class="td2">200</td>
<td class="td2">0</td>
<td class="td2">0</td>
<td class="td2">Criaturas</td>
<td class="td2">El personaje debe dejarse golpear físicamente por una criatura para que 
comience a atacar.<br>-Solo se recibirá la exp. cuando la víctima muera.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/esqueleto_guerrero.gif" width="26" height="51" border="0"></td>
<td class="td2">Esqueleto Guerrero</td>
<td class="td2">320</td>
<td class="td2">55 / 94</td>
<td class="td2">130</td>
<td class="td2">100</td>
<td class="td2">25</td>
<td class="td2">0</td>
<td class="td2">Criaturas</td>
<td class="td2">El personaje debe dejarse golpear físicamente por una criatura para que 
comience a atacar.<br>-Solo se recibirá la exp. cuando la víctima muera.</td>
</tr>

<tr class='colorcolumna1'><td class="tdresaltar" height="45"><img src="imagenes/npcs/zombie.gif" width="22" height="51" border="0"></td>
<td class="td2">Zombie</td>
<td class="td2">250</td>
<td class="td2">23 / 50</td>
<td class="td2">100</td>
<td class="td2">50</td>
<td class="td2">20</td>
<td class="td2">0</td>
<td class="td2">Criaturas</td>
<td class="td2">El personaje debe dejarse golpear físicamente por una criatura para que 
comience a atacar.<br>-Solo se recibirá la exp. cuando la víctima muera.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" height="45"><img src="imagenes/npcs/lobo.gif" width="55" height="34" border="0"></td>
<td class="td2">Lobo</td>
<td class="td2">75</td>
<td class="td2">10 / 20</td>
<td class="td2">80</td>
<td class="td2">25</td>
<td class="td2">8</td>
<td class="td2">0</td>
<td class="td2">Criaturas</td>
<td class="td2">El personaje debe dejarse golpear físicamente por una criatura para que 
comience a atacar.<br>-Solo se recibirá la exp. cuando la víctima muera.</td>
</tr>

</table></td></tr></table><br><br>

<center><a href="criaturasnohostiles.php#ver">Anterior</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href="guardias.php#ver"> Siguiente</a></center>
<br><br><table class="titulo_seccion"><tr><td>---</td></tr></table><table class="volver_indice"><tr valign="middle"><td align="left">&nbsp;<a href="index.php">&lt;&lt;Ir al Índice del Manual</a></td><td align="right">&nbsp;</td></tr></table>

</td>
</tr>
</table>
</body>
