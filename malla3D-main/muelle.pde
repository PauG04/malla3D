class muelle { //<>// //<>// //<>//
  // ATRIBUTOS
  particula part1;
  particula part2;
  float longitud_natural;
  color color_muelle;

  // CONSTRUCTOR
  muelle(particula p1, particula p2)
  {
    color_muelle = color(255, 255, 0);
    part1 = p1;
    part2 = p2;
    longitud_natural = part1.pos.dist(part2.pos);
  }
  // Metodos
  void Pintate()
  {
    strokeWeight(3);
    stroke(color_muelle);
    line(part1.pos.x, part1.pos.y, part1.pos.z, part2.pos.x, part2.pos.y, part2.pos.z);
  }
  void CalcularFuerza()
  {
    float distActual = part1.pos.dist(part2.pos);
    float difDistancia = longitud_natural - distActual;
    float KF = difDistancia / distActual / 2.0;

    PVector fuerzaMuelle = new PVector(0.0, 0.0, 0.0);
    fuerzaMuelle.x = part2.pos.x - part1.pos.x;
    fuerzaMuelle.y = part2.pos.y - part1.pos.y;
    fuerzaMuelle.z = part2.pos.z - part1.pos.z;
    fuerzaMuelle.x *= KF;
    fuerzaMuelle.y *= KF;
    fuerzaMuelle.z *= KF;

    if (!part1.estatica)
    {
      part1.pos.sub(fuerzaMuelle);
    }
    if (!part2.estatica)
    {
      part2.pos.add(fuerzaMuelle);
    }
  }
}

void pintarMuelles()
{
  for (int i = 0; i < numeroMuelles; i++)
  {
    muelleArray[i].Pintate();
  }
}

void calcularFuerzas()
{
  for (int i = 0; i < numeroMuelles; i++)
  {
    muelleArray[i].CalcularFuerza();
  }
}


void initMuelles()
{

  int aux = 0;
  for (int i = 0; i < numeroMuelles; i++, aux++)
  {

    if (i < numeroMuelles/2)
    {
      if (particulaArray[aux].partFinal)
      {
        aux++;
      }
      muelleArray[i] = new muelle(particulaArray[aux], particulaArray[aux + 1]);
    } else
    {
      muelleArray[i] = new muelle(particulaArray[i - numeroMuelles/2], particulaArray[i - numeroMuelles/2 + partXFila]);
      
    }
  }
}
