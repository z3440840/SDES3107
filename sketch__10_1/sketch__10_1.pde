void setup()
{
  size(500, 500);
  imageMode(CENTER);
}
void draw()
{

  PImage drawingcol;
  drawingcol = loadImage("scan0004-COLOUR.jpg");

  PImage drawingbw;
  drawingbw = loadImage("scan0004.jpg");


  if (mousePressed==true) {
    image(drawingcol, width/2, height/2, 500, 500);
  }
  else {  
    image(drawingbw, width/2, height/2, 500, 500);
  }
}

