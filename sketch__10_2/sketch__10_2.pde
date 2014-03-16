int xmove = 100;
int direction = 0;


void setup() {
  size(600, 200);
}
void draw() {
  int position = xmove-direction;
  imageMode(CENTER);
  background(255);
  PImage drawing;
  drawing = loadImage("scan0004.jpg");

  image(drawing, position, height/2, 200, 200);
  if (xmove>500) {direction=direction+2;} 
  else {xmove=xmove+2;}
 
  if (position<100) {
    xmove=100; 
    direction=0;
  }
  
  if (position==150) {tint(200,20,20);} 
  if (position==300) {tint(20,200,20);} 
  if (position==450) {tint(20,20,200);} 
    
}

