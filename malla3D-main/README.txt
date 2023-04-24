// AA1_ALGEBRA_JuditEspígol_AlejandroRubio

// EXPLICACIÓ DEL JOC 
/* 
 * Experiment a processing en 3D, amb càmera isomètrica sobre una tela "Malla" i les seves forces experimentals:
 * 
 * OBJECTIU: 
 *   L'objectiu de la pràctica és simular el comportament real d'una peça de roba amb diferents solvers com és en el nostre cas el Solver de Euler i el Solver de Verlet, a més a més podem afegir una sèrie de forces externes.
 *  
 * ESCENES: 
 *   El projecte només té una única escena ja que totes les variacions del experiment són aplicant canvis de solver o aplicar foces què és realitzaran sense canviar d'escena.
 *  
 * Peces de roba:
 *   
 *
*/



GENERACIÓN DE UNA MALLA 3D

INPUTS
	- PULSA 'X' PARA IMPULSAR LA MALLA EN EL EJE X
	- PULSA 'Y' PARA IMPULSAR LA MALLA EN EL EJE Y
	- PULSA 'Z' PARA IMPULSAR LA MALLA EN EL EJE Z
	
	- PULSA ESPACIO PARA CAMBIAR DE SOLVER 
		- Motor == true --> Euler
		- Motor == false --> Verlet

	- PULSA 'W' O 'S' PARA AUMENTAR O DISMINUIR LA ELASTICIDAD
	