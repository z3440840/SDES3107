//THIS SKETCH DRAWS A SERIES OF ELLIPSES
//THAT FOLLOW THE CURSOR

void setup() 
{
  size(400, 400);
  strokeWeight(10);
  ellipseMode(CENTER);
}

void draw() 
{
  background(255);
  pushMatrix();
  translate(mouseX, mouseY);
  ellipse(0, -100, 20, 20);
  rotate(PI*2/5);
  ellipse(0, -100, 20, 20);
  rotate(PI*2/5);
  ellipse(0, -100, 20, 20);
  rotate(PI*2/5);
  ellipse(0, -100, 20, 20);
  rotate(PI*2/5);
  ellipse(0, -100, 20, 20);
  popMatrix();
  //THIS DRAWS THE FIRST SET OF 5 ELLIPSES (THE OUTER 5)

  translate(mouseX, mouseY);
  rotate(PI*2/10);
  ellipse(0, -50, 20, 20);
  rotate(PI*2/5);
  ellipse(0, -50, 20, 20);
  rotate(PI*2/5);
  ellipse(0, -50, 20, 20);
  rotate(PI*2/5);
  ellipse(0, -50, 20, 20);
  rotate(PI*2/5);
  ellipse(0, -50, 20, 20);
  //THIS IS THE 2ND SET (THE INNER 5)

} 
