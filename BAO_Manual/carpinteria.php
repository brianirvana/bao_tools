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

<br>

<table align="Center" class="body" width="1100px">
<tr>
<td>
<table class="titulo_seccion"><tr><td><a name="ver"></a>- Carpinter�a -</td></tr></table><br><table width="98%" align="center"><tr><td><script type="text/javascript" src="dats/table_sort.js"></script>



El oficio de la carpinter�a sirve para construir �tems a base de le�os, una ves que tengas un <span class="resaltarcmd">SERRUCHO</span> deber�s equiparlo con la <span class="resaltarcmd">TECLA EQUIPAR (E)</span>, luego presionar <span class="resaltarcmd">TECLA USAR (U o DOBLE CLICK)</span> y se abrir� una ventana que mostrar� el listado de �tems que el personaje podr� construir seg�n la clase y puntos de habilidad en carpinter�a.

<br><br><i><u>Temas Relacionados</u></i>: <a href="macrosycentinela.php?seccion=macros_centinela#ver" target="_blank">Secci�n: Macros y Centinela</a>
<br><br><br><br>

A continuaci�n una lista de los �tems que podes construir:<br><br><br>






<table align="center" width="60%">

<thead>

<tr>
<th style="border:0;width:0px"></th>
<th class="tdresaltar">IMAGEN</th>
<th class="tdresaltar"><a href="#" onclick="this.blur(); return sortTable('�temscarpinteria', 2, true);" title="Organizar">NOMBRE</a></th>
<th class="tdresaltar"><a href="#" onclick="this.blur(); return sortTable('�temscarpinteria', 3, true);" title="Organizar">LE�OS REQUERIDOS</a></th>
<th class="tdresaltar"><a href="#" onclick="this.blur(); return sortTable('�temscarpinteria', 4, true);" title="Organizar">PUNTOS DE HABILIDAD REQUERIDOS EN CARPINTER�A SEG�N LA CLASE</a></th>
</tr>

</thead>

<tbody id="�temscarpinteria">


<tr><td style="border:0;width:0px" height="40"></td><td class=tdresaltar><img src="imagenes/graficos/747.gif" width="32" height="32"></td><td class=td7>Flecha</td><td class=td7>1</td><td class=td7><b>20 (Trabajador)</b><br>60 (Dem�s Clases)</td></tr><tr><td style="border:0;width:0px" height="40"></td><td class=tdresaltar><img src="imagenes/graficos/750.gif" width="32" height="32"></td><td class=td7>Flecha +1</td><td class=td7>4</td><td class=td7><b>40 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="40"></td><td class=tdresaltar><img src="imagenes/graficos/749.gif" width="32" height="32"></td><td class=td7>Flecha +2</td><td class=td7>6</td><td class=td7><b>65 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="40"></td><td class=tdresaltar><img src="imagenes/graficos/748.gif" width="32" height="32"></td><td class=td7>Flecha +3</td><td class=td7>8</td><td class=td7><b>90 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="40"></td><td class=tdresaltar><img src="imagenes/graficos/707.gif" width="32" height="32"></td><td class=td7>La�d M�gico</td><td class=td7>
7000</td><td class=td7><b>100 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="40"></td><td class=tdresaltar><img src="imagenes/graficos/643.gif" width="32" height="32"></td><td class=td7>Flauta M�gica</td><td class=td7>
	7000</td><td class=td7><b>100 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="40">&nbsp;</td><td class=tdresaltar>
	<img src="imagenes/graficos/6165.gif" width="32" height="32"></td><td class=td7>
	Arco de Marfil </td><td class=td7>7800</td><td class=td7><b>100 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="40"></td><td class=tdresaltar><img src="imagenes/graficos/10016.gif" width="32" height="32"></td><td class=td7>Arco de Cazador</td><td class=td7>
	2500</td><td class=td7><b>100 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="40"></td><td class=tdresaltar><img src="imagenes/graficos/10018.gif" width="32" height="32"></td><td class=td7>Arco Compuesto Reforzado</td><td class=td7>650</td><td class=td7><b>75 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="40"></td><td class=tdresaltar><img src="imagenes/graficos/745.gif" width="32" height="32"></td><td class=td7>Arco Compuesto</td><td class=td7>450</td><td class=td7><b>40 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="40"></td><td class=tdresaltar><img src="imagenes/graficos/10017.gif" width="32" height="32"></td><td class=td7>Arco Simple Reforzado</td><td class=td7>175</td><td class=td7><b>50 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="40"></td><td class=tdresaltar><img src="imagenes/graficos/744.gif" width="32" height="32"></td><td class=td7>Arco Simple</td><td class=td7>42</td><td class=td7><b>20 (Trabajador)</b><br>60 (Dem�s Clases)</td></tr><tr><td style="border:0;width:0px" height="40"></td><td class=tdresaltar><img src="imagenes/graficos/743.gif" width="32" height="32"></td><td class=td7>Barca</td><td class=td7>
9000</td><td class=td7><b>40 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="40"></td><td class=tdresaltar><img src="imagenes/graficos/743.gif" width="32" height="32"></td><td class=td7>Galera</td><td class=td7>50000</td><td class=td7><b>65 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="40"></td><td class=tdresaltar><img src="imagenes/graficos/743.gif" width="32" height="32"></td><td class=td7>Gale�n</td><td class=td7>75000</td><td class=td7><b>90 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="40"></td><td class=tdresaltar><img src="imagenes/graficos/680.gif" width="32" height="32"></td><td class=td7>Tambor</td><td class=td7>500</td><td class=td7><b>75 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="40"></td><td class=tdresaltar><img src="imagenes/graficos/681.gif" width="32" height="32"></td><td class=td7>La�d</td><td class=td7>800</td><td class=td7><b>75 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="40"></td><td class=tdresaltar><img src="imagenes/graficos/682.gif" width="32" height="32"></td><td class=td7>Flauta</td><td class=td7>800</td><td class=td7><b>75 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="40"></td><td class=tdresaltar><img src="imagenes/graficos/593.gif" width="32" height="32"></td><td class=td7>Cuchara</td><td class=td7>3</td><td class=td7><b>5 (Trabajador)</b><br>15 (Dem�s Clases)</td></tr><tr><td style="border:0;width:0px" height="40"></td><td class=tdresaltar><img src="imagenes/graficos/605.gif" width="32" height="32"></td><td class=td7>Silla</td><td class=td7>25</td><td class=td7><b>9 (Trabajador)</b><br>27 (Dem�s Clases)</td></tr><tr><td style="border:0;width:0px" height="40"></td><td class=tdresaltar><img src="imagenes/graficos/592.gif" width="32" height="32"></td><td class=td7>Silla</td><td class=td7>25</td><td class=td7><b>9 (Trabajador)</b><br>27 (Dem�s Clases)</td></tr><tr><td style="border:0;width:0px" height="40"></td><td class=tdresaltar><img src="imagenes/graficos/12050.gif" width="32" height="32"></td><td class=td7>Butaca</td><td class=td7>25</td><td class=td7><b>9 (Trabajador)</b><br>27 (Dem�s Clases)</td></tr><tr><td style="border:0;width:0px" height="40"></td><td class=tdresaltar><img src="imagenes/graficos/12105.gif" width="32" height="32"></td><td class=td7>Banqueta</td><td class=td7>50</td><td class=td7><b>9 (Trabajador)</b><br>27 (Dem�s Clases)</td></tr><tr><td style="border:0;width:0px" height="40"></td><td class=tdresaltar><img src="imagenes/graficos/600.gif" width="32" height="32"></td><td class=td7>Mueble R�stico</td><td class=td7>400</td><td class=td7><b>56 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="40"></td><td class=tdresaltar><img src="imagenes/graficos/601.gif" width="32" height="32"></td><td class=td7>Mueble R�stico</td><td class=td7>400</td><td class=td7><b>56 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="40"></td><td class=tdresaltar><img src="imagenes/graficos/525.gif" width="32" height="32"></td><td class=td7>Sill�n</td><td class=td7>400</td><td class=td7><b>56 (Trabajador)</b></td></tr><tr><td style="border:0;width:0px" height="40"></td><td class=tdresaltar><img src="imagenes/graficos/12081.gif" width="32" height="32"></td><td class=td7>Sill�n</td><td class=td7>50</td><td class=td7><b>9 (Trabajador)</b><br>27 (Dem�s Clases)</td></tr><tr><td style="border:0;width:0px" height="40"></td><td class=tdresaltar><img src="imagenes/graficos/12082.gif" width="32" height="32"></td><td class=td7>Sill�n</td><td class=td7>60</td><td class=td7><b>15 (Trabajador)</b><br>45 (Dem�s Clases)</td></tr><tr><td style="border:0;width:0px" height="40"></td><td class=tdresaltar><img src="imagenes/graficos/12082.gif" width="32" height="32"></td><td class=td7>Sill�n Azul</td><td class=td7>60</td><td class=td7><b>15 (Trabajador)</b><br>45 (Dem�s Clases)</td></tr><tr><td style="border:0;width:0px" height="40"></td><td class=tdresaltar><img src="imagenes/graficos/12082.gif" width="32" height="32"></td><td class=td7>Sill�n Azul Doble</td><td class=td7>120</td><td class=td7><b>25 (Trabajador)</b><br>75 (Dem�s Clases)</td></tr><tr><td style="border:0;width:0px" height="40"></td><td class=tdresaltar><img src="imagenes/graficos/12106.gif" width="32" height="32"></td><td class=td7>Armario</td><td class=td7>200</td><td class=td7><b>30 (Trabajador)</b><br>90 (Dem�s Clases)</td></tr><tr><td style="border:0;width:0px" height="40"></td><td class=tdresaltar><img src="imagenes/graficos/580.gif" width="32" height="32"></td><td class=td7>Ca�a de Pescar</td><td class=td7>70</td><td class=td7><b>12 (Trabajador)</b><br>36 (Dem�s Clases)</td></tr>
</tbody>
</table></td></tr></table><br><br>

<center><a href="FAQS.php#ver">Anterior</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href="domar.php#ver"> Siguiente</a></center>
<br><br><table class="titulo_seccion"><tr><td>---</td></tr></table><table class="volver_indice"><tr valign="middle"><td align="left">&nbsp;<a href="index.php">&lt;&lt;Ir al �ndice del Manual</a></td><td align="right">&nbsp;</td></tr></table>

</td>
</tr>
</table>
</body>

