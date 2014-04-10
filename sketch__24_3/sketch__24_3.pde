//THIS SKETCH ROTATES AN IMAGE IN THE CENTER OF THE DISPLAY
//WHEN THE MOUSE IS CLICKED, 
//THE IMAGE STOPS ROTATING,
//THE CURSOR DRAWS THE SAME IMAGE AT THE BACK OF THE CENTRE IMAGE

int rotateB=0;

void setup()
{
  size(400, 400);
  imageMode(CENTER);
  ellipseMode(CENTER);
  noStroke();
}

void draw()
{
  PImage logo = loadImage("FLLogo.png");

  pushMatrix();
  ellipse(200, 200, 240, 240);
  translate(200, 200);
  rotate(PI/10*rotateB); //THIS ROTATES THE CENTRE IMAGE
  tint(255, 0, 0);
  image(logo, 0, 0, 250, 250);
  rotateB+=1;
  popMatrix();
  
    if (mousePressed==true) 
  {
    rotateB=0; //THIS STOPS THE ROTATION OF THE CENTRE IMAGE
    image(logo, mouseX, mouseY, 100, 100); //THIS DRAWS THE IMAGE
  }
  
  
}

