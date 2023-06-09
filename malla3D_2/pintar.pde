void pintarMotor()
{
  fill(255);
  textSize(20);
  if (motor)
  {
    inc_t = 0.01;
    text("Solver: Euler", 500, 30);
  } else
  {
    inc_t = 0.08;
    text("Solver: Verlet", 500, 30);
  }
}

void pintarElasticidad()
{
  text("Elasticidad: ", 500, 50);
  text(elasticidad, 600, 50);
  text("%", 630, 50);
}

void pintarVientoTexto()
{
  text("Viento en Z: ", 500, 70);
  if(vientoZ)
  {
    text("Activado", 620, 70);
  }
  else
  {
    text("Desactivado", 620, 70);
  }
  
  text("Direccion viento: ", 500, 90);
  if(direccionViento)
  {
    text("Positivo", 650, 90);
  }
  else
  {
    text("Negativo", 650, 90);
  }
}
