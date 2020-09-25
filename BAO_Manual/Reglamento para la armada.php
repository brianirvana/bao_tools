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

<center>
Manual de comportamiento del Ej�rcito Real

Un miembro del Ej�rcito Real debe cumplir, como ning�n otro, las normas que el reglamento impone. Se espera que el mismo sea un ejemplo para todo el resto de los jugadores, resaltando su respeto ante los dem�s y las autoridades, valor en batalla y buena predisposici�n. Cualquier miembro del Ej�rcito que no rija su comportamiento por estas simples reglas, pone en riesgo su permanencia en la facci�n. Un Soldado tiene que destacar el respeto hacia los dem�s y apego al reglamento, tanto en acatarlo, como en tomar solo las medidas correctas contra quienes no lo hagan. �ste manual es una gu�a sobre el buen comportamiento del Soldado Real, contiene las l�neas b�sicas a seguir por cualquier miembro de �sta facci�n.

Comportamiento de un miembro del Ej�rcito Real ante un Ciudadano:

-Cada recluta deber� brindar instrucci�n o informaci�n sobre los alrededores de las zonas en donde se encuentra transitando. Ello no requiere que deba responder dudas sobre c�mo profesar hechizos, c�mo blandir armas o siquiera vestir lujosas ropas con decoro.

-No estar� obligado a expeler una acci�n material, es decir, repartir parte de sus bienes en quienes no tienen mucho. Recordemos que los bienes son m�s dichosos si uno mismo los labra y cosecha. En caso de ser gratificados agradecer cordialmente.

-Ayudar� al ciudadano a su criterio, si aqu�l s�lo busca molestar y entorpecer el labor de protector de la paz y el orden que cada soldado tiene o no la opci�n de ayudarlo.

-Un soldado no es una fuente de riquezas ni un sacerdote que curar� heridas o desmayos repentinos. Mucho menos ser� un entrenador que ayude a ciudadanos a ser m�s fuertes. Por ende no est� obligado a tales funciones, aunque realizarlas pueda en algunos casos resultar gratificante.

Comportamiento de un miembro del Ej�rcito Real ante un colega de armas:

-Entre colegas de armas deber� existir el respeto, la cordialidad y el orden. De no ser posible llegar a esta instancia, se remitir�n las actuaciones correspondientes al Gran Consejo. Un ej�rcito sin uni�n nunca llegar� a la victoria.

-Siempre que pueda o la situaci�n lo amerite, deber� brindar ayuda ante un ataque de criminales, criaturas o cualquier acci�n que pueda llevar al compa�ero de armas a una p�rdida de la conciencia o la muerte.

- Un compa�ero de Armas ser� siempre considerado un amigo, de no ser digno de tal confianza se tendr� la opci�n obviar la ayuda solicitada (si la hubiere), aunque si es necesario acudir en su defensa, como a cualquier ciudadano le es brindada. Su mal comportamiento debe ser reportado a los Altos mandos del Consejo de Angrod.

Comportamiento de un miembro del Ej�rcito Real ante un Criminal:

-Deber� mostrar hostilidad en todo momento. Recordemos que los criminales son los que desean ver destruidas las ciudades, muertos los inocentes y cortada la cabeza de vuestro rey. Deben defender su postura, sus ideales y su honor en todo momento sin excepci�n alguna.

-Si bien solo los dioses pueden juzgar a aquel que huye a enfrentar un criminal, se esperar� de un soldado real valent�a. Tu conciencia podr� ser juez de las veces que por honor, piedad, o emergencia hayas rehusado combatir, pero no olvides que tal conducta ha de ser excepcional ya que el Rey no tolerar� traidores ni cobardes en sus filas.

-Si un guardia real est� persiguiendo a un criminal, no deber� impedirle su tarea. Los guardias son los guardianes de la paz en las ciudades donde no podemos actuar. Son los expertos en armas y sus entrenadores del d�a a d�a. Por ello no permitimos el uso de invocaciones, hechicer�a o ataques f�sicos en las ciudades, muchos inocentes pueden salir heridos.

-Si un guardia real logra acabar con un criminal en la ciudad, los objetos que est� disperse ser�n del primero que los logr� asistir.

-Las batallas deben ser llevadas a cabo con valent�a, honor y respeto. Por m�s que sea un enemigo no debemos caer en la bajeza de lanzar improperios. Debemos tratar al rival de la misma manera que a un compa�ero de armas, con delicadeza, con practicidad y con astucia al lanzar cada ataque.

-Nunca deber�s entregar ninguna clase de objeto a ning�n criminal, sin importar las circunstancias y/o razones en las que te encuentres. (Dentro de las ciudades puedes hacerlo, ya que no ser� castigado, pero no ser� bien visto por tus superiores y colegas)

Sobre los duelos de caballer�a:

-Los Duelos de caballer�a (entre Soldados Reales y alg�n criminal/legionario) solo podr�n ser pactados en ciudades. El planeamiento de un duelo requiere hablar con el enemigo, y cualquier comportamiento no-hostil hacia un criminal fuera de las ciudades esta terminantemente prohibido, solo se permitir� caminar fuera de las ciudades para concretar un duelo. Existe la posibilidad de solicitar duelo a un criminal ni bien captemos su presencia en zona no segura, de no aceptar �ste, debemos proseguir atac�ndolo.

-Si bien caminar por zona insegura con un criminal se considera antifaccion, no se tomara como tal si el fin del mismo es duelear y solo se permitir� efectuar el mismo en mapas contiguos a ciudades. El simple hecho de caminar por zona insegura con un criminal para duelear es un compromiso, de no concretarse la batalla no podr�n volver caminando juntos hasta zona segura, deber�n batallar obligadamente.

-Quedara a criterio de cada Game Master sancionar o no al usuario seg�n el punto anterior.

-Quedar� a criterio de cada miembro el aceptar o no a batirse a duelo ante un criminal.

-En el caso de encontrar a un ciudadano o un miembro del Ejercito Real peleando contra un criminal, se deber� interceder a neutralizar de ataque al criminal y preguntar al compa�ero de armas si necesita ayuda. (Recordemos que interrumpir un duelo de caballer�a puede generar la deshonra o la desconfianza futura de un compa�ero de armas, por lo cual se debe actuar con mucho cuidado.) De no requerir ayuda, el miembro del Ej�rcito puede retirarse tranquilamente si lo desea.

-Un miembro del Ej�rcito puede obviar interceder en el duelo entre un compa�ero de facci�n y un criminal, s�lo por respeto a su amigo. En caso de que el duelo se est� llevando a cabo por dos criminales se puede tomar la misma actitud. Pero, ignorar a criminales de manera reiterativa se considerar� como una convivencia pacifica con los mismos.

-Si al estar peleando contra un criminal intercede un ciudadano o un miembro del ej�rcito y es atacado o herido severamente por nuestro rival, este �ltimo deber� ser atacado sin importar la instancia del duelo. Debemos recordar que estamos para proteger a nuestros compa�eros y ciudadanos, no para generar la muerte de los mismos.

-Queda terminantemente prohibido detenerse a observar un duelo o enfrentamiento de cualquier tipo (a�n en el caso de buscar "enfrentar al que gan�"). Esto es porque un Soldado Real no puede ser ni espectador ni jurado de un duelo de caballer�a en ninguna situaci�n.

-Estar� prohibida la utilizaci�n de personajes de status Criminal/Legi�n para "limpiar" mapas de entrenamiento y/o de trabajo. Se entiende por "limpiar" el hecho de utilizando personajes Criminales/Legiones, matar otros personajes en un mapa, para luego poder entrenar, trabajar o sacar alg�n beneficio en ese mismo mapa con personajes pertenecientes al Ej�rcito Real.
Dicho accionar deber ser comprobado por un GM y la pena ser� la de advertencia faccionaria quedando sujeta, seg�n la gravedad del hecho, a la posible expulsi�n si la C�pula lo cree pertinente.
A modo aclaratorio, no estar� penado el hecho de utilizar personajes Criminales/Legiones por parte de un miembro del Ej�rcito Real, siempre y cuando estos no sean utilizados para sacar una ventaja directa a favor del personaje faccionario.

Atentamente:
Consejo de Angrod

</center>

