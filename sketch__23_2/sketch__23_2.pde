//THIS SKETCH DRAWS 3 SHAPES
//UPON CLICKING ON EACH SHAPE, THEY REACT DIFFERENTLY
//RIGHT CLICK RESETS THE PAGE

int triAdd= 0;
int triSub= 0;

int a=0;
int b=0;
int c=0;

void setup()
{
  background(255);
  size(700, 400);
  rectMode(CENTER);
  ellipseMode(CENTER);
}

void draw()
{
  //RECTANGLE
  strokeWeight(a);
  stroke(0, 0, a);
  rect(150+sin(PI/3)*a, height/2, 100, 100);

  //ELLIPSE
  strokeWeight(1);
  noFill();
  stroke(0, 200, 0);
  ellipse(350, height/2, 100, 100);

  //TRIANGLE
  pushMatrix();
  translate(550, height/2);
  stroke(triAdd, 0, 0);
  beginShape();
  vertex(0, -50+triSub);
  vertex(50+triAdd, 50+triAdd);
  vertex(-50+triSub, 50+triAdd);
  vertex(0, -50+triSub);
  endShape();
  popMatrix();

  if ((mouseButton==LEFT)&&(mousePressed==true)&&(mouseY>150)&&(mouseY<250)) 

  {
    if ((mouseX>100)&&(mouseX<200)) { //IF RECTANGLE IS LEFT CLICKED ON
      a+=10;
      if (a>255) {
        a=0;
      }
    }
    if ((mouseX>300)&&(mouseX<400)) { //IF ELLIPSE IS LEFT CLICKED ON
      noFill();
      stroke(0, 200, 0);
      ellipse(random(width), random(height), 100, 100);
    }
    if ((mouseX>500)&&(mouseX<600)) { //IF TRIANGLE IS LEFT CLICKED ON
      triAdd+=10;
      triSub-=10; 
      if (triAdd>1280) {
        triAdd=0;
        triSub=0;
      }
    }
  }

  if ((mouseButton==RIGHT)&&(mousePressed==true))
  {
    background(255);
    triAdd= 0;
    triSub= 0;

    a=0;
    b=0;
    c=0;    //SKETCH RESETS ON A RIGHT CLICK
  }
}



