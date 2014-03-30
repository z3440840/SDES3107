//THIS EDITED SKETCH OF 22-04 WILL CHANGE WHEN THE SPACEBAR IS PRESSED
//AND REVERT TO IT'S NORMAL STATE WHEN NOT PRESSED

int x = 20;
int u = 14;
float a = -0.12;
int y = 0;

void setup() {
  size(200, 200);
  stroke(0, 153);
  smooth();
}


void draw() {   
  if ((keyPressed==true)&&(key== ' ')) 
  {
    background(255); 
    tail(x, u, a); 
    y++;
  } 
 //THE VALUE OF Y GOES UP WHEN SPACEBAR IS PRESSED 
 
  else {
    background(255); 
    tail(x, u, a); 
    y-=2; 
    if (y<0) {
      y=0;
    }
 //IF NOT Y'S VALUE WILL GO DOWN, BUT IT WILL NOT GO BELOW ZERO 
  }
}

void tail(int xpos, int units, float angle) { 
  pushMatrix();
  translate(xpos, 0);
  for (int i = units; i > 0; i--) { 
    strokeWeight(i);
    line(y, 0, 0, y);
    translate(0, 15);
    rotate(angle);
  }
  popMatrix();

  pushMatrix();
  translate(xpos, 0);
  for (int i = units; i > 0; i--) { 
    strokeWeight(i);
    line(0, y, 0, 0);
    translate(0, 15);
    rotate(angle);
  }
  popMatrix();
  
  //FUNCTION "TAIL" WAS DUPLICATED AND INT Y WAS RANDOMLY PLACED IN EACH FUNCTION
  //FOR A "SCREENSAVER" EFFECT
  
}

