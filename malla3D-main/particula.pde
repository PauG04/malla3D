class particula {
  // ATRIBUTOS
  PVector pos, vel, fuerza;
  float masa;
  boolean estatica;
  boolean partFinal;

  // CONSTRUCTOR
  particula(PVector p, PVector v, float m, boolean e, boolean pF) {
    pos = p;
    vel = v;
    fuerza = new PVector(0.0, 0.0, 0.0);
    masa = m;
    estatica = e;
    partFinal = pF;
  }
  // MÉTODOS
  void muevete() 
  {  
    if (!estatica)
    {
      if (euler)
      {
        // gravedad
        fuerza.x += 0.0;
        fuerza.y += 9.8;
        fuerza.z += 0.0;

        // fricción
        float fuerzaFriccion = 0.995;
        fuerza.x += -(fuerzaFriccion * vel.x);
        fuerza.y += -(fuerzaFriccion * vel.y);
        fuerza.z += -(fuerzaFriccion * vel.z);

        // De fuerza a aceleración
        // NEWTON Suma Fuerzas = Masa x Aceleracion
        PVector acel = new PVector (0.0, 0.0, 0.0);
        acel.x = fuerza.x/masa;
        acel.y = fuerza.y/masa;
        acel.z = fuerza.z/masa;

        // 2- Velocidad
        vel.x += acel.x * inc_t;
        vel.y += acel.y * inc_t;
        vel.z += acel.z * inc_t;

        // 3- Posicion
        pos.x += vel.x * inc_t;
        pos.y += vel.y * inc_t;
        pos.z += vel.z * inc_t;

        // resetear fuerzas
        fuerza.x = 0.0;
        fuerza.y = 0.0;
        fuerza.z = 0.0;
      }
      else
      {
       //implementar verlet
      }
    }
  }
}


void moverParticulas()
{
  for (int i = 0; i < numeroPart; i++)
  {
    for (int j = 0; j < elasticidad; j++)
    {
      particulaArray[i].muevete();
    }
  }
}

void initParticulas()
{
  for (int i = 0; i < numeroPart; i++)
  {
    if (i == 9)
    {
      particulaArray[i] = new particula(new PVector(spawnX, spawnY, spawnZ), new PVector(0.0, 0.0, 0.0), 1.0, true, true);
      spawnY += 50.0f;
      spawnX = -50.0f;
      spawnZ += 50.0f;
    } else if (i == 0)
    {
      particulaArray[i] = new particula(new PVector(spawnX, spawnY, spawnZ), new PVector(0.0, 0.0, 0.0), 1.0, true, false);
    } else if (i % partXFila == 9)
    {
      particulaArray[i] = new particula(new PVector(spawnX, spawnY, spawnZ), new PVector(0.0, 0.0, 0.0), 1.0, false, true);
      spawnY += 50.0f;
      spawnX = -50.0f;
      spawnZ += 50.0f;
    } else
    {
      particulaArray[i] = new particula(new PVector(spawnX, spawnY, spawnZ), new PVector(0.0, 0.0, 0.0), 1.0, false, false);
    }
    spawnX += 50.0f;
  }
}
