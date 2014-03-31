//THIS SKETCH DRAWS A RECTANGLE THAT CHANGES COLOUR
//WHEN YOU CLICK AND DRAG IT THE RECTANGLE,
//IT LEAVES A TRAIL OF THE COLOURS BEHIND IT
//PRESS SPACEBAR TO RESET BACKGROUND

//RECTANGLE POSITION
int posx = 200;
int posy = 200;

//COLOUR CONTROL
int c1 = 0;
int c2 = 0;
int c3 = 0;

void setup() 
{ 
  background(255);
  size(400, 400);
  rectMode(CENTER);
  noStroke();
}

void draw()
{ 
  fill(c1-c2, 0, c3-c2);
  rect(posx, posy, 50, 50);

//WHEN THE RECT IS CLICKED ON THE POSITION OF THE RECT WILL END WHERE THE MOUSE LEFT IT
  if ((mousePressed==true)&&
    (mouseX<posx+25)&&(mouseX>posx-25)&&
    (mouseY<posy+25)&&(mouseY>posy-25))
  {
    posx=mouseX;
    posy=mouseY;
  }

//THE COLOURS ARE CHANGED HERE
  c1+=5;
  if (c1>255) {
    c1=255;
    c3+=5;
  }
  if (c3>255) {
    c3=255;
    c2+=5;
  }
  if (c2>255) {
    c1=0;
    c2=0;
    c3=0;
  }
  
//RESET
  if ((keyPressed==true)&&(key==' ')) {background(255);}  
  
}

