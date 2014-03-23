//THIS SKETCH RANDOMLY TRANSLATES RANDOMLY COLOURED 
//RECTANGLES AND DRAGS THEM FOR A DISTANCE BEFORE 
//TRANSLATING THEM TO ANOTHER RANDOM LOCATION ON THE SCREEN

float moveX=random(400);
float moveY=random(400);

void setup()
{ frameRate(1200);
  size(400, 400);
  rectMode(CENTER);
  noStroke();
}

void draw()
{ 
  translate(moveX,moveY);
  rect(0, 0, 30, 30);
  
  moveX++;
  moveY++;

  if ((moveX>100)&&(moveY>100))
  { fill(random(255),random(255),random(255));
    moveX=random(400);
    moveY=random(400);
  }
}
