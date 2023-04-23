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

int elasticidad = 1;
PVector fuerzaGravedad = new PVector (0.0, 9.8, 0.0);
boolean motor = true;

voxel voxel1;


// ZONA DE SETUP
void setup() {

  size(800, 600, P3D);

  initParticulas();

  initMuelles();
  voxel1 = new voxel(250,250,100,100,
  color(255),50.0,-50.0);
}

// ZONA DE DRAW
void draw()
{
  background(0);
  fill(255);
  textSize(20);
  if (motor)
  {
    inc_t = 0.1;
    text("Solver: Euler", 670, 30);
  } 
  else
  { 
    inc_t = 0.4;
    text("Solver: Verlet", 670, 30);
  }
  translate(width/10.0, height/10.0, -500);
  rotateX(-(asin(1/(sqrt(3)))));
  rotateY(radians(-45.0));



  calcularFuerzas();

  moverParticulas();

  pintarMuelles();

  pintarEsfera();
  
   voxel1.pintar_voxel();
}
