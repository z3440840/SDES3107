//THIS SKETCH DRAWS A SERIES OF ELLIPSES
//THAT FOLLOW THE CURSOR

//UPDATED FOR EXERCISE 21.2
//ELLIPSES NOW ROTATE AROUND THE CURSOR
//WHEN THE MOUSE BUTTON IS CLICKED THEY TURN RED

float x = 0;
float y = 0;  //ADDED FLOATS FOR ELLIPSE ROTATION

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
  rotate(degrees(x)); //THIS MAKES THE OUTER ELLIPSES CLOCKWISE ROTATE AROUND THE CURSOR
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

  translate(mouseX, mouseY);
  rotate(degrees(y)); //THIS MAKES THE INNER ELLIPSES ROTATE ANTI-CLOCKWISE AROUND THE CURSOR
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

  if (mousePressed==true) {
    fill(255, 0, 0);
  } 
  else {
    fill(255, 255, 255);
  }
  //THIS CONTROLS THE COLOUR CHANGE WHEN THE MOUSE BUTTON IS PRESSED

  x+=0.001;
  y-=0.001;   //THESE CONTROL THE SPEED AND DIRECTION OF THE ELLIPSES' ROTATION
} 

