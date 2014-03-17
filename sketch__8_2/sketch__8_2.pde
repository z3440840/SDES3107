float z = 0;
void setup()
{
  size(300, 300);
}

void draw()
{ 
  background(255);
  float z1= z%200;
  int cycle = round(z1);
  for (int x = 0; x < 300; x++) 
  { 
    float n = norm(x, 0.0, 100.0); 
    float y = pow(n, 8); 
    y *= cycle;
    z=z+0.01;
    line(x, y, 300, y);
  }

  println(cycle);
}

