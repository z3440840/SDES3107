//THIS SKETCH IS FOR EX 16.3
//(MODIFIED FROM EX 16.2's SKETCH)
//IT TRANSLATES AN ELLIPSE AD A RECTANGLE 
//ACROSS THE SCREEN AND WHEN THE WIDTH IS REACHED
//THE SKETCH RESETS

//PUSHMARTIX AND POPMATRIX ARE ADDED TO THE SKETCH
//WITH A CLICK OF THE MOUSE, THE ELLIPSE'S MOVEMENT
//IS ISOLATED AND IT REMAINS STATIONARY

int move = 0;

void setup()
{
  size(300, 100);
  noStroke();
}

void draw()
{ 

  background(255);
  pushMatrix();               //ADDED FIRST PUSHMATRIX BOUNDARY 
  fill(100, 100, 100);
  translate(move, 0);         
  rect(0, 0, 100, 100);       
  move++;
  if (mousePressed==true) {popMatrix(); pushMatrix();} //ADDED THE PUSH AND POP MATRIX ON MOUSE CLICK TO ISOLATE THE ELLIPSE'S MOVEMENT 
  fill(200, 0, 200);
  ellipse(50, 50, 100, 100);   
  popMatrix();               //ADDED POPMARTIX TO SATISFY THE FIRST PUSHMARTIX

  if (move>=width) {
    move=(-100);
  }                          
}

