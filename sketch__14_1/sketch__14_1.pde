/*THIS SKETCH DRAWS A FADING SINE WAVE*/

int speed = 0;
int direction = 1;
float y = 0;
float waveLength = 0;

void setup()
{ background(255);
  size(300, 200);
  ellipseMode(CENTER);
  noStroke();
}

void draw()
{  if (speed>280) {speed=0;background(255);} 
//WHEN THE WAVE REACHES THE END, THE SKETCH RESTARTS

  fill(speed);  
  ellipse(speed, y, 20, 20);
  y = 100 + (sin(PI/90+waveLength) * 50);
  speed+=1;
  waveLength+= 0.2;
//THIS DRAWS THE WAVE WITH AN ELLIPSE
 
}

