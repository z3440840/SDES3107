void setup()
{
  size(300, 300);
}

void draw()
{       

  smooth();
  noFill();
  beginShape();
  vertex(mouseY, mouseX);
  stroke(0, mouseX, mouseY);
  bezierVertex(100, 300, 300, 100, mouseX, mouseY);
  endShape();

  if (mousePressed==true) {
    background(255);
  }
}

