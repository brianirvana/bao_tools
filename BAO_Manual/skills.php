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

<!-- TABLA 1 -->
<table align="center" cellpadding="0" cellspacing="0" border="0" style="width:70%">
<td style="background:""; text-align:center; height:148px">
<table height="50"align="center" cellpadding="0" cellspacing="0" bgcolor="">
</table>
<br>
<table align="Center" class="body" width="1100px">
<tr>
<td>

<table class="titulo_seccion"><tr><td><a name="ver"></a>- Habilidades/Skills -</td></tr></table><br><table width="98%" align="center"><tr><td>

<span class="size"<center><p>Hay dos formas de aumentar los skills de las habilidades. La forma &quot;natural&quot; (lo   que va aumentando por la pr&aacute;ctica) y la &quot;manual&quot; que son los puntos que se   pueden asignar por nivel a lo que uno desee. </p>

<p>De forma natural suben los   skills de a 2 o 3 puntos por nivel (suele subir 2 puntos, pero cada 2 niveles   aumentados, en el tercero se pueden subir 3 skills de forma natural). En síntesis, cada 4 niveles usted tendrá 10 puntos de habilidad para entrenar y subir de forma 'natural' (Ejemplo: al nivel 30 tenemos 75 puntos naturales, por ende al 34 tendremos 85). [Límite Máximo en 100 Skills alcanzados al nivel 40].

  Se puede asignar los puntos de la forma en que deseen y/o necesiten según el nivel que tengan, debido a que los skills naturales siguen subiendo.
Ejemplo: Soy nivel 24 y mis skills naturales son 60, asigno 12 skills en mágia para poder tener 72 y lanzar el hechizo INMOVILIZAR. Al subir al nivel 25 los skills seguiran subiendo naturalmente, y tendré 75 skills en Magia.</p>



<p>A la habilidad de <strong>Apu&ntilde;alar</strong> (salvo los que tienen como Clase la de   Asesino) hay que asignarle 10 skillpoints para que pueda aumentar skill de forma   natural.
</p>

<p>En cuanto a la forma manual, se ganan 3 puntos por nivel que se los puede asignar a lo que uno desee (a excepción del nivel 2, que ofrece 10 puntos de habilidad para asignar). </p>

</center>

<p> <u>Importante</u><br>
- Skill significa habilidad, skill points = puntos de habilidad y hp = puntos de vida.
- Si tenes la barra de hambre o sed vacía no podrás entrenar ninguna habilidad.
</p>
</span>


<table align="center" width="60%">
<table align="center">
<tr>
<td>
</tr>

<tr><td height="2" widht="100"></td></tr>

<tr class='colorcolumna2'><td class="tdresaltar" width="10%" height="20">Magia</td>
<td class="td">Los hechizos requieren un cierto número de puntos de magia para ser utilizados.<br>Se entrena lanzando hechizos, tanto de ataque como de curación.</td>
</tr>

<tr><td height="2"></td></tr>

<tr class='colorcolumna1'><td class="tdresaltar" width="10%" height="20">Robar</td>
<td class="td">Aumenta la posibilidad de obtener Ítems robando.<br>Se entrena robando.</td>
</tr>

<tr><td height="2"></td></tr>

<tr class='colorcolumna2'><td class="tdresaltar" width="10%" height="20">Tácticas de Combate</td>
<td class="td">Aumenta la posibilidad de esquivar ataques físicos.<br>Se entrena cuando una criatura o un usuario le pega o falla a nuestro personaje.</td>
</tr>

<tr><td height="2"></td></tr>

<tr class='colorcolumna1'><td class="tdresaltar" width="10%" height="20">Combate con Armas</td>
<td class="td">Aumenta la posibilidad de efectuar un golpe con un arma cuerpo a cuerpo.<br>Se entrena pegándole (si falla no cuenta como entrenamiento) a usuarios o criaturas.</td>
</tr>

<tr><td height="2"></td></tr>

<tr class='colorcolumna2'><td class="tdresaltar" width="10%" height="20">Meditar</td>
<td class="td">Marca la frecuencia con la que se recuperan puntos de maná.<br>Se entrena meditando.</td>
</tr>

<tr><td height="2"></td></tr>

<tr class='colorcolumna1'><td class="tdresaltar" width="10%" height="20">Apuñalar</td>
<td class="td">Aumenta la posibilidad de apuñalar.<br>
Se entrena pegándole o fallándole a usuarios o criaturas.1*(Ver el final de la página)
</td>
</tr>

<tr><td height="2"></td></tr>

<tr class='colorcolumna2'><td class="tdresaltar" width="10%" height="20">Ocultarse</td>
<td class="td">Esta habilidad es la encargada de aumentar las posibilidades de ocultarse.<br>Se entrena sólo cuando se oculta efectivamente.
**2(Ver final de la página)</td>
</tr>

<tr><td height="2"></td></tr>

<tr class='colorcolumna1'><td class="tdresaltar" width="10%" height="20">Supervivencia</td>
<td class="td">Sirve para ver el estado/vida de una criatura.<br>Se entrena haciendo ramitas o prendiendo fogatas.
***3(Ver el final de la página)</td>
</tr>

<tr><td height="2"></td></tr>

<tr class='colorcolumna2'><td class="tdresaltar" width="10%" height="20">Talar</td>
<td class="td">Aumenta la posibilidad de conseguir leños talando árboles.<br>Se entrena talando.</td>
</tr>

<tr class='colorcolumna2'><td class="tdresaltar" width="10%" height="20">Defensa con Escudos</td>
<td class="td">Aumenta la posibilidad de bloquear ataques físicos.<br>Se entrena rechazando ataques con un escudo.</td>
</tr>

<tr><td height="2"></td></tr>

<tr class='colorcolumna1'><td class="tdresaltar"width="10%" height="20">Pesca</td>
<td class="td">Aumenta la posibilidad de conseguir peces.<br>Se entrena pescando.</td>
</tr>

<tr><td height="2"></td></tr>

<tr class='colorcolumna2'><td class="tdresaltar" width="10%" height="20">Minería</td>
<td class="td">Aumenta la posibilidad de conseguir minerales picando en yacimientos mineros.<br>Se entrena minando.</td>
</tr>

<tr><td height="2"></td></tr>

<tr class='colorcolumna1'><td class="tdresaltar" width="10%" height="20">Carpintería</td>
<td class="td">Esta habilidad sirve para crear arcos, flechas, barcos y diversos Ítems hechos a base de madera.<br>Se entrena creando Ítems.</td>
</tr>

<tr><td height="2"></td></tr>

<tr class='colorcolumna2'><td class="tdresaltar" width="10%" height="20">Herrería</td>
<td class="td">Esta habilidad sirve para crear armas, armaduras y diversos Ítems hechos a base de lingotes de hierro, plata u oro.<br>Se entrena creando Ítems.</td>
</tr>

<tr><td height="2"></td></tr>

<tr class='colorcolumna2'><td class="tdresaltar" width="10%" height="20">Domar Animales</td>
<td class="td">Esta habilidad es necesaria para domar criaturas no hostiles y convertirlas en mascotas.<br>Se entrena sólo cuando se doma efectivamente una criatura.</td>
</tr>

<tr><td height="2"></td></tr>

<tr class='colorcolumna1'><td class="tdresaltar" width="10%" height="20">Armas de Proyectiles</td>
<td class="td">Aumenta la puntería con armas de rango (arcos, etc.).<br>
Se entrena pegándole (si falla no cuenta como entrenamiento) a criaturas o personas.</td>
</tr>

<tr><td height="2"></td></tr>

<tr class='colorcolumna2'><td class="tdresaltar" width="10%" height="20">Wrestling</td>
<td class="td">Aumenta la posibilidad de impactar al enemigo sin armas (con los puños).<br>Se entrena pegándole (si falla no cuenta como entrenamiento) a usuarios o criaturas.</td>
</tr>

<tr><td height="2"></td></tr>

<tr class='colorcolumna1'><td class="tdresaltar" width="10%" height="20">Wrestling<br>(Desarmar)</td>
<td class="td">Habilidad del Ladrón, le desequipa un item al usuario, cuantos más skill points tengas más posibilidad tendrás.</td>
</tr>

<tr><td height="2"></td></tr>

<tr class='colorcolumna2'><td class="tdresaltar" width="10%" height="20">Wrestling<br>(Inmovilizar)</td>
<td class="td">Habilidad del Ladrón (con Guantes de Hurto), sirve para inmovilizar usuarios, cuantos más skill points tengas más posibilidad tendrás.</td>
</tr>

<tr><td height="2"></td></tr>

<tr class='colorcolumna1'><td class="tdresaltar" width="10%" height="20">Wrestling<br>(Hurtar)</td>
<td class="td">Habilidad del Bandido (con Guantes de Hurto), sirve para robarle a un usuario algún item que no tenga equipado, cuantos más skill points tengas más posibilidad tendrás.</td>
</tr>

<tr><td height="2"></td></tr>

<tr class='colorcolumna2'><td class="tdresaltar" width="10%" height="20">Wrestling<br>(Golpe Crítico)</td>
<td class="td">Habilidad del Bandido (con Espada Vikinga), funciona tanto en usuarios como criaturas y es muy parecido a la habilidad apuñalar nada mas que el daño es distinto, cuantos más skill points tengas más posibilidad tendrás de efectuar un golpe crítico.</td>
</tr>

</table>
<br>
<br>
<br><hr noshade width="55%" size="1" color="#959595" align="center"><br><br>
<span class="size">
1*<br>Un Asesino hará 140% más de daño y las demás clases 150%.<br>
Todas las clases excepto Asesino necesitan 10 puntos de habilidad en Apuñalar para poder usar esta habilidad.<br><br>

2**<br>El Cazador con 100 skill points y teniendo equipada una Armadura de Cazador permanece oculto indefinidamente, mientras no hable ni se mueva ni use armas de cuerpo a cuerpo.<br>
El Ladrón y el Bandido son las únicas clases que pueden moverse ocultos en las sombras.<br><br>

3***<br>
Con 0-20 skill points recién empezarán a saber la vida aproximada de la criatura: Herido (-50%hp) y Sano (+50%hp).<br>
Con 21-30 skill points: Herido (-75%hp), Malherido (-50%hp) y Sano (+75%hp).<br>
Con 31-40 skill points: Muy Malherido (-25%hp), Herido (-50%hp), Levemente Herido (-75%) y Sano (+75%hp).<br>
Con 41-59 skill points: Agonizando (-5%hp), Casi Muerto (-10%hp), Muy Malherido (-25%hp), Herido (-50%hp), Levemente Herido (-75%hp), Sano(+75-99%hp) y Intacto (100%hp).<br>
Con 60-100 skill points verán la vida exacta de la criatura.<br>

<br><br><br>
<span class="size">La próxima tabla indica cuantos puntos de habilidad podes alcanzar en cada nivel subiendo naturalmente las habilidades, es decir sin asignar manualmente.</span>
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



</span><br><br>
<center><a href="clasessociales.php#ver"> Anterior</a>&nbsp&nbsp&nbsp&nbsp&nbsp <a href="razasyatributos.php#ver"> Siguiente</a></center>
</td></tr></table><br><br><table class="titulo_seccion"><tr><td>---</td></tr></table><table class="volver_indice"><tr valign="middle"><td align="left">&nbsp;<a href="index.php">&lt;&lt;Ir al Índice del Manual</a></td><td align="right">&nbsp;</td></tr></table>
</td>
</tr>
</table>
</body>

<!-- Mirrored from aogamers.com.ar.elserver.com/?seccion=habilidades by HTTrack Website Copier/3.x [XR&CO'2008], Sat, 30 May 2009 09:47:32 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/php;charset=ISO-8859-1"><!-- /Added by HTTrack -->
</php>
