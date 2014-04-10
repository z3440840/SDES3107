//THIS SKETCH USES ARRAY TO DRAW A SET OF ELLIPSES
//USE CLICK AND DRAG THEM AROUND THE SCREEN TO DRAW THOSE ELLIPSES

void setup()
{
  size(400, 100);
  ellipseMode(CENTER);
}

void draw()
{
  if (mousePressed==true) {
    int[] y = { 
      10, 15, 35, 40, 60, 65, 85, 90  //SETTING UP THE ELLIPSES USING ARRAY
    };
    println(y);

    for (int i = 0; i < y.length; i++) {
      ellipse(mouseX, y[i], 10, 10);   //THIS DRAWS THE ELLIPSES ON MOUSE CLICK
    }
  }
}

