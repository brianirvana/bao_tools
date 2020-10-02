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
<table class="titulo_seccion"><tr><td><a name="ver"></a>- Legión Oscura -</td></tr></table><br><table width="98%" align="center"><tr><td><br><br>
<span class="resaltarcmd"><center><font size="2"><u>Historia</u></font></center></span></u><br><br>
<span class="size">Los comienzos de la Legión Oscura son confusos para muchos de los habitantes de las Tierras de Bender. Esto se debe a que hace ya muchos años, Lord Kaiden (Antiguo rey de la ciudad de Turgón) contaba con una importante cantidad de fieles, los cuales sembraban terror y miedo entre las distintas ciudades del Imperio. Muchos dirán que fueron estos los que iniciaron lo que hoy conocemos como Legión Oscura.
Resulta que al mismo tiempo, el antiguo Rey de la ciudad de Murus, "Shynabus", traicionó a las otras ciudades. Seguido por un importante ejército busco hacerse del control de las Tierras de Bender. Nadie sabe realmente qué fue lo que pasó pero de alguna manera fue este Rey, y no el Lord Kaiden, el cual sembró el verdadero terror que hoy caracteriza a los miembros de la Legión Oscura.

Luego de muchas batallas y guerras, Shynabus es derrotado. El poder cae en manos de sus dos hijos, Lanathar y Theiren. Las historias cuentan que este último traicionó a su hermano y se apoderó de la facción. Años más tarde iba a morir, una muerte natural. Finalmente, fue El Demonio quien se hizo del poder de esta temible facción, que hoy sigue plantando el Caos en estás tierras y planea destruir al Rey de Angrod quien le impide apoderarse de Bender.</span><br><br>
<table id="menuinfoespecial" align="center" width="50%">
<tr>
<td align="center" valign="middle" style="background:url(imagenes/manual/menuinfo_fondo_arrow.gif);"><img src="imagenes/manual/menuinfo_arrow.gif"></td>
</tr>
<tr>
<td align="left" valign="top" style="background:url(imagenes/manual/menuinfo_fondo.gif) bottom repeat-x;padding-left:3px;">

<CENTER><b><FONT COLOR="#FF3333">REQUISITOS PARA INGRESAR A LA LEGIÓN OSCURA:</FONT></b></CENTER><br>
<img src="imagenes/manual/menuinfo_flechita.gif"> Nivel 25 o superior.<br>
<img src="imagenes/manual/menuinfo_flechita.gif"> Estado criminal, es decir, ser un criminal.<br>
<img src="imagenes/manual/menuinfo_flechita.gif"> 300 o más puntos de muertes. (Éstos puntos se suman al matar ciudadanos. Si tu víctima es de nivel 25, te da 25 puntos y así vas acumulando.)<br>
<img src="imagenes/manual/menuinfo_flechita.gif"> No haber pertenecido NUNCA a la Armada Real.<br>
<img src="imagenes/manual/menuinfo_flechita.gif"> No ser fundador de un clan neutro<br>
<img src="imagenes/manual/menuinfo_flechita.gif"> 10.000 puntos de asesino o más.<br><img src="imagenes/manual/menuinfo_flechita.gif"> Tambien puedes enlistarte a lvl 20 con la quest.
</td>
</tr>
</table>

<br>
<br><br>
<span class="resaltarcmd"><center><font size="2"><u>Ingreso</u></font></center></span></u><br><br>
<span class="size">
La Legion Oscura es la facción opuesta a la Armada Real. Encabezada por El Demonio, se encuentra formada por todas las personas que buscan esparcir el mal por las Tierras de Bender. Vagando por el mundo, y matando a todo aquél que no haya jurado fidelidad al Demonio, robando a sus víctimas, y cometiendo atrocidades... así es como los miembros de esta facción viven su vida. <br><br>

El Demonio le dará la oportunidad de enlistarse en sus filas si cumple con los requisitos nombados anteriormente. Para esto, hay que dirigirse a la ciudad de Murus, cara a cara con el Demonio, hacerle click y luego tipear /ENLISTAR.<br><br>
<div align="center">
<img width="90px" height="190px" src="imagenes/juego/CaosEnlistar.JPG" alt=""><br><br>
</div>
Lord Azimuth lo irá recompensando en la medida en que demuestre fidelidad a él matando ciudadanos, a la vez que ponga en manifiesto su habilidad en el campo de batalla. Así, alcanzando nuevas distinciones, puede ir subiendo a las distintas jerarquías.<br><br>
<b><u>Atención:</u></b><br>
-Solo podes re-enlistarte hasta 4 veces, luego de pasar las 4 nunca más podrás volver a enlistarte.<br>
-Si te desenlistas y matas un miembro de la Legión Oscura nunca más podrás volver a enlistarte.<br>
<br><br><br>

<span class="resaltarcmd"><center><font size="2"><u>Jerarquías</u></font></center></span></u><br><br>
<table align="center" width="100%">

<tr>
	<td class="tdresaltar2" height="30">RANGO</td>
	<td class="tdresaltar2">JERARQUÍA</td>
	<td class="tdresaltar2">REQUISITOS</td>
	<td class="tdresaltar2">RECOMPENSA</td>
</tr>
<tr class='colorcolumna2'><td class="td3" height="30">0°</td>
<td class="td3">Novato <br>(<i>Ingreso Con quest.</i>)</td>	
<td class="td3">0 o más puntos de muertes de ciudadanos matados.<br><br>	
Nivel 20 o superior<br><br>	<font color="#FF0000">5000 puntos de Asesino.</font></td>	
<td class="td3">15.000 puntos de experiencia.<br></tr>



<tr class='colorcolumna1'><td class="td3" height="30">1°</td>
	<td class="td3">Acólito <br>(<i>Ingreso a la Legión Oscura</i>)</td>
	<td class="td3">300 o más puntos de muertes de ciudadanos matados.<br><br>
	Nivel 25 o superior<br><br>
	<font color="#FF0000">10.000 puntos de Asesino.</font></td>
	<td class="td3">10.000 puntos de experiencia.<br>
</tr>

<tr class='colorcolumna2'><td class="td3" height="30">2°</td>
	<td class="td3">Alma Corrupta <br></td>
	<td class="td3">600 o más puntos de muertes de ciudadanos matados.<br><br>
	Nivel 27 o superior<br><br>
	<font color="#FF0000">15.000 puntos de Asesino.</font></td>
	<td class="td3">20.000 puntos de experiencia.<br>
</tr>

<tr class='colorcolumna1'><td class="td3" height="30">3°</td>
	<td class="td3">Paria<br></td>
	<td class="td3">1000 o más puntos de muertes de ciudadanos matados.<br><br>
	Nivel 29 o superior<br><br>
	<font color="#FF0000">18.000 puntos de Asesino.</font></td>
	<td class="td3">30.000 puntos de experiencia.<br>
</tr>

<tr class='colorcolumna2'><td class="td3" height="30">4°</td>
	<td class="td3">Condenado<br></td>
	<td class="td3">1500 o más puntos de muertes de ciudadanos matados.<br><br>
	Nivel 30 o superior<br><br>
	<font color="#FF0000">20.000 puntos de Asesino.</font></td>
	<td class="td3">40.000 puntos de experiencia.<br>
</tr>

<tr class='colorcolumna1'><td class="td3" height="30">5°</td>
	<td class="td3">Esbirro<br></td>
	<td class="td3">2000 o más puntos de muertes de ciudadanos matados.<br><br>
	Nivel 32 o superior<br><br>
	<font color="#FF0000">25.000 puntos de Asesino.</font></td>
	<td class="td3">50.000 puntos de experiencia.<br>
</tr>

<tr class='colorcolumna2'><td class="td3" height="30">6°</td>
	<td class="td3">Sanguinario<br></td>
	<td class="td3">2500 o más puntos de muertes de ciudadanos matados.<br><br>
	Nivel 35 o superior<br><br>
	<font color="#FF0000">50.000 puntos de Asesino.</font></td>
	<td class="td3">50.000 puntos de experiencia.<br>
</tr>

<tr class='colorcolumna1'><td class="td3" height="30">7°</td>
	<td class="td3">Corruptor<br></td>
	<td class="td3">3000 o más puntos de muertes de ciudadanos matados.<br><br>
	Nivel 36 o superior<br><br>
	<font color="#FF0000">80.000 puntos de Asesino.</font></td>
	<td class="td3">60.000 puntos de experiencia.<br>
</tr>

<tr class='colorcolumna2'><td class="td3" height="30">8°</td>
	<td class="td3">Heraldo Impío<br></td>
	<td class="td3">3500 o más puntos de muertes de ciudadanos matados.<br><br>
	Nivel 37 o superior<br><br>
	<font color="#FF0000">80.000 puntos de Asesino.</font></td>
	<td class="td3">70.000 puntos de experiencia.<br>
</tr>

<tr class='colorcolumna1'><td class="td3" height="30">9°</td>
	<td class="td3">Caballero de la Oscuridad<br></td>
	<td class="td3">4000 o más puntos de muertes de ciudadanos matados.<br><br>
	Nivel 38 o superior<br><br>
	<font color="#FF0000">150.000 puntos de Asesino.</font></td>
	<td class="td3">80.000 puntos de experiencia.<br>
</tr>

<tr class='colorcolumna2'><td class="td3" height="30">10°</td>
	<td class="td3">Señor de las tinieblas<br></td>
	<td class="td3">5000 o más puntos de muertes de ciudadanos matados.<br><br>
	Nivel 39 o superior<br><br>
	<font color="#FF0000">200.000 puntos de Asesino.</font></td>
	<td class="td3">90.000 puntos de experiencia.<br>
</tr>

<tr class='colorcolumna1'><td class="td3" height="30">11°</td>
	<td class="td3">Ejecutor Infernal<br></td>
	<td class="td3">6000 o más puntos de muertes de ciudadanos matados.<br><br>
	Nivel 40 o superior<br><br>
	<font color="#FF0000">250.000 puntos de Asesino.</font></td>
	<td class="td3">100.000 puntos de experiencia.<br>
</tr>

<tr class='colorcolumna2'><td class="td3" height="30">12°</td>
	<td class="td3">Protector del Averno<br></td>
	<td class="td3">7500 o más puntos de muertes de ciudadanos matados.<br><br>
	Nivel 41 o superior<br><br>
	<font color="#FF0000">280.000 puntos de Asesino.</font></td>
	<td class="td3">110.000 puntos de experiencia.<br>
</tr>

<tr class='colorcolumna1'><td class="td3" height="30">13°</td>
	<td class="td3">Avatar de la Destrucción<br></td>
	<td class="td3">10.000 o más puntos de muertes de ciudadanos matados.<br><br>
	Nivel 42 o superior<br><br>
	<font color="#FF0000">300.000 puntos de Asesino.</font></td>
	<td class="td3">120.000 puntos de experiencia y poder atacar ciudadanos en la ciudad de Murus.<br>
</tr>

<tr class='colorcolumna1'><td class="td3" height="30">14°</td>
	<td class="td3">Guardián del Mal<br></td>
	<td class="td3">15.000 o más puntos de muertes de ciudadanos matados.<br><br>
	Nivel 43 o superior<br><br>
	<font color="#FF0000">350.000 puntos de Asesino.</font></td>
	<td class="td3">130.000 puntos de experiencia y poder atacar ciudadanos en la ciudad de Murus.<br>
</tr>

<tr class='colorcolumna1'><td class="td3" height="30">15°</td>
	<td class="td3">Campeón de la Oscuridad<br></td>
	<td class="td3">25.000 o más puntos de muertes de ciudadanos matados.<br><br>
	Nivel 43 o superior<br><br>
	<font color="#FF0000">500.000 puntos de Asesino.</font></td>
	<td class="td3">140.000 puntos de experiencia y poder atacar ciudadanos en la ciudad de Murus y candidato especial a la armadura de segunda jerarquía. (Si no tiene penas)<br>
</tr>


</table><br><br>
<span class="resaltarcmd"><center><font size="2"><u>Retiro de la facción</u></font></center></span><br><br>
<span class="size">Una vez que ingresó a la Legión Oscura, la única forma de abandonarla por sus propios medios es llendo a donde se encuentra el Demonio (Mapa 78, ciudad de Murus), clikearlo y tipear /RETIRAR.<br><br>

También existe la posibilidad de ser amonestado en reiteradas ocasiones y ser expulsado de la facción.
Existe un organismo que cumple la función de regular y controlar a los integrantes que componen a la Legión Oscura.Tal organización es el "Concilio de Murus", con la facultad de amonestar a quienes no son dignos de portar la sangre roja, logrando en el peor de los casos ser expulsados de la facción.</span><br/><br/>
<br><br>

<span class="resaltarcmd"><center><font size="2"><u>Manual de comportamiento</u></font></center></span><br><br>
<span class="size">
<center>
<br>
Un Legionario debe cumplir las normas que el reglamento impone. Se espera que el mismo sea un ejemplo para el resto de los Legionarios, resaltando su respeto ante los demás, valor en batalla y buena predisposición. Cualquier Legionario que no rija su comportamiento por estas simples reglas, pone en riesgo su permanencia en la facción. Un Legionario tiene que destacar el respeto hacia los demás ante todo y apego al reglamento, tanto en acatarlo, como en tomar solo las medidas correctas contra quines no lo hagan. Teniendo en cuenta eso, un Legionario deberá instaurar el Caos por donde ronde, solamente de una manera Rolera y que no sea de manera estúpida y denigrante. Éste manual es una guía sobre el comportamiento del Legionario, contiene las líneas básicas a seguir por cualquier miembro de ésta facción.<br><br>
<br>
Al enlistarse bajo las ordenes del Demonio, se deben respetar las normas impuestas para procurar un comportamiento adecuado a la facción. Un Legionario debe ser leal para con sus compañeros, estar al tanto del Reglamento y de las novedades informadas por el Concilio de las Sombras. La desobediencia de estas normas básicas, ponen en riesgo su continuidad en la facción. A partir de esto, se elabora este manual, con la intención de formar una Legión libre de malentendidos y de impecable comportamiento
<br>
- Siempre deberá dirigirse con respeto hacia todas las personas sin importar su status o facción.
<br>
<br>
<u>Comportamiento de un miembro de la Legión Oscura ante soldados reales y ciudadanos:</u>
<br>
<br>
- Un Legionario debe, ante todo, desatar su ira y derramar la sangre de todos los Ciudadanos y Miembros del Ejército Real que se crucen por su camino.
<br>
- Si se incumple con lo anterior se denunciara ante el Concilio de las Sombras, donde se determinará la continuidad de dicho personaje dentro de la Legión.
<br>
<br>
<u>Comportamiento de un miembro de la Legión Oscura ante un compañero de facción:</u>
<br>
<br>
- Un Legionario debe ser fiel y servicial para con sus compañeros, ayudando dentro de sus posibilidades y uniendo fuerzas para sembrar el terror. El trato entre los mismos debe basarse en el respeto, la cordialidad y la ayuda mutua, y bajo ningún aspecto se toleraran actos deshonestos o perjudiciales para con sus propios compañeros. Estos comportamientos también son causantes de posibles expulsiones y/o advertencias.
<br>
- Estará totalmente prohibida la suma fraudulenta de frags. Es decir, cuando un personaje que desea hacerse legionario o ascender de jerarquía utiliza a otro que se deja asesinar para aumentar el número de ciudadanos matados.
De ser comprobado esto, se procederá a reducir los ciudadanos matados a 100 y podrá ser expulsado de la facción. En caso de que no sea integrante de la Legión se aplicará una restricción para ingresar posteriormente.
<br>
<br>
<u>Comportamiento frente a situaciones:</u>
<br>
<br>
- Al encontrar un personaje con el status NEWBIE ciudadano se lo debe atacar, caso contrario será tomado como antifacción. En el caso que el Newbie sea criminal se puede optar por atacarlo o dejarlo en paz.
<br>
- Al salir a entrenar o buscar pelea con un criminal, si se encontrasen con un personaje o grupo de legionarios, siempre deberá prestar ayuda a la parte legionaria o alejarse de la batalla. No podrá quedarse observando la batalla ni mucho menos ayudar a criminales que estén peleando contra legionarios. Tampoco podrá resucitar criminales para que vuelvan al combate.
<br>
<br>
<u>Postura con respecto a los duelos:</u>
<br>
<br>
- Un Legionario puede retar a duelo a otro jugador, sea de status Ciudadano, miembro del Ejército Real o Criminal. Este duelo debe ser pactado en zona segura (ciudades) y llevado a cabo inmediatamente al salir a zona insegura. Hay casos en que un Legionario puede preguntar sobre la aceptación de un duelo a un Ciudadano o Armada Real en un encuentro casual, pero de no obtener respuesta inmediata, debe atacar al instante.
<br>
- Un legionario no puede ver duelos donde estén implicados ciudadanos, armadas u otros legionarios. Al encontrar un legionario dueleando debe ayudarlo a matar a su contrincante a menos que le pida que no interfiera en el duelo. Deberá respetarse su petición y retirarse del rango de la pelea.
<br>
-*Estará prohibida la utilización de personajes de status Armada/Ciudadano/Criminal para “limpiar” mapas de entrenamiento y/o de trabajo. Se entiende por “limpiar” el hecho de utilizar personajes Armada/Ciudadano/Criminal para matar a otros usuarios de un mapa y luego poder entrenar, trabajar o sacar algún benefício en aquel mapa con otro personaje de estatus legionario.
<br>
*Dicho accionar debe ser comprobado por un GM y la pena será la de advertencia faccionaria quedando sujeta, según la gravedad del hecho, a la posible expulsión si la Cúpula lo cree pertinente.A modo aclaratorio, no estará penado el hecho de utilizar personajes Armada/Ciudadano/Criminal por parte de un miembro de la Legión Oscura, siempre y cuando estos no sean utilizados para sacar una ventaja en favor del personaje faccionario.
<br>
Atentamente,
Concilio de las Sombras.
</center>
<center><a href="armada.php#ver">Anterior</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href="staff.php#ver"> Siguiente</a></center>
<br><br><table class="titulo_seccion"><tr><td>---</td></tr></table><table class="volver_indice"><tr valign="middle"><td align="left">&nbsp;<a href="index.php">&lt;&lt;Ir al Índice del Manual</a></td><td align="right">&nbsp;</td></tr></table>

</td>
</tr>
</table>
</body>
