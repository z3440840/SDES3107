int leftRight = 0;
int rightLeft = 400;

int speed = 10;

int r = 0;
int g = 0;
int b = 0;

void setup()
{
  size(400, 400);
  noFill();
}

void draw()
{ 
  { 
    beginShape();
    vertex(leftRight, 0);
    vertex(rightLeft, 100);
    vertex(leftRight, 200);
    vertex(rightLeft, 300);
    vertex(leftRight, 400);
    vertex(rightLeft, 500);
    vertex(leftRight, 600);
    endShape();  

    translate(-200, -50);
    beginShape();
    vertex(leftRight, 0);
    vertex(rightLeft, 100);
    vertex(leftRight, 200);
    vertex(rightLeft, 300);
    vertex(leftRight, 400);
    vertex(rightLeft, 500);
    vertex(leftRight, 600);
    endShape();

    translate(400, -100);
    stroke(r, g, b);

    beginShape();
    vertex(leftRight, 0);
    vertex(rightLeft, 100);
    vertex(leftRight, 200);
    vertex(rightLeft, 300);
    vertex(leftRight, 400);
    vertex(rightLeft, 500);
    vertex(leftRight, 600);
    endShape();

    leftRight += speed;
    rightLeft -= speed;
    r += 2;
    
    
    if (r>=255) {
      r=255; 
      g+=2;
    }
    if (g>=255) {
      g=255; 
      b+=2;
    }
    if (b>=255) {
      b=255; 
      r*=-1;
    }
    if (r<0) {
      g -=2; 
      r=0;
    }
    if (g<0) {
      b -=2; 
      g=0;
    }
    if (b<0) {
      r +=2; 
      b=0;
    }


    if (leftRight>400) {
      speed = (speed*(-1));
    }
    if (rightLeft>400) {
      speed = (speed*(-1));
    }
  }
}

