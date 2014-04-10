//THIS SKETCH RUN AN ANIMATION OF A CUTOUT
//CLICK AND HOLD TO CHANGE THE COLOUR OF THE "MOON"

int numFrames = 20; 
int frame = 0; 
int rise = 0;
PImage[] images = new PImage[numFrames]; 

void setup() 
{ smooth();
  noStroke();
  rectMode(CENTER);
  imageMode(CENTER); 
  size(400, 400);
  frameRate(30); 
  images[0] = loadImage("1.png"); 
  images[1] = loadImage("2.png"); 
  images[2] = loadImage("3.png"); 
  images[3] = loadImage("4.png"); 
  images[4] = loadImage("5.png"); 
  images[5] = loadImage("6.png"); 
  images[6] = loadImage("7.png"); 
  images[7] = loadImage("8.png"); 
  images[8] = loadImage("9.png"); 
  images[9] = loadImage("10.png");
  images[10] = loadImage("11.png");
  images[11] = loadImage("12.png"); 
  images[12] = loadImage("13.png"); 
  images[13] = loadImage("14.png"); 
  images[14] = loadImage("15.png"); 
  images[15] = loadImage("16.png"); 
  images[16] = loadImage("17.png"); 
  images[17] = loadImage("18.png"); 
  images[18] = loadImage("19.png"); 
  images[19] = loadImage("20.png"); //THIS LOADS THE IMAGES FOR THE ANIMATION
}
void draw() { 
  background(255,255,0);
  fill(255,0,0);
  
  rect(200,400,400,100+rise);
  if (mousePressed==true) {rise+=10;} else {rise-=5;}
  if (rise<0) {rise=0;}  
  //THIS DRAWS A RED RECTANGLE THAT INCREASES IN HEIGHT WHEN THE MOUSE IS CLICKED AND HELD
  //IF THE MOUSE IS NOT CLICK IT WILL GRADUALLY REDUCE ITS HEIGHT TILL ZERO

  frame++;
  if (frame == numFrames) 
  {
    frame = 0;
  } //THIS ANIMATES THE SKETCH
 
  tint(0); //CHANGING THE TINT OF THE LOADED IMAGES
  image(images[frame], 200, 200, 400, 400); //THIS PLACES THE IMAGE SEQUENCE

}

