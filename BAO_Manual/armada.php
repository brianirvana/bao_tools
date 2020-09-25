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
<table class="titulo_seccion"><tr><td><a name="ver"></a>- Armada Real -</td></tr></table><br><table width="98%" align="center"><tr><td><br><br>
<u><span class="resaltarcmd"><center><font size="2">Historia</font></center></span></u><br><br>
<span class="size">La Armada Real se formó hace largos años atrás cuando el dominio del mal, con capital central en Murus, se volvió en contra de todas las demás ciudades del Imperio, traicionándolas en busca de obtener el control total de las tierras. Esta acción provocó la Alianza de los Reyes, una gran hazaña humana que unió las distintas ciudades del mundo, creando un ejército formidable y temible. 
 Fue en este contexto histórico en donde se forjó la creación de la gloriosa Armada Real.
Si bien su creación dista mucho del momento actual, sus soldados no han cesado nunca de luchar contra la hordas del caos, protegiendo a los más débiles e indefensos, buscando por sobre todas las cosas el bien y la paz de las Tierras.
¿Crees ser digno de llevar el estandarte de esta Armada en tus vestimentas?</span><br><br>
<br>
<u><span class="resaltarcmd"><center><font size="2">Ingreso</font></center></span></u><br><br><span class="size">
<table id="menuinfoespecial" align="center" width="50%">
<tr>
<td align="center" valign="middle" style="background:url(imagenes/manual/menuinfo_fondo_arrow.gif);"><img src="imagenes/manual/menuinfo_arrow.gif"></td>
</tr>
<tr>
<td align="left" valign="top" style="background:url(imagenes/manual/menuinfo_fondo.gif) bottom repeat-x;padding-left:3px;">

<CENTER><b>REQUISITOS PARA INGRESAR A LA ARMADA REAL:</b></CENTER>
<img src="imagenes/manual/menuinfo_flechita.gif"> Nivel 25 o superior.<br>
<img src="imagenes/manual/menuinfo_flechita.gif"> 300 o más puntos de muertes de criminales. (Éstos puntos se suman al matar criminales. Si tu víctima es de nivel 25, te da 25 puntos y así vas acumulando.)<br>
<img src="imagenes/manual/menuinfo_flechita.gif"> Nunca haber matado a DOS o más ciudadanos. (Sólo es posible enlistarse con 1 ciudadano matado, de lo contrario, deberá llenar esta planilla: <a href="http://bender-online.com.ar/forum/showthread.php?tid=4384">PLANILLA DE PERDON OFICIAL</a> y una vez completada postearla en el siguiente lugar: <a href="http://bender-online.com.ar/forum/forumdisplay.php?fid=312">SUBFORO "EJERCITO REAL"</a>).<br>
<img src="imagenes/manual/menuinfo_flechita.gif"> 75.000 de puntos en nobleza.<br>
<img src="imagenes/manual/menuinfo_flechita.gif"> No ser fundador de un clan neutro.<br>
<img src="imagenes/manual/menuinfo_flechita.gif"> Tambien se puede acceder a la armada por medio de una quest.
</tr>
</table>
<br><br>

La Armada Real está formada por todas las personas que desean luchar contra el mal que pesa sobre estas tierras. Si usted desea ingresar y cumple con los requisitos nombradrados anteriormente,
el Rey le dará la oportunidad de enlistarse en sus filas. Para esto, sólo hay que efectuar un click en el NPC rey que se encuentra en la ciudad de Angrod (Mapa 1, x: 280, y: 220) y luego tipear /ENLISTAR.<br><br>
<div align="center">
<img width="90px" height="190px" src="imagenes/juego/Enlistar.JPG" alt=""><br><br>
</div>
El Rey lo irá recompensando en la medida en que demuestre fidelidad a él matando criminales, a la vez que ponga en manifiesto su habilidad en el campo de batalla. Así, alcanzando nuevas distinciones, puede ir subiendo a las distintas jerarquías. Cada vez que tenga la cantidad de o más puntos de muertes de criminales matados para subir a una nueva jerarquía deberá acercarse al Rey, hacerle click y tipear /RECOMPENSA</span>




<br>


<br><b><u>Atención:</u></b><br>
-Solo podes re-enlistarte hasta 2 veces, luego de pasar las 2 nunca más podrás volver a enlistarte.<br>
-Si te desenlistas y matas un miembro de la Armada Real nunca más podrás volver a enlistarte.<br>
<br><br>

<span class="resaltarcmd"><center><font size="2"><u>Jerarquias</u></font></center></span><br><br>
<table align="center" width="100%">

<tr>
	<td class="tdresaltar2" height="30">RANGO</td>
	<td class="tdresaltar2">JERARQUÍA</td>
	<td class="tdresaltar2">REQUISITOS</td>
	<td class="tdresaltar2">RECOMPENSA</td>
</tr>

<tr class='colorcolumna2'><td class="td3" height="30">0°</td>
	<td class="td3">Novato <br>(<i>Ingreso a la Armada Real</i>)</td>
	<td class="td3">0 (Conseguis este rango gracias a una quest)<br><br>
	Nivel 20 o superior<br><br>
	<font color="#0000FF">50.000 puntos de Nobleza</font></td>
	<td class="td3">15.000 puntos de experiencia.<br>
</tr>

<tr class='colorcolumna1'><td class="td3" height="30">1°</td>
	<td class="td3">Aprendiz <br>(<i>Ingreso a la Armada Real</i>)</td>
	<td class="td3">300 o más puntos de muertes de criminales matados.<br><br>
	Nivel 25 o superior<br><br>
	<font color="#0000FF">75.000 puntos de Nobleza</font></td>
	<td class="td3">10.000 puntos de experiencia.<br>
</tr>

<tr class='colorcolumna2'><td class="td3" height="30">2°</td>
	<td class="td3">Escudero</td>
	<td class="td3">600 o más puntos de muertes de o más puntos de muertes de criminales matados<br><br>
	<font color="#0000FF">80.000 puntos de Nobleza</font><br><br>Nivel 27 o superior<br></td>
	<td class="td3">20.000 puntos de experiencia.</td>
</tr>

<tr class='colorcolumna1'><td class="td3" height="30">3°</td>
	<td class="td3">Soldado</td>
	<td class="td3">1000 o más puntos de muertes de criminales matados<br><br>
	<font color="#0000FF">90.000 puntos de Nobleza</font><br><br>Nivel 29 o superior<br></td>
	<td class="td3">30.000 puntos de experiencia.</td>
</tr>

<tr class='colorcolumna2'><td class="td3" height="30">4°</td>
	<td class="td3">Sargento</td>
	<td class="td3">1500 o más puntos de muertes de criminales matados<br><br>
	<font color="#0000FF">100.000 puntos de Nobleza</font><br><br>Nivel 30 o superior<br></td>
	<td class="td3">40.000 puntos de experiencia.</td>
</tr>

<tr class='colorcolumna1'><td class="td3" height="30">5°</td>
	<td class="td3">Caballero</td>
	<td class="td3">2000 o más puntos de muertes de criminales matados<br><br>
	<font color="#0000FF">120.000 puntos de Nobleza</font><br><br>Nivel 32 o superior<br></td>
	<td class="td3">50.000 puntos de experiencia.</td>
</tr>

<tr class='colorcolumna2'><td class="td3" height="30">6°</td>
	<td class="td3">Comandante</td>
	<td class="td3">2500 o más puntos de muertes de criminales matados<br><br>
	<font color="#0000FF">135.000 puntos de Nobleza</font><br><br>Nivel 34 o superior<br></td>
	<td class="td3">60.000 puntos de experiencia.</td>
</tr>

<tr class='colorcolumna1'><td class="td3" height="30">7°</td>
	<td class="td3">Capitán</td>
	<td class="td3">3000 o más puntos de muertes de criminales matados<br><br>
	<font color="#0000FF">150.000 puntos de Nobleza</font><br><br>Nivel 35 o superior<br></td>
	<td class="td3">70.000 puntos de experiencia.</td>
</tr>

<tr class='colorcolumna2'><td class="td3" height="30">8°</td>
	<td class="td3">Senescal</td>
	<td class="td3">3500 o más puntos de muertes de criminales matados<br><br>
	<font color="#0000FF">170.000 puntos de Nobleza</font><br><br>Nivel 36 o superior<br></td>
	<td class="td3">80.000 puntos de experiencia.</td>
</tr>

<tr class='colorcolumna1'><td class="td3" height="30">9°</td>
	<td class="td3">Mariscal</td>
	<td class="td3">4000 o más puntos de muertes de criminales matados<br><br>
	<font color="#0000FF">200.000puntos de Nobleza</font><br><br>Nivel 37 o superior<br></td>
	<td class="td3">90.000 puntos de experiencia.</td>
</tr>

<tr class='colorcolumna2'><td class="td3" height="30">10°</td>
	<td class="td3">Condestable</td>
	<td class="td3">5000 o más puntos de muertes de criminales matados<br><br>
	<font color="#0000FF">230.000 puntos de Nobleza</font><br><br>Nivel 38 o superior<br></td>
	<td class="td3">100.000 puntos de experiencia.</td>
</tr>

<tr class='colorcolumna1'><td class="td3" height="30">11°</td>
	<td class="td3">Ejecutor Imperial</td>
	<td class="td3">6000 o más puntos de muertes de criminales matados<br><br>
	<font color="#0000FF">250.000 puntos de Nobleza</font><br><br>Nivel 39 o superior<br></td>
	<td class="td3">110.000 puntos de experiencia.</td>
</tr>

<tr class='colorcolumna2'><td class="td3" height="30">12°</td>
	<td class="td3">Protector del Reino</td>
	<td class="td3">7500 o más puntos de muertes de criminales matados<br><br>
	<font color="#0000FF">300.000 puntos de Nobleza</font><br><br>Nivel 40 o superior<br></td>
	<td class="td3">120.000 puntos de experiencia.</td>
</tr>

<tr class='colorcolumna1'><td class="td3" height="30">13°</td>
	<td class="td3">Avatar de la Justicia</td>
	<td class="td3">10.000 o más puntos de muertes de criminales matados<br><br>
	<font color="#0000FF">400.000 puntos de Nobleza</font><br><br>Nivel 43 o superior<br></td>
	<td class="td3">130.000 puntos de experiencia.<br><br>
	Poder atacar Criminales en Angrod.</td>
</tr>

<tr class='colorcolumna1'><td class="td3" height="30">14°</td>
	<td class="td3">Guardián del Bien</td>
	<td class="td3">15.000 o más puntos de muertes de criminales matados<br><br>
	<font color="#0000FF">500.000 puntos de Nobleza</font><br><br>Nivel 44 o superior<br></td>
	<td class="td3">140.000 puntos de experiencia.<br><br>
	Poder atacar Criminales en Angrod.</td>
</tr>

<tr class='colorcolumna1'><td class="td3" height="30">15°</td>
	<td class="td3">Campeón de la Luz</td>
	<td class="td3">25.000 o más puntos de muertes de criminales matados<br><br>
	<font color="#0000FF">650.000 puntos de Nobleza</font><br><br>Nivel 45 o superior<br></td>
	<td class="td3">150.000 puntos de experiencia.<br><br>
	Poder atacar Criminales en Angrod y candidato especial a la armadura de segunda jerarquía. (Si no tiene penas)</td>
</tr>

</table><br><br>

<u><span class="resaltarcmd"><center><font size="2">Retiro de la facción</font></center></span></u><br><br>
<span class="size">Una vez que ingresó a la Armada Real, la única forma de abandonarla por sus propios medios es llendo a donde se encuentra el rey (Mapa 1, x: 280, y: 220) , ciudad de Angrod), clikearlo y tipear /RETIRAR.<br><br>

También existe la posibilidad de ser amonestado en reiteradas ocasiones y ser expulsado de la facción.
Existe un organismo que cumple la función de regular y controlar a los integrantes que componen a la Armada Real.Tal organización es el "Consejo de Angrod", con la facultad de amonestar a quienes no son dignos de portar la sangre azul, logrando en el peor de los casos ser expulsados de la facción.</span><br/><br/>

<u><span class="resaltarcmd"><center><font size="2">Manual de comportamiento</font></center></span></u><br><br>

</spam>

<spam>
<center>Manual de comportamiento 2020</center>
 <br>
 <br>
Manual de comportamiento del Ejército Real Un miembro del Ejército Real debe cumplir, como ningún otro, las normas que el reglamento impone. Se espera que el mismo sea un ejemplo para todo el resto de los jugadores, resaltando su respeto ante los demás y las autoridades, valor en batalla y buena predisposición. Cualquier miembro del Ejército que no rija su comportamiento por estas simples reglas, pone en riesgo su permanencia en la facción. Un Soldado tiene que destacar el respeto hacia los demás y apego al reglamento, tanto en acatarlo, como en tomar solo las medidas correctas contra quienes no lo hagan. Éste manual es una guía sobre el buen comportamiento del Soldado Real, contiene las líneas básicas a seguir por cualquier miembro de esta facción.
<br>
<br>
<u>Composición del Consejo de Angrod (nuevo):</u>
El consejo de Angrod será integrado por tres miembros temporales como máximo, con una duración de dos meses aproximadamente en el cargo, y con una oportunidad de reelección, luego para postularse nuevamente deberán dejar pasar una elección sin postularse. Los Role Master son considerados como miembros permanentes del mismo.
<br>
<br>
<u>Funciones del Consejo de Angrod (nuevo):</u>
-Su principal objetivo es unir, dirigir, ordenar y gestionar la Armada Real en sí.
<br>
-Deberán recopilar información de los demás usuarios de la facción, para tratar temas administrativos, como futuros aspirantes al Consejo, Reincorporaciones y Expulsiones.
<br>
-Podrán sugerir e implementar ideas que sean beneficiosas para los miembros de la Armada Real
<br>
-Reincorporaciones: Los miembros temporales del Consejo deberán votar y debatir cada solicitud de perdón real basándose en la planilla y su comportamiento in-game.
<br>
-Advertencias y/o expulsiones: El consejo de Angrod podrá advertir y/o expulsar a cualquier soldado del ejército real que no cumpla su rol o rompa las reglas del vigente reglamento.
 <br>
 <br>
<u>Requisitos(nuevo):</u>
<br>
-Ningún integrante del honorable Consejo de Angrod, en su permanencia en el cargo, podrá tener o poseer por ningún motivo un personaje de status criminal/legionario, de ser así, será expulsado de su cargo inmediatamente
<br>
-No tener penas por antifacción al momento de asumir su mandato, además de poseer un prontuario intachable y una buena reputación entre los miembros de la Armada Real.
<br>
<br>
<u>Comportamiento de un miembro del Ejército Real ante un Ciudadano:</u>
<br>
-Cada recluta deberá brindar instrucción o información sobre los alrededores de las zonas en donde se encuentra transitando. (Modificado)
<br>
-No estará obligado a regalar ítems. <u>(Modificado)</u>
<br>
-Ayudará al ciudadano a su criterio, si aquél sólo busca molestar y entorpecer la labor de protector de la paz y el orden que cada soldado tiene o no la opción de ayudarlo.
<br>
-Un soldado no es una fuente de riquezas ni un sacerdote que curará heridas o desmayos repentinos. Mucho menos será un entrenador que ayude a ciudadanos a ser más fuertes. Por ende, no está obligado a tales funciones, aunque realizarlas pueda en algunos casos resultar gratificante.
 <br>
 <br>
<u>Comportamiento de un miembro del Ejército Real ante un colega de armas:</u>
<br>
-Entre colegas de armas deberá existir el respeto, la cordialidad y el orden. De no ser posible llegar a esta instancia, se remitirán las actuaciones correspondientes al Gran Consejo. Un ejército sin unión nunca llegará a la victoria.
<br>
-Siempre que pueda o la situación lo amerite, deberá brindar ayuda ante un ataque de criminales o criaturas. (Modificado)
<br>
- Un compañero de Armas será siempre considerado un amigo, de no ser digno de tal confianza se tendrá la opción obviar la ayuda solicitada (si la hubiere), aunque sí es necesario acudir en su defensa, como a cualquier ciudadano le es brindada. Su mal comportamiento debe ser reportado a los Altos mandos del Consejo de Angrod.
<br>
-Las reiteradas faltas de compañerismo, respeto y denuncias de soldados reales hacia un miembro del ejército real son motivo de advertencia o suspensión según la gravedad de la situación. Rinter Trang no aceptará estos comportamientos en sus filas (Nuevo punto)
<br>
-La poca y/o nula colaboración al momento de batallar por parte de un compañero del ejército real en reiteradas ocasiones, podrá ser motivo de advertencia. (Nuevo punto)
<br>
<br>
<u> Comportamiento de un miembro del Ejército Real a la hora de entrenar:</u>
<br>
-Los miembros del Ejército Real, NO deberán entorpecer el entrenamiento de otro compañero faccionario o ciudadano, ya sea inmovilizando sus elementales/mascotas, paralizando NPCs de los cuales requiera ser golpeado para atacar, etc. Tampoco podrán robar la recompensa otorgada por una criatura, sea en forma de oro o cualquier ítem. También se encuentra considerado el caso de robo de la recompensa adquirida al matar a un criminal/legionario.
<br>
-La poca y/o nula colaboración al momento de entrenar por parte de un compañero del ejército real en reiteradas ocasiones, podrá ser motivo de advertencia. (Nuevo punto)
<br>
<br>
<u>Comportamiento de un miembro del Ejército Real ante un Criminal:</u>
<br>
-Deberá mostrar hostilidad en todo momento. Recordemos que los criminales son los que desean ver destruidas las ciudades, muertos los inocentes y cortada la cabeza de vuestro rey. Deben defender su postura, sus ideales y su honor en todo momento sin excepción alguna.
<br>
-Las batallas deben ser llevadas a cabo con valentía, honor y respeto. Por más que sea un enemigo no debemos caer en la bajeza de lanzar improperios. Debemos tratar al rival de la misma manera que a un compañero de armas.
<br>
-Nunca deberás entregar ninguna clase de objeto a ningún criminal, sin importar las circunstancias y/o razones en las que te encuentres. (Dentro de las ciudades puedes hacerlo, ya que no será castigado, pero no será bien visto por tus superiores y colegas)
<br>
<br>
<u>Sobre los duelos de caballería:</u>
<br>
-Los Duelos de caballería (entre Soldados Reales y algún criminal/legionario) solo podrán ser pactados en ciudades. El planeamiento de un duelo requiere hablar con el enemigo, y cualquier comportamiento no-hostil hacia un criminal fuera de las ciudades queda terminantemente prohibido, solo se permitirá caminar fuera de las ciudades para concretar un duelo. Existe la posibilidad de solicitar duelo a un criminal ni bien captemos su presencia en zona no segura, de no aceptar éste, debemos proseguir atacándolo.
<br>
-Si bien caminar por zona insegura con un criminal se considera antifacción, no se tomará como tal si el fin del mismo es duelear y solo se permitirá efectuar el mismo en mapas contiguos a ciudades. El simple hecho de caminar por zona insegura con un criminal para duelear es un compromiso, de no concretarse la batalla no podrán volver caminando juntos hasta zona segura, deberán batallar obligadamente.
<br>
-Quedara a criterio de cada Game Master sancionar o no al usuario según el punto anterior.
<br>
-Quedará a criterio de cada miembro el aceptar o no a batirse a duelo ante un criminal.
<br>
-En el caso de encontrar a un ciudadano o un miembro del Ejercito Real peleando contra un criminal, se deberá interceder a neutralizar de ataque al criminal. De no requerir ayuda, el miembro del Ejército puede retirarse tranquilamente si lo desea. (Modificado)
<br>
- Ignorar a criminales de manera reiterativa se considerará como una convivencia pacífica con los mismos. (Modificado)
<br>
-Si al estar peleando contra un criminal intercede un ciudadano o un miembro del ejército y es atacado o herido severamente por nuestro rival, este último deberá ser atacado sin importar la instancia del duelo. Debemos recordar que estamos para proteger a nuestros compañeros y ciudadanos, no para generar la muerte de los mismos.
<br>
-Estará prohibida la utilización de personajes de status Criminal/Legión para "limpiar" mapas de entrenamiento y/o de trabajo. Se entiende por "limpiar" el hecho de utilizando personajes Criminales/Legiones, matar otros personajes en un mapa, para luego poder entrenar, trabajar o sacar algún beneficio en ese mismo mapa con personajes pertenecientes al Ejército Real. Dicho accionar deber ser comprobado por un GM y la pena será la de advertencia faccionaria quedando sujeta, según la gravedad del hecho, a la posible expulsión si la Cúpula lo cree pertinente. A modo aclaratorio, no estará penado el hecho de utilizar personajes Criminales/Legiones por parte de un miembro del Ejército Real, siempre y cuando estos no sean utilizados para sacar una ventaja directa a favor del personaje faccionario.
<br>
<br>
<br>
<u>Atentamente: Honorable Consejo de Angrod</u>
</spam>

</td></tr></table><br><br>

<center><a href="guardias.php#ver">Anterior</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href="legion.php#ver"> Siguiente</a></center>
<br><br><table class="titulo_seccion"><tr><td>---</td></tr></table><table class="volver_indice"><tr valign="middle"><td align="left">&nbsp;<a href="index.php">&lt;&lt;Ir al Índice del Manual</a></td><td align="right">&nbsp;</td></tr></table>

</td>
</tr>
</table>

</body>

