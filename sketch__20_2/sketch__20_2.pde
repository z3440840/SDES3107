//THIS SKETCH MOVES AND ROTATES A SHAPE 
//FROM THE LEFT TO RIGHT OF THE SCREEN
//WHEN IT MOVES OFF THE RIGHT, IT REAPPEARS ON THE LEFT

int sideMove = 0;        
float shapeRotate = 0.001;
float shapeWave = 0.1;
int c1 = 0;
int cCtrl =0;

void setup()
{
  size(400, 400);
  rectMode(CENTER);
}

void draw()
{ 
  background(255);
  fill(0, 0, c1-cCtrl);            //THIS CHANGES THE COLOUR

  translate(sideMove,((height/2) + sin(PI/4*shapeWave)*20)); 
  //THIS MAKES THE SHAPE MOVE IN A WAVE
  rotate(degrees(shapeRotate));    //THIS MAKES THE SHAPE ROTATE
  rect(0, 0, 60, 60);              //THE SHAPE

  c1+=5;  
  sideMove+=2;
  shapeRotate+=0.001;
  shapeWave+=0.1;

  if (sideMove==width+40) {
    sideMove=-30;
  }
  if (c1>255) {
    c1=255; 
    cCtrl+=5;
  }  //WHEN THE COLOUR BLUE IS AT MAXIMUM, THE INCREASING INT CCTRL IS SUBTRACTED FROM IT 
  if (cCtrl>255) {
    c1=0; 
    cCtrl=0;
  }  //THIS CAUSES A SMOOTH CHANGING OF COLOURS FROM BLUE TO BLACK AND BACK AGAIN

  println(c1, cCtrl);
}

