class particula {
  // ATRIBUTOS
  PVector pos, posicionVieja, vel, fuerza;
  float masa, size;
  boolean estatica;
  boolean partFinal;

  // CONSTRUCTOR
  particula(PVector p, PVector v, float m, boolean e, boolean pF, float s) {
    pos = p;
    vel = v;
    fuerza = new PVector(0.0, 0.0, 0.0);
    masa = m;
    estatica = e;
    partFinal = pF;
    size = s;
  }
  // MÉTODOS
  void muevete() 
  {  
    if (!estatica)
    {
      if (motor)
      {
        // gravedad
        fuerza.x += fuerzaGravedad.x;
        fuerza.y += fuerzaGravedad.y;
        fuerza.z += fuerzaGravedad.z;

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
       // Fuerzas
        // Gravedad
        fuerza.x += fuerzaGravedad.x;
        fuerza.y += fuerzaGravedad.y;
        fuerza.z += fuerzaGravedad.z;
        
        // Friccion
        float fuerzaFriccion = 0.995;
        fuerza.x += -(fuerzaFriccion);
        fuerza.y += -(fuerzaFriccion); 
        fuerza.z += -(fuerzaFriccion); 

        // Aceleracion
        PVector aceleracion = new PVector (0.0, 0.0, 0.0);
        aceleracion.x = fuerza.x/masa;
        aceleracion.y = fuerza.y/masa;
        aceleracion.z = fuerza.z/masa;

        // Velocity se elimina en verlet

        // 2- Position
        
        PVector posicionVieja = new PVector (pos.x, pos.y, pos.z);
        
        PVector posicionNueva = new PVector (0.0, 0.0, 0.0);
        posicionNueva.x = (2 * pos.x)-posicionVieja.x+(aceleracion.x *(inc_t * inc_t)); 
        posicionNueva.y = (2 * pos.y)-posicionVieja.y+(aceleracion.y *(inc_t * inc_t));
        posicionNueva.z = (2 * pos.z)-posicionVieja.z+(aceleracion.z *(inc_t * inc_t));

        // guardamos la posicion antigua
        posicionVieja.x = pos.x;
        posicionVieja.y = pos.y;
        posicionVieja.z = pos.z;
        
        // guardamos la posicion actual
        pos.x = posicionNueva.x;
        pos.y = posicionNueva.y;
        pos.z = posicionNueva.z;

        // 3 - Resert forces
        fuerza.x = 0;
        fuerza.y = 0;
        fuerza.z = 0;
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
      particulaArray[i] = new particula(new PVector(spawnX, spawnY, spawnZ), new PVector(0.0, 0.0, 0.0), 1.0, true, true, 15);
      spawnY += 50.0f;
      spawnX = -50.0f;
      spawnZ += 50.0f;
    } else if (i == 0)
    {
      particulaArray[i] = new particula(new PVector(spawnX, spawnY, spawnZ), new PVector(0.0, 0.0, 0.0), 1.0, true, false,15);
    } else if (i % partXFila == (partXFila - 1))
    {
      particulaArray[i] = new particula(new PVector(spawnX, spawnY, spawnZ), new PVector(0.0, 0.0, 0.0), 1.0, false, true,15);
      spawnY += 50.0f;
      spawnX = -50.0f;
      spawnZ += 50.0f;
    } else
    {
      particulaArray[i] = new particula(new PVector(spawnX, spawnY, spawnZ), new PVector(0.0, 0.0, 0.0), 1.0, false, false,15);
    }
    spawnX += 50.0f;
  }
}
