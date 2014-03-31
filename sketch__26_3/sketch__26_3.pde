//THIS SKETCH DRAWS A ELLIPSE IN THE MIDDLE OF THE SCREEN
//CLICK AND DRAG THE ELLIPSE AROUND THE SCREEN, AND PLACE IT
//WHEN THE SPACEBAR IS PRESSED, 
//THE ELLIPSE WILL BECOME THE COLOUR OPPOSITE IT. 

int posx = 200;
int posy = 200;

int sizex = 50;
int sizey = 50;

color red = color(255, 0, 0);
color green = color(0, 255, 0);
color blue = color(0, 0, 255);
color yellow = color(255, 255, 0);

//COLOUR OF THE ELLIPSE
color dot = color(255);

void setup()
{
  ellipseMode(CENTER);
  size(400, 400);
  noStroke();
}

void draw()
{ 
  //BACKGROUND COLOURS
  fill(red);
  rect(0, 0, 200, 200);
  fill(green);
  rect(0, 200, 200, 400);
  fill(blue);
  rect(200, 0, 400, 200);
  fill(yellow);
  rect(200, 200, 400, 400);

  if ((keyPressed==true)&&(key==' ')) 
  {

    //ASSIGNING THE COLOURS THE ELLIPSE WILL CHANGE TO WHEN SPACEBAR IS PRESSED
    if ((posx>0)&&(posx<200)&&(posy>0)&&(posy<200)) {
      dot=yellow;
    } 
    if ((posx>0)&&(posx<200)&&(posy>200)&&(posy<400)) {
      dot=red;
    }
    if ((posx>200)&&(posx<400)&&(posy>0)&&(posy<200)) {
      dot=green;
    }
    if ((posx>200)&&(posx<400)&&(posy>200)&&(posy<400)) {
      dot=blue;
    }
  }

  else

  {
    fill(dot);
    strokeWeight(2);
    ellipse(posx, posy, sizex, sizey);

    //THIS MAKES THE ELLIPSE MOVE WITH THE CURSOR
    if ((mousePressed==true)&&(mouseX<posx+10)&&(mouseX>posx-10)&&(mouseY<posy+10)&&(mouseY>posy-10))
    {
      posx=mouseX;
      posy=mouseY;
    }
  }
}

