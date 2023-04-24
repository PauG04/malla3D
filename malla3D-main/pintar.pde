void pintarMotor()
{
  fill(255);
  textSize(20);
  if (motor)
  {
    inc_t = 0.01;
    text("Solver: Euler", 620, 30);
  } else
  {
    inc_t = 0.04;
    text("Solver: Verlet", 620, 30);
  }
}

void pintarElasticidad()
{
  text("Elasticidad: ", 620, 50);
  text(elasticidad, 720, 50);
  text("%", 750, 50);
}
