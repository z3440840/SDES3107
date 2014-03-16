void setup()
{
  size(500, 500);
  imageMode(CENTER);
}
void draw()
{

  PImage drawingbw;
  drawingbw = loadImage("scan0004.jpg");
  image(drawingbw, width/2, height/2, 500, 500);
  tint(255, mouseX);

  PImage drawingcol;
  drawingcol = loadImage("scan0004-COLOUR.png");
  image(drawingcol, width/2, height/2, 500, 500);
}

