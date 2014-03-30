//THIS SKETCH DRAWS A CURVE WHEN THE MOUSE BUTTON IS PRESSED
//TO RESET THE SCREEN SIMPLY PRESS 'R'


void setup()
{
  size(400,400);
  background(255);
  noFill();
}

void draw()
{ 
  if (mousePressed==true) {drawArc();} //THIS DRAWS THE CURVE WHEN THE MOUSE IS CLICKED
  if ((keyPressed==true) && ((key == 'r')||(key == 'R'))) {background(255);} //THIS RESET THE SKETCH WHEN R IS PRESSED
}

void drawArc()
{ 
    beginShape();
    vertex(0,height/2);
    bezierVertex(mouseX-50,mouseY,mouseX+50,mouseY,width,height/2);
    endShape(); 
    //THESE ARE THE PARAMETERS FOR THE CURVE
}
