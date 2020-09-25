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
<td>
<tr>
<table class="titulo_seccion"><tr><td><a name="ver"></a>- Nivel, Experiencia, Puntos de Habilidad y Happy Hours -</td></tr></table><br><table width="98%" align="center"><tr><td><br><br>En alg�n momento ganar�s experiencia y har� que tu personaje suba de nivel, lo sabr�s porque escuchar�s un sonido caracter�stico. El hecho de subir de nivel da muchas ventajas, como por ejemplo que la vida, mana, golpe y energ�a se incremente, la cantidad var�a seg�n la clase que hayas elegido, adem�s podr�s aumentar los puntos de habilidad manualmente.
<br>
<br><br>

<table align="center" width="90%"><tr><td><span class="resaltarcmd"><font size="2"><u>Niveles:</u></font></span><br>
<span class="size">Obtener experiencia nos llevar� eventualmente a pasar al siguiente nivel, al hacerlo podremos escuchar un sonido caracter�stico. El hecho de subir de nivel otorga muchas ventajas, se incrementa la vida del personaje, el man�, el da�o que infringe, la evasi�n y la energ�a. Estos bonus var�an seg�n la profesi�n y raza del personaje. <br><br>

Tambi�n el personaje podr� subir habilidades; al subir de nivel se puede notar un signo mas (+) a la derecha del indicador de nivel. Pulsarlo te llevar� a una ventana en la que se puede asignar m�s puntos a tus habilidades [S�lo puedes ganar 3 puntos de habilidad por nivel].<br><br>

Sin embargo, debes recordar que cada habilidad sube sola hasta cierta cantidad de l�mite por nivel. Por cada cuatro niveles que pases, podr�s subir de manera 'natural' 10 puntos. Adem�s, si asignas manualmente puntos por encima de los naturales del nivel, NO perder�s la posibilidad de que estos suban naturalmente a partir de la asignaci�n.  <br><br> Ejemplo: Tenemos un druida nivel 18 que necesitar�a lanzar Misil m�gico (60 Skills) e Inmovilizar (75 Skills) lo antes posible: Muy bien, dado que al nivel 18 disponemos de 45 skills naturales como m�ximo y el misil m�gico nos exige 60 puntos en magia, procedemos a asignar 15 puntos para poder lanzarlo. Y cuando tu personaje logre pasar al nivel 19, la habilidad magia subir� sola y no se quedar� estancada en 60 puntos de habilidad, y llegado al nivel 24 podr� lanzar tambi�n inmovilizar al 60 skills naturales del nivel + Los 15 que se han asignado al 18 para lanzar Misil m�gico. <br><br>

Al pasar de nivel, la cantidad de puntos de experiencia sobrante por encima de los que necesitabas para pasar de nivel, se acumulan para el pr�ximo, para as� no desperdiciar nada de tu entrenamiento. 
</span><br><br><br><br>

<span class="resaltarcmd"><font size="2"><u>Experiencia:</u></font></span><br>
<span class="size">En las tierras de Bender tienes distintas formas de ganar experiencia. Por un lado, cuando alg�n skill sube solo, tu personaje recibir� una peque�a cantidad de puntos de experiencia.
Por otro lado, mediante el entrenamiento con criaturas (NPCs hostiles) es cuando se gana la mayor cantidad de puntos de experiencia y es la forma m�s recomendable a a la hora de querer pasar de nivel.
La suma de la experiencia que se te otorga depende del NPC que mates. Existen los npcs m�s fuertes que son los que dar�n m�s experiencia pero m�s d�ficiles ser�n de matar y los debiles que si bien ser�n menos complicados, no dar�n tantos puntos. <br><br>

Tu experiencia figura debajo del nombre de tu personaje, al lado de la cantidad de puntos necesarios para pasar de nivel y el porcentaje que ya llevas hecho sobre ese total. 
</span><br><br>
<div align="center"> 
<img src="imagenes\juego/Nivel.png" alt="">
<br><br><br><br>

Al subir de nivel ver�s que al lado del indicador de nivel aparece un <span class="resaltarcmd">BOT�N (+)</span>, en cuanto lo pulses se abrir� una ventana en la que podr�s asignar mas puntos a las habilidades que quieras.
<br><br>
Por �ltimo cabe destacar que el personaje tendr� el estado de &lt;NEWBIE&gt; hasta nivel 17, luego desde nivel 18 ese estado desaparece para siempre.
<br><br><br>

<table align="center" width="90%"><tr><td><span class="resaltarcmd"><font size="2"><u>�C�mo saber qu� criatura resulta m�s conveniente matar?</u></font></span><br><br>
<span class="size">Para entrenar m�s r�pido, debes encontrar criaturas que no se encuentren 1 nivel o m�s por debajo del tuyo, de lo contrario no te otorgar�n puntos de experiencia. 
Entre MENOR sea la diferencia de niveles entre tu nivel y el de la criatura, m�s puntos te van a dar. <br>

<span class="resaltarcmd">Ejemplo:</span> Si eres nivel 23 y atacas a una Ara�a Gigante [Nivel 22], no te dara puntos de experiencia. Sin embargo, si eres nivel 18 y atacas a un Gale�n Fantasmal [Nivel 45], s� te dar� puntos de experiencia, pero no TODOS los que deber�a (debido a la gran diferencia de niveles). <br> Si la criatura que est�s atacando es de tu mismo nivel, recibir�s una bonificaci�n del 10% sobre la experiencia TOTAL que esa criatura otorga.</span><br><br>


<table align="center" width="90%"><tr><td><span class="resaltarcmd"><font size="2"><u>�Happy Hour!</u></font></span><br><br>

Las tierras de BenderAO son constantemente bendecidas por los Dioses, otorgando diversas bonificaciones a los mortales para que puedan disfrutar de su estad�a en todos los sentidos. <br>
Existen 5 tipos de Happy Hour en BenderAO: <br><br>

-50% de bonificaci�n en puntos de Experiencia. <br>
-50% de bonificaci�n en monedas de oro [Drops de NPCs] <br>
-Bonificaci�n de Talar �rboles y obtener el doble de madera [Aplica tanto para zona segura, como insegura] <br>
-Bonificaci�n de Extraer minerales por el doble de cantidad. <br>
-Bonificaci�n del 100% al momento de obtener puntos CRIMINALES/CIUDADANOS asesinando usuarios. <br>
-Al estar en party las misiones cuentan para todos los integrantes de la misma simultaneamente(Siempre y cuando todos tengan la misma mision).<br><br>

NOTA: Si eres un usuario perteneciente a alguna facci�n (Ej�rcito Real � Legi�n Oscura), al golpear NPCs de cualquier forma obtendr�s una bonificaci�n del 15% de experiencia. <br>
Fomentando as� el enlistamiento a diversas facciones y el entrenamiento individual o en grupos para dominar las zonas m�s peligrosas de estas tierras. <br><br>

Aqu� se muestra una tabla con la experiencia que requiere cada nivel para acceder al pr�ximo:
<br><br>


<table align="center" width="31%" class="tablasinborde" height="385">
<tr>
<td>

<table align="center" class="tablasinborde" width="192">
<tr>
<td class="tdresaltar">NIVEL</td>
<td class="tdresaltar" width="151">EXP PARA SIGUIENTE NIVEL</td>
</tr>
<tr class='colorcolumna1'><td class="td2"><b>1</b></td>
<td class="td2" width="150">30</td>
</tr>
<tr class='colorcolumna2'><td class="td2"><b>2</b></td>
<td class="td2" width="150">42</td>
</tr>
<tr class='colorcolumna1'><td class="td2"><b>3</b></td>
<td class="td2" width="150">60</td>
</tr>
<tr class='colorcolumna2'><td class="td2"><b>4</b></td>
<td class="td2" width="150">80</td>
</tr>
<tr class='colorcolumna1'><td class="td2"><b>5</b></td>
<td class="td2" width="150">110</td>
</tr>
<tr class='colorcolumna2'><td class="td2"><b>6</b></td>
<td class="td2" width="150">160</td>
</tr>
<tr class='colorcolumna1'><td class="td2"><b>7</b></td>
<td class="td2" width="150">220</td>
</tr>
<tr class='colorcolumna2'><td class="td2"><b>8</b></td>
<td class="td2" width="150">310</td>
</tr>
<tr class='colorcolumna1'><td class="td2"><b>9</b></td>
<td class="td2" width="150">450</td>
</tr>
<tr class='colorcolumna2'><td class="td2"><b>10</b></td>
<td class="td2" width="150">620</td>
</tr>
<tr class='colorcolumna1'><td class="td2"><b>11</b></td>
<td class="td2" width="150">870</td>
</tr>
<tr class='colorcolumna2'><td class="td2"><b>12</b></td>
<td class="td2" width="150">1200</td>
</tr>
<tr class='colorcolumna1'><td class="td2"><b>13</b></td>
<td class="td2" width="150">1700</td>
</tr>
<tr class='colorcolumna2'><td class="td2"><b>14</b></td>
<td class="td2" width="150">2380</td>
</tr>
<tr class='colorcolumna1'><td class="td2"><b>15</b></td>
<td class="td2" width="150">3200</td>
</tr>
<tr class='colorcolumna2'><td class="td2"><b>16</b></td>
<td class="td2" width="150">4300</td>
</tr>
<tr class='colorcolumna1'><td class="td2"><b>17</b></td>
<td class="td2" width="150">5800</td>
</tr>
<tr class='colorcolumna2'><td class="td2"><b>18</b></td>
<td class="td2" width="150">8000</td>
</tr>
<tr class='colorcolumna1'><td class="td2"><b>19</b></td>
<td class="td2" width="150">10000</td>
</tr>
<tr class='colorcolumna2'><td class="td2"><b>20</b></td>
<td class="td2" width="150">14500</td>
</tr>
<tr class='colorcolumna1'><td class="td2"><b>21</b></td>
<td class="td2" width="150">18000</td>
</tr>
<tr class='colorcolumna2'><td class="td2"><b>22</b></td>
<td class="td2" width="150">22500</td>
</tr>
<tr class='colorcolumna1'><td class="td2"><b>23</b></td>
<td class="td2" width="150">28000</td>
</tr>
<tr class='colorcolumna2'><td class="td2"><b>24</b></td>
<td class="td2" width="150">35000</td>
</tr>
<tr class='colorcolumna1'><td class="td2"><b>25</b></td>
<td class="td2" width="150">44000</td>
</tr>
</table>


</td>
<td width="1%"></td>
<td>


<table align="center" class="tablasinborde" width="208">
<tr>
<td class="tdresaltar">NIVEL</td>
<td class="tdresaltar">EXP PARA SIGUIENTE NIVEL</td>
</tr>
<tr class='colorcolumna2'><td class="td2"><b>26</b></td>
<td class="td2">55000</td>
</tr>
<tr class='colorcolumna1'><td class="td2"><b>27</b></td>
<td class="td2">68000</td>
</tr>
<tr class='colorcolumna2'><td class="td2"><b>28</b></td>
<td class="td2">85000</td>
</tr>
<tr class='colorcolumna1'><td class="td2"><b>29</b></td>
<td class="td2">100000</td>
</tr>
<tr class='colorcolumna2'><td class="td2"><b>30</b></td>
<td class="td2">130000</td>
</tr>
<tr class='colorcolumna1'><td class="td2"><b>31</b></td>
<td class="td2">160000</td>
</tr>
<tr class='colorcolumna2'><td class="td2"><b>32</b></td>
<td class="td2">210000</td>
</tr>
<tr class='colorcolumna1'><td class="td2"><b>33</b></td>
<td class="td2">260000</td>
</tr>
<tr class='colorcolumna2'><td class="td2"><b>34</b></td>
<td class="td2">338000</td>
</tr>
<tr class='colorcolumna1'><td class="td2"><b>35</b></td>
<td class="td2">450000</td>
</tr>
<tr class='colorcolumna2'><td class="td2"><b>36</b></td>
<td class="td2">650000</td>
</tr>
<tr class='colorcolumna1'><td class="td2"><b>37</b></td>
<td class="td2">850000</td>
</tr>
<tr class='colorcolumna2'><td class="td2"><b>38</b></td>
<td class="td2">1000000</td>
</tr>
<tr class='colorcolumna1'><td class="td2"><b>39</b></td>
<td class="td2">1500000</td>
</tr>
<tr class='colorcolumna2'><td class="td2"><b>40</b></td>
<td class="td2">2500000</td>
</tr>
<tr class='colorcolumna1'><td class="td2"><b>41</b></td>
<td class="td2">3000000</td>
</tr>
<tr class='colorcolumna2'><td class="td2"><b>42</b></td>
<td class="td2">4550000</td>
</tr>
<tr class='colorcolumna1'><td class="td2"><b>43</b></td>
<td class="td2">7300000</td>
</tr>
<tr class='colorcolumna2'><td class="td2"><b>44</b></td>
<td class="td2">11700000</td>
</tr>
<tr class='colorcolumna1'><td class="td2"><b>45</b></td>
<td class="td2">18000000</td>
</tr>
<tr class='colorcolumna2'><td class="td2"><b>46</b></td>
<td class="td2">29900000</td>
</tr>
<tr class='colorcolumna1'><td class="td2"><b>47</b></td>
<td class="td2">48000000</td>
</tr>
<tr class='colorcolumna2'><td class="td2"><b>48</b></td>
<td class="td2">66000000</td>
</tr>
<tr class='colorcolumna1'><td class="td2"><b>49</b></td>
<td class="td2">92200000</td>
</tr>
<tr class='colorcolumna2'><td class="td2"><b>50</b></td>
<td class="td2">110000000</td>
</tr>
</table>

</td>
<td width="1%"></td>
<td>

<table align="center" class="tablasinborde" width="208">
<tr>
<td class="tdresaltar">NIVEL</td>
<td class="tdresaltar">EXP PARA SIGUIENTE NIVEL</td>
</tr>
<tr class='colorcolumna2'><td class="td2"><b>51</b></td>
<td class="td2">135000000</td>
</tr>
<tr class='colorcolumna1'><td class="td2"><b>52</b></td>
<td class="td2">150000000</td>
</tr>
<tr class='colorcolumna2'><td class="td2"><b>53</b></td>
<td class="td2">175000000</td>
</tr>
<tr class='colorcolumna1'><td class="td2"><b>54</b></td>
<td class="td2">200000000</td>
</tr>
<tr class='colorcolumna1'><td class="td2"><b>55</b></td>
<td class="td2">225000000</td>
</tr>
<tr class='colorcolumna1'><td class="td2"><b>56</b></td>
<td class="td2">310000000</td>
</tr>
<tr class='colorcolumna1'><td class="td2"><b>57</b></td>
<td class="td2">350000000</td>
</tr>
<tr class='colorcolumna1'><td class="td2"><b>58</b></td>
<td class="td2">400000000</td>
</tr>
<tr class='colorcolumna1'><td class="td2"><b>59</b></td>
<td class="td2">500000000</td>
</tr>
<tr class='colorcolumna1'><td class="td2"><b>60</b></td>
<td class="td2">990000000</td>
</tr>
</table>

</td>
</tr>
</table>



<br><br><hr noshade width="40%" size="1" color="#959595" align="center"><br><br>




La pr�xima tabla indica cuantos puntos de habilidad podes alcanzar en cada nivel subiendo naturalmente las habilidades, es decir sin asignar manualmente.

<br><br>


<table align="center" width="45%" class="tablasinborde">
<tr>
<td>

<table align="center" class="tablasinborde">
<tr>
<td class="tdresaltar">NIVEL</td>
<td class="tdresaltar">PUNTOS DE HABILIDAD NATURALES MAX.</td>
</tr>
<tr class='colorcolumna1'><td class="td2"><b>1</b></td>
<td class="td2">3</td>
</tr>
<tr class='colorcolumna2'><td class="td2"><b>2</b></td>
<td class="td2">5</td>
</tr>
<tr class='colorcolumna1'><td class="td2"><b>3</b></td>
<td class="td2">7</td>
</tr>
<tr class='colorcolumna2'><td class="td2"><b>4</b></td>
<td class="td2">10</td>
</tr>
<tr class='colorcolumna1'><td class="td2"><b>5</b></td>
<td class="td2">13</td>
</tr>
<tr class='colorcolumna2'><td class="td2"><b>6</b></td>
<td class="td2">15</td>
</tr>
<tr class='colorcolumna1'><td class="td2"><b>7</b></td>
<td class="td2">17</td>
</tr>
<tr class='colorcolumna2'><td class="td2"><b>8</b></td>
<td class="td2">20</td>
</tr>
<tr class='colorcolumna1'><td class="td2"><b>9</b></td>
<td class="td2">23</td>
</tr>
<tr class='colorcolumna2'><td class="td2"><b>10</b></td>
<td class="td2">25</td>
</tr>
<tr class='colorcolumna1'><td class="td2"><b>11</b></td>
<td class="td2">27</td>
</tr>
<tr class='colorcolumna2'><td class="td2"><b>12</b></td>
<td class="td2">30</td>
</tr>
<tr class='colorcolumna1'><td class="td2"><b>13</b></td>
<td class="td2">33</td>
</tr>
<tr class='colorcolumna2'><td class="td2"><b>14</b></td>
<td class="td2">35</td>
</tr>
<tr class='colorcolumna1'><td class="td2"><b>15</b></td>
<td class="td2">37</td>
</tr>
<tr class='colorcolumna2'><td class="td2"><b>16</b></td>
<td class="td2">40</td>
</tr>
<tr class='colorcolumna1'><td class="td2"><b>17</b></td>
<td class="td2">43</td>
</tr>
<tr class='colorcolumna2'><td class="td2"><b>18</b></td>
<td class="td2">45</td>
</tr>
<tr class='colorcolumna1'><td class="td2"><b>19</b></td>
<td class="td2">47</td>
</tr>
<tr class='colorcolumna2'><td class="td2"><b>20</b></td>
<td class="td2">50</td>
</tr>
</table>


</td>
<td width="2%"></td>
<td>


<table align="center" class="tablasinborde">
<tr>
<td class="tdresaltar">NIVEL</td>
<td class="tdresaltar">PUNTOS DE HABILIDAD NATURALES MAX.</td>
</tr>
<tr class='colorcolumna1'><td class="td2"><b>21</b></td>
<td class="td2">53</td>
</tr>
<tr class='colorcolumna2'><td class="td2"><b>22</b></td>
<td class="td2">55</td>
</tr>
<tr class='colorcolumna1'><td class="td2"><b>23</b></td>
<td class="td2">57</td>
</tr>
<tr class='colorcolumna2'><td class="td2"><b>24</b></td>
<td class="td2">60</td>
</tr>
<tr class='colorcolumna1'><td class="td2"><b>25</b></td>
<td class="td2">63</td>
</tr>
<tr class='colorcolumna2'><td class="td2"><b>26</b></td>
<td class="td2">65</td>
</tr>
<tr class='colorcolumna1'><td class="td2"><b>27</b></td>
<td class="td2">67</td>
</tr>
<tr class='colorcolumna2'><td class="td2"><b>28</b></td>
<td class="td2">70</td>
</tr>
<tr class='colorcolumna1'><td class="td2"><b>29</b></td>
<td class="td2">73</td>
</tr>
<tr class='colorcolumna2'><td class="td2"><b>30</b></td>
<td class="td2">75</td>
</tr>
<tr class='colorcolumna1'><td class="td2"><b>31</b></td>
<td class="td2">77</td>
</tr>
<tr class='colorcolumna2'><td class="td2"><b>32</b></td>
<td class="td2">80</td>
</tr>
<tr class='colorcolumna1'><td class="td2"><b>33</b></td>
<td class="td2">83</td>
</tr>
<tr class='colorcolumna2'><td class="td2"><b>34</b></td>
<td class="td2">85</td>
</tr>
<tr class='colorcolumna1'><td class="td2"><b>35</b></td>
<td class="td2">87</td>
</tr>
<tr class='colorcolumna2'><td class="td2"><b>36</b></td>
<td class="td2">90</td>
</tr>
<tr class='colorcolumna1'><td class="td2"><b>37</b></td>
<td class="td2">93</td>
</tr>
<tr class='colorcolumna2'><td class="td2"><b>38</b></td>
<td class="td2">95</td>
</tr>
<tr class='colorcolumna1'><td class="td2"><b>39</b></td>
<td class="td2">97</td>
</tr>
<tr class='colorcolumna2'><td class="td2"><b>40</b></td>
<td class="td2">100</td>
</tr>
</table>


</td>
</tr>
</table>


<br>

<table id="menuinfoespecial" align="center" width="70%">
<tr>
<td align="center" valign="middle" style="background:url(imagenes/manual/menuinfo_fondo_arrow.gif);"><img src="imagenes/manual/menuinfo_arrow.gif"> <font color="#F0F0F0"><b>Importante</b></font> <img src="imagenes/manual/menuinfo_arrow.gif"></td>
</tr>
<tr>
<td align="left" valign="top" style="background:url(imagenes/manual/menuinfo_fondo.gif) bottom repeat-x;padding-left:3px;">

<img src="imagenes/manual/menuinfo_flechita.gif"> Combiene guardar los puntos de habilidad ganados al subir de nivel y asignarlos cuando el personaje sea nivel medianamente alto (aprox. nivel 
34).
<table><tr><td height="3"></td></tr></table>
<img src="imagenes/manual/menuinfo_flechita.gif"> Si ten�s la barra de hambre o sed vac�a no podr�s entrenar ninguna habilidad.

</td>
</tr>
</table>



<br><br><hr noshade width="40%" size="1" color="#959595" align="center"><br><br>


Ac� te explica la probabilidad de subir un punto de habilidad de forma natural o mejor dicho entrenando.

<br><br>

<table align="center" width="35%" class="tablasinborde">
<tr>
<td class="tdresaltar" width="10%">NIVEL</td>
<td class="tdresaltar" width="25%">PROBABILIDAD DE SUBIR HABILIDAD ENTRENANDO</td>
</tr>
<tr class='colorcolumna1'><td class="td2">1 a 3</td>
<td class="td2">Ninguna</td>
</tr>
<tr class='colorcolumna2'><td class="td2">4 a 10</td>
<td class="td2">La peor</td>
</tr>
<tr class='colorcolumna1'><td class="td2">11 a 20</td>
<td class="td2">Mala</td>
</tr>
<tr class='colorcolumna2'><td class="td2">21 a 30</td>
<td class="td2">Buena</td>
</tr>
<tr class='colorcolumna1'><td class="td2">mayor a 31</td>
<td class="td2">La mejor</td>
</tr>
</table>
<br>
<br>
<center><a href="comandos.php#ver">Anterior</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href="mapa.php#ver"> Siguiente</a></center>
</td></tr></table><br><br><table class="titulo_seccion"><tr><td>---</td></tr></table><table class="volver_indice"><tr valign="middle"><td align="left">&nbsp;<a href="index.php">&lt;&lt;Ir al �ndice del Manual</a></td><td align="right">&nbsp;</td></tr></table>
</body>

<meta http-equiv="content-type" content="text/php;charset=ISO-8859-1">
</php>
