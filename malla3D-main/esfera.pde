void pintarEsfera()
{
  translate(200.0, 200, 100.0);
  stroke(color(0.0, 0.0, 255));
  fill(color(0.0, 0.0, 255));
  sphere(150);
}

// Classe voxel
class voxel{
  // Atributs
  int i,j; // posicio del voxel. La central
  float dimx,dimy; // Les dimensions dels costats
  color color_voxel;
  float[] fuerza = new float [2]; // Força que guarda
  // Constructor
  voxel(int posx,int posy,float dx,float dy,
  color c,float fx,float fy){
    i=posx;
    j=posy;
    dimx=dx;
    dimy=dy;
    color_voxel=c;
    fuerza[0]=fx;
    fuerza[1]=fy;
  }
  // Mètodes
  void pintar_voxel(){
    noFill();
    stroke(color_voxel);
    rectMode(CENTER);
    rect((float)i,(float)j,dimx,dimy);
  }
}
