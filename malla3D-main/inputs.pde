void keyPressed()
{
  if (keyCode == 'X')
  {
    for (int i = 0; i < numeroPart; i++)
    {
      particulaArray[i].fuerza.x += 1000.0;
    }
  }
  if (keyCode == 'Y')
  {
    for (int i = 0; i < numeroPart; i++)
    {
      particulaArray[i].fuerza.y += 1000.0;
    }
  }
  if (keyCode == 'Z')
  {
    for (int i = 0; i < numeroPart; i++)
    {
      particulaArray[i].fuerza.z += 1000.0;
    }
  }
  if (keyCode == ' ')
  {
    euler = !euler;
  }
  if (keyCode == 'W')
  {
    elasticidad++;
  }
  if (keyCode == 'S')
  {
    if (elasticidad > 1)
      elasticidad--;
  }
}
