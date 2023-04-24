void pintarEsfera()
{
  translate(200.0, 200, 100.0);
  stroke(color(0.0, 0.0, 255));
  fill(color(0.0, 0.0, 255));
  sphere(150);
}

// Classe voxel
class voxel {
  // Atributs
  // posicio del voxel. La central
  // Les dimensions dels costats
  color color_voxel;
  float[] fuerza = new float [2]; // Forca que guarda
  // Constructor
  voxel(color c, float fx, float fy) {
    translate(200.0, 200, 100.0);
    sphere(150);
    color_voxel=c;
    fuerza[0]=fx;
    fuerza[1]=fy;
  }
  // Metodes
  void pintar_voxel() {
    noFill();
    stroke(color_voxel);
    rectMode(CENTER);
    sphere(150);
  }
}

float distancia(particula p, PVector sphere)
{
  PVector vectorVoxel = new PVector(0.0, 0.0, 0.0);
  vectorVoxel.x = sphere.x - p.pos.x;
  vectorVoxel.y = sphere.y - p.pos.y;
  vectorVoxel.z = sphere.z - p.pos.z;
  return sqrt( vectorVoxel.x * vectorVoxel.x + vectorVoxel.y * vectorVoxel.y + vectorVoxel.z * vectorVoxel.z);
}

void fuerzaVoxel()
{
  for(int i = 0; i < numeroPart; i++)
  {
    if(particulaArray[i].size + 150 > distancia(particulaArray[i], esfera))
    {
        particulaArray[i].pos.x += esfera.x + 150 + distancia(particulaArray[i], esfera);
        particulaArray[i].pos.y += esfera.y + 150 + distancia(particulaArray[i], esfera);
        particulaArray[i].pos.z += esfera.z + 150 + distancia(particulaArray[i], esfera);
        
    }
  }
}
