void keyPressed()
{
  if (keyCode == 'Z')
  {
   vientoZ = !vientoZ;
  }
  if (keyCode == ' ')
  {
    motor = !motor;
  }
  if (keyCode == 'W')
  {
    if (elasticidad <= 90)
      elasticidad += 5;
  }
  if (keyCode == 'S')
  {
    if (elasticidad >= 10)
      elasticidad -= 5;
  }
}


void mousePressed()
{
  direccionViento = !direccionViento;
}

void viento()
{
  if (vientoZ)
  {
    for (int i = 0; i < numeroPart; i++)
    {
      for (int j = 0; j < elasticidad; j++)
      {
        if (direccionViento)
          particulaArray[i].fuerza.z += 10.0;
        else
          particulaArray[i].fuerza.z -= 10.0;
      }
        
    }
  }
}
