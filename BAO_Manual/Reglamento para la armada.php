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

<center>
Manual de comportamiento del Ejército Real

Un miembro del Ejército Real debe cumplir, como ningún otro, las normas que el reglamento impone. Se espera que el mismo sea un ejemplo para todo el resto de los jugadores, resaltando su respeto ante los demás y las autoridades, valor en batalla y buena predisposición. Cualquier miembro del Ejército que no rija su comportamiento por estas simples reglas, pone en riesgo su permanencia en la facción. Un Soldado tiene que destacar el respeto hacia los demás y apego al reglamento, tanto en acatarlo, como en tomar solo las medidas correctas contra quienes no lo hagan. Éste manual es una guía sobre el buen comportamiento del Soldado Real, contiene las líneas básicas a seguir por cualquier miembro de ésta facción.

Comportamiento de un miembro del Ejército Real ante un Ciudadano:

-Cada recluta deberá brindar instrucción o información sobre los alrededores de las zonas en donde se encuentra transitando. Ello no requiere que deba responder dudas sobre cómo profesar hechizos, cómo blandir armas o siquiera vestir lujosas ropas con decoro.

-No estará obligado a expeler una acción material, es decir, repartir parte de sus bienes en quienes no tienen mucho. Recordemos que los bienes son más dichosos si uno mismo los labra y cosecha. En caso de ser gratificados agradecer cordialmente.

-Ayudará al ciudadano a su criterio, si aquél sólo busca molestar y entorpecer el labor de protector de la paz y el orden que cada soldado tiene o no la opción de ayudarlo.

-Un soldado no es una fuente de riquezas ni un sacerdote que curará heridas o desmayos repentinos. Mucho menos será un entrenador que ayude a ciudadanos a ser más fuertes. Por ende no está obligado a tales funciones, aunque realizarlas pueda en algunos casos resultar gratificante.

Comportamiento de un miembro del Ejército Real ante un colega de armas:

-Entre colegas de armas deberá existir el respeto, la cordialidad y el orden. De no ser posible llegar a esta instancia, se remitirán las actuaciones correspondientes al Gran Consejo. Un ejército sin unión nunca llegará a la victoria.

-Siempre que pueda o la situación lo amerite, deberá brindar ayuda ante un ataque de criminales, criaturas o cualquier acción que pueda llevar al compañero de armas a una pérdida de la conciencia o la muerte.

- Un compañero de Armas será siempre considerado un amigo, de no ser digno de tal confianza se tendrá la opción obviar la ayuda solicitada (si la hubiere), aunque si es necesario acudir en su defensa, como a cualquier ciudadano le es brindada. Su mal comportamiento debe ser reportado a los Altos mandos del Consejo de Angrod.

Comportamiento de un miembro del Ejército Real ante un Criminal:

-Deberá mostrar hostilidad en todo momento. Recordemos que los criminales son los que desean ver destruidas las ciudades, muertos los inocentes y cortada la cabeza de vuestro rey. Deben defender su postura, sus ideales y su honor en todo momento sin excepción alguna.

-Si bien solo los dioses pueden juzgar a aquel que huye a enfrentar un criminal, se esperará de un soldado real valentía. Tu conciencia podrá ser juez de las veces que por honor, piedad, o emergencia hayas rehusado combatir, pero no olvides que tal conducta ha de ser excepcional ya que el Rey no tolerará traidores ni cobardes en sus filas.

-Si un guardia real está persiguiendo a un criminal, no deberá impedirle su tarea. Los guardias son los guardianes de la paz en las ciudades donde no podemos actuar. Son los expertos en armas y sus entrenadores del día a día. Por ello no permitimos el uso de invocaciones, hechicería o ataques físicos en las ciudades, muchos inocentes pueden salir heridos.

-Si un guardia real logra acabar con un criminal en la ciudad, los objetos que esté disperse serán del primero que los logré asistir.

-Las batallas deben ser llevadas a cabo con valentía, honor y respeto. Por más que sea un enemigo no debemos caer en la bajeza de lanzar improperios. Debemos tratar al rival de la misma manera que a un compañero de armas, con delicadeza, con practicidad y con astucia al lanzar cada ataque.

-Nunca deberás entregar ninguna clase de objeto a ningún criminal, sin importar las circunstancias y/o razones en las que te encuentres. (Dentro de las ciudades puedes hacerlo, ya que no será castigado, pero no será bien visto por tus superiores y colegas)

Sobre los duelos de caballería:

-Los Duelos de caballería (entre Soldados Reales y algún criminal/legionario) solo podrán ser pactados en ciudades. El planeamiento de un duelo requiere hablar con el enemigo, y cualquier comportamiento no-hostil hacia un criminal fuera de las ciudades esta terminantemente prohibido, solo se permitirá caminar fuera de las ciudades para concretar un duelo. Existe la posibilidad de solicitar duelo a un criminal ni bien captemos su presencia en zona no segura, de no aceptar éste, debemos proseguir atacándolo.

-Si bien caminar por zona insegura con un criminal se considera antifaccion, no se tomara como tal si el fin del mismo es duelear y solo se permitirá efectuar el mismo en mapas contiguos a ciudades. El simple hecho de caminar por zona insegura con un criminal para duelear es un compromiso, de no concretarse la batalla no podrán volver caminando juntos hasta zona segura, deberán batallar obligadamente.

-Quedara a criterio de cada Game Master sancionar o no al usuario según el punto anterior.

-Quedará a criterio de cada miembro el aceptar o no a batirse a duelo ante un criminal.

-En el caso de encontrar a un ciudadano o un miembro del Ejercito Real peleando contra un criminal, se deberá interceder a neutralizar de ataque al criminal y preguntar al compañero de armas si necesita ayuda. (Recordemos que interrumpir un duelo de caballería puede generar la deshonra o la desconfianza futura de un compañero de armas, por lo cual se debe actuar con mucho cuidado.) De no requerir ayuda, el miembro del Ejército puede retirarse tranquilamente si lo desea.

-Un miembro del Ejército puede obviar interceder en el duelo entre un compañero de facción y un criminal, sólo por respeto a su amigo. En caso de que el duelo se esté llevando a cabo por dos criminales se puede tomar la misma actitud. Pero, ignorar a criminales de manera reiterativa se considerará como una convivencia pacifica con los mismos.

-Si al estar peleando contra un criminal intercede un ciudadano o un miembro del ejército y es atacado o herido severamente por nuestro rival, este último deberá ser atacado sin importar la instancia del duelo. Debemos recordar que estamos para proteger a nuestros compañeros y ciudadanos, no para generar la muerte de los mismos.

-Queda terminantemente prohibido detenerse a observar un duelo o enfrentamiento de cualquier tipo (aún en el caso de buscar "enfrentar al que gané"). Esto es porque un Soldado Real no puede ser ni espectador ni jurado de un duelo de caballería en ninguna situación.

-Estará prohibida la utilización de personajes de status Criminal/Legión para "limpiar" mapas de entrenamiento y/o de trabajo. Se entiende por "limpiar" el hecho de utilizando personajes Criminales/Legiones, matar otros personajes en un mapa, para luego poder entrenar, trabajar o sacar algún beneficio en ese mismo mapa con personajes pertenecientes al Ejército Real.
Dicho accionar deber ser comprobado por un GM y la pena será la de advertencia faccionaria quedando sujeta, según la gravedad del hecho, a la posible expulsión si la Cúpula lo cree pertinente.
A modo aclaratorio, no estará penado el hecho de utilizar personajes Criminales/Legiones por parte de un miembro del Ejército Real, siempre y cuando estos no sean utilizados para sacar una ventaja directa a favor del personaje faccionario.

Atentamente:
Consejo de Angrod

</center>

