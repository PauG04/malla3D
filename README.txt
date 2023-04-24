// AA2_Algebra_PauGiro_AlejandroRubio

// EXPLICACIÓN DEL JUEGO 

 * Experimento en processing en 3D, con camara isométrica sobre una tela "Malla" y sus respectivas fuerzas experimentales:
 * 
 * OBJETIVO: 
 *   El objetivo de la práctica es simular el comportameniento real de una pieza de ropa con diferentes solvers. En nuestro caso utilizaremos dos, el Solver de Euler    
 *   y el Solver de Verlet. Además podemos añadir una fuerza externa (Viento).
 *  
 * ESCENES: 
 *   El proyecto solo tiene una única escena ya que todas sus variaciones del experimento suceden a partir de aplicar cambios como usar un motor de fuerzas diferentes
 *   o aplicar fuerzas que se realizan sin tener que cambiar de escena. 
 * 
 * MALLAS:
 *   Malla 1 --> Malla con valores estándar
 * 
 *   Malla 2 --> Malla mas elástica
 * 
 *   Malla 3 --> Malla mas rígida
 *   
 *  
 * INPUTS:
 *	
 *	- PULSA 'Z' PARA ACTIVAR UNA FUERZA EN EL EJE Z (VIENTO)
 *	- PULSA 'LEFT CLICK MOUSE' PARA CAMBIAR LA DIRECCION DEL VIENTO
 *	
 *	- PULSA ESPACIO PARA CAMBIAR DE SOLVER 
 *        - Motor == true --> Euler
 *        - Motor == false --> Verlet
 *
 *      - PULSA 'W' O 'S' PARA AUMENTAR O DISMINUIR LA ELASTICIDAD
 *
 *






	