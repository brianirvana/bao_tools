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
<table height="50"align="center" cellpadding="0" cellspacing="0" bgcolor="">
<table align="Center" class="body" width="1100px">
<tr>
<td>
<table class="titulo_seccion"><tr><td><a name="ver"></a>- Oro y Billetera -</td></tr></table><br><table width="98%" align="center"><tr><td><center><u><span class="resaltar"><font size="2">Informaci�n:</font></span></u></center><br><br></table>
<table align="center" width="1000px">
<tr>
<td>
<span class="resaltarcmd"><font size="2"><u>El Oro:</u></font></span><br>
<span class="size">
La forma m�s com�n de conseguir oro es matando criaturas en los bosques, desiertos y dungeons; pero esto para un novato es dif�cil ya que las criaturas que dan oro por lo general son muy fuertes. Es por eso que los nuevos (Newbies) deber�n entrenar primero antes de poder hacer frente a estas criaturas. Otra forma de conseguir dinero es ejerciendo profesiones; ya sea pescando, talando, haciendo cascos, armaduras o armas, y vendiendo lo que consigas o fabriques y as� lucrar con las ventas.<br>
Las dos �ltimas formas de conseguir dinero son a trav�s de las pertenencias de otros usuarios (ya sea matando otros usuarios o rob�ndoles sus cosas). Recuerda que robando, atacando o matando a cualquier usuario que no sea criminal la reputaci�n del personaje pasa a ser Criminal.
<br><br><br>
<span class="resaltarcmd"><font size="2"><u>El Banco y la Billetera:</u></font></span><br>
Ahora que ya sabes como conseguir dinero deber�s saber como administrarlo. <br>
Tener dinero encima es muy peligroso ya que si mueres, el dinero que tienes en tu poder, caer� (A menos que seas Newbie o tengas m�s de 100.000 monedas de oro). Solo podr�s llevar como m�ximo 100.000 monedas de oro por nivel del personaje (Entonces, por ejemplo si  si tu personaje es nivel 25 podr� llevar 2.500.000 de oro (ej: 25 x 100.000)) en billetera y NO se le caer�a nada al morir, pero en cambio si tendr�a 2.501.200 por ej. s�lo se le caer�a el sobrante (1200 de oro)). <br> Sin embargo, puedes evitar perder el dinero depositando tus ahorros en un banco.<br><br>
Cabe destacar que si tiras oro al piso, el mismo caer� a un paso de distancia, en diagonal arriba y a la izquierda, salvo que ese casillero est� ocupado, en cuyo caso caer� en otro que se encuentre libre.<br>
En el banco puedes tanto depositar como retirar dinero. El mismo cuenta tambi�n con un sistema de b�veda para guardar tus pertenencias. Esto se hace clickeando sobre el NPC banquero y escribiendo en la ventana de Chat los comandos que se describir�n m�s adelante.
<br><br>
<b>IMPORTANTE:</b> Si el oro que cae al piso, supera las 500.000 monedas, desaparecer� el resto y solo quedar�n 500.000 monedas de oro al piso.<br>
Ejemplo:<br>
Al ser nivel 30 (solo puedes llevar 3.000.000 de oro como m�ximo encima) y tienes 10.000.000 de oro, y mueres. El oro de tu "billetera" bajar� a 3.000.000 y en el piso, quedar�n tirados 500.000 monedas de oro, y los 6.500.000 desaparecer�n por completo, debido a que tanto oro en el piso, podr�a ocasionar que el servidor colapse.<br><br>

Consejo: Apenas comienzas a jugar, y eres nivel bajo (entre 18 y 29), se recomienda adquirir oro realizando las misiones que ofrece el NPC con un signo de pregunta sobre su cabeza. Vendiendo items y utilizando el sistema de subastas lograr�s armarte de una buena econom�a en poco tiempo.

En la parte derecba de la pantalla podr�s ver la cantidad de oro que tienes con un simbolo de oro. Para tirar oro deber�s hacer click en el simbolo, poner la cantidad y luego darle "Aceptar". Ejempplo: Mira la siguiente imagen:<img src="imagenes\juego/TirarOro.jpg" alt=""><br><br>

<center><u>Comandos �tiles para el banco:</u></center>


<br><br>
<table width="80%" align="center">
<tr>
<td class="tdresaltar5" rowspan="5" width="5%"><img src="imagenes/juego/cartel_banquero.png" width="21" height="52" border="0"></td>
<td class="tdresaltar5" width="10%">COMANDO</td>
<td class="tdresaltar5" width="65%">DESCRIPCION</td>
</tr>
<tr>
<td class="tdresaltar" height="30">/Depositar X</td>
<td class="td6">Deposita en el banco X cantidad de monedas de oro.</td>
</tr>
<tr>
<td class="tdresaltar" height="30">/Retirar X</td>
<td class="td6">Retira del banco X cantidad de monedas de oro.</td>
</tr>
<tr>
<td class="tdresaltar" height="30">/Balance</td>
<td class="td6">Muestra la cantidad de oro disponible en la cuenta.</td>
</tr>
<tr>
<td class="tdresaltar" height="30">/Boveda<br>o doble click</td>
<td class="td6">Aparece una ventana id�ntica a la de comercio donde para depositar �tems deber�s hacer click en el <span class="resaltarcmd">BOT�N DEPOSITAR (VENDER)</span> y para retirarlos podes ir a cualquier banco (no necesariamente aqu�l en que hiciste el dep�sito), elegir el �tem y clickear <span class="resaltarcmd">BOT�N RETIRAR (COMPRAR)</span>.</td>
</tr>
</table>

</span>
</td>
</tr>
</table>

<bR>
<bR>
<bR>
<center><a href="muerte.php#ver">Anterior</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href="clanes.php#ver"> Siguiente</a></center>
<br><br><table class="titulo_seccion"><tr><td>---</td></tr></table><table class="volver_indice"><tr valign="middle"><td align="left">&nbsp;<a href="index.php">&lt;&lt;Ir al �ndice del Manual</a></td><td align="right">&nbsp;</td></tr></table>

</td>
</tr>
</table>

</body>