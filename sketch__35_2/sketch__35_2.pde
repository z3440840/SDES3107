//THIS SKETCH PRINTS AN IMAGE AS THE BACKGROUND
//THE COLOUR AND A ZOOMED IN VERSION OF WHERE THE MOUSE IS POINTING WILL APPEAR NEXT TO THE MOUSE
// WHEN CLICKED, THE IMAGE WILL BE TINTED WITH THE COLOUR OF THE ELLIPSE

void setup() 
{
  noStroke();
  size(400, 400);
  rectMode(CENTER);
  ellipseMode(CENTER);
}

void draw() 
{ 
  background(255);
  PImage img = loadImage("scan0004-COLOUR 2.jpg");
  image(img, 0, 0, 800, 800); //THIS LOADS THE MAIN IMAGE

  PImage crop = get(mouseX, mouseY, 50, 50);
  image(crop, mouseX, mouseY, 100, 100); //THIS LOADS THE MAGNIFIED FRAME NEXT TO THE CURSOR

  color pixel = get(mouseX, mouseY);
  fill(pixel);
  ellipse(mouseX, mouseY, 30, 30); //THIS LOADS THE COLOURED ELLIPSE

  if (mousePressed==true) 
  {
    fill(pixel, 170);
    rect(200, 200, 400, 400); //THIS "CHANGES" THE TINT OF THE MAIN IMAGE BY LOADING A TRANSCLUCENT RECTANGLE OVER THE IMAGE 
  } 
}


