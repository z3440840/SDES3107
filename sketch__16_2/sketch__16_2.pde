//THIS SKETCH IS FOR EX 16.2
//IT TRANSLATES AN ELLIPSE AND A RECTANGLE 
//ACROSS THE SCREEN AND WHEN THE WIDTH IS REACHED
//THE SKETCH RESETS

/*THE CODE BETWEEN THESE MARKERS ARE MEANT FOR EX 16.3*/

int move = 0;

void setup()
{
  size(300, 100);
  noStroke();
}

void draw()
{ 

  background(255);
  /*  pushMatrix(); */
  fill(100, 100, 100);
  translate(move, 0);          //TRANSLATION IS CONTROLLED HERE
  rect(0, 0, 100, 100);        //RECT AND ELLIPSE ARE TRANSLATED
  move++;
  /*  if (mousePressed==true) {popMatrix(); pushMatrix();} */
  fill(200, 0, 200);
  ellipse(50, 50, 100, 100);   //RECT AND ELLIPSE ARE TRANSLATED
  /*  popMatrix(); */

  if (move>=width) {
    move=(-100);
  }                            //WHEN THE SHAPE REACH THE WIDTH, SKETCH RESETS
}

