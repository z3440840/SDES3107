//THIS SKETCH RANDOMLY GENERATES RECTANGLES BASED ON 
//THE POSITION OF THE CURSOR

void setup()
{ 
  size(400, 400);
  rectMode(CENTER);
  ellipseMode(CENTER);
  noStroke();
}

void draw()
{ 
  fill(0,random(255),0);
  rect(random(mouseX),random(mouseY),40,40); //GREEN RECT
 
  fill(0,0,random(255));
  rect(random(mouseX,width),random(mouseY,height),40,40); //BLUE RECT
 
}
