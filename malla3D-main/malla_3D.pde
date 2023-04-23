// ZONA DE VARIABLES Y OBJETOS

// LOS OBJETOS
int partXFila = 10;
int partXCol = 10;
int numeroPart = partXFila * partXCol;
int numeroMuelles = (partXFila * (partXFila - 1)) + (partXCol * (partXCol - 1));
particula[] particulaArray = new particula[numeroPart];
muelle[] muelleArray = new muelle[numeroMuelles];
// DELTA TIEMPO
float inc_t;
// SPAWN PARTICULAS
float spawnX = 0.0f;
float spawnY = -200.0f;
float spawnZ = 0.0f;
// SOLVER
boolean euler = true;
int elasticidad = 1;

// ZONA DE SETUP
void setup() {

  size(800, 600, P3D);

  initParticulas();

  initMuelles();

  // Tiempo
  inc_t = 0.1;
  
}

// ZONA DE DRAW
void draw()
{
  translate(width/10.0, height/10.0, -500);
  rotateX(-(asin(1/(sqrt(3)))));
  rotateY(radians(-45.0));

  background(0);

  calcularFuerzas();

  moverParticulas();

  pintarMuelles();
  
  pintarEsfera();

}
