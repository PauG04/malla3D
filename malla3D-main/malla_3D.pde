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

int elasticidad = 10;
PVector fuerzaGravedad = new PVector (0.0, 9.8, 0.0);
boolean motor = true;

voxel voxel1;

// VIENTO
boolean vientoZ = false;
boolean direccionViento = true;

//Esfera
PVector esfera = new PVector (200.0, 200, 100.0);

// ZONA DE SETUP
void setup() {

  size(800, 600, P3D);

  initParticulas();

  initMuelles();
  voxel1 = new voxel(color(255),50.0,-50.0);
}

// ZONA DE DRAW
void draw()
{
  background(0);

  pintarMotor();
  pintarElasticidad();
  pintarVientoTexto();
  
  translate(width/10.0, height/10.0, -500);
  rotateX(-(asin(1/(sqrt(3)))));
  rotateY(radians(-45.0));

  viento();

  calcularFuerzas();

  moverParticulas();

  pintarMuelles();

  pintarEsfera();
  
  voxel1.pintar_voxel();
  fuerzaVoxel();
}
