/*THIS SKETCH DRAWS TEXT OF 2 DIFFERENT FONTS ON EITHER SIDE OF 
 THE SCREEN RANDOMLY, CHANGING COLOUR EACH RUN. WHEN THE MOUSE IS CLICKED
 THE BACKGROUND IS DRAWN OVER THE RUNNING SKETCH*/

int x = 0;
int y = 0;
int z = 0;
int zz = 0;
PFont font1;
PFont font2;

void setup()
{
  background(255);
  frameRate(20);
  size(400, 400);
  font1 = loadFont("Helvetica-Bold-48.vlw");
  font2 = loadFont("TarquiniusPlus-Bold-48.vlw");
}

void draw()

{ 
  if (mousePressed==true) {
    background(255);
  } //CLICKING THE MOUSE DRAWS A BACKGROUND OVER THE RUNNING SKETCH

  textFont(font1);
  textAlign(LEFT);
  fill(20+x, 50, 20);
  text("Hello", random(-20, 100), random(100));

  textFont(font2);
  textAlign(RIGHT);
  fill(50, 20, 20+x);
  text("Heya", random(200, 420), random(100)); 
  x++;

  //THE FIRST "CONVERSATION" RUNS ON THE FIRST QUARTER OF THE SCREEN


  if (x>20) 
  { 
    textFont(font1);
    textAlign(LEFT);
    fill(20+y, 100, 20);
    text("How are ya", random(-20, 180), random(100, 200));

    textFont(font2);
    textAlign(RIGHT);
    fill(100, 20, 20+y);
    text("Good thanks", random(220, 450), random(100, 200));
    y++;
  }

  //AFTER A FEW RUNS, THE SECOND "CONVERSATION" STARTS IN THE SECOND QUARTER OF THE SCREEN

  if (y>20)
  { 
    textFont(font1);
    textAlign(LEFT);
    fill(20+z, 150, 20);
    text("I'm a San Serif", random(-100, 100), random(200, 300));

    textFont(font2);
    textAlign(RIGHT);
    fill(150, 20, 20+z);
    text("I'm a Serif", random(100, 300), random(200, 300));
    z++;
  }

  //AND THEN A 3RD CONVERSATION IN THE 3RD QUARTER

  if (z>20)
  { 
    textFont(font1);
    textAlign(LEFT);
    fill(20+zz, 200, 20);
    text("We should part", random(-100, 100), random(300, 400));

    textFont(font2);
    textAlign(RIGHT);
    fill(200, 20, 20+zz);
    text("Agreed", random(100, 300), random(300, 400));
    zz++;
  }

  //AND A 4TH CONVERSATION IN THE LAST QUARTER

  if (zz>200) {
    x=0; 
    y=0; 
    z=0; 
    zz=0;
  }
  //AFTER AN ALLOCATED NUMBER OF RUNS, THE SKETCH RESETS 


  println(x, y, z, zz);
  //THIS PRINTS THE VALUES OF THE INTEGERS USED FOR MY REFERENCE
}

