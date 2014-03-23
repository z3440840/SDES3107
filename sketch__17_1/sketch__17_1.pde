//THIS SKETCH USES ROTATE TO "CHANGE THE ORIENTATION" OF A SHAPE
//IN THIS CASE THE TEXT IS THE SHAPE
//AND THE ORIENTATION IS.. WELL YOU GET THE PUN.

float angle = 0;
int c1 = 0;
int c2 = 0;

void setup()
{size(400,400);
PFont font;
font = loadFont("Helvetica-Bold-48.vlw");
textFont(font);
textAlign(CENTER);
textSize(60);
}

void draw()
{ 
  fill(0,50+c1,150+c1);           //THIS CHANGES THE TEXT COLOUR
  angle= angle+degrees(0.0005);   //INT ANGLE CAN BE USED TO CHANGE THE ROTATION SPEED 
  translate(width/2,height/2); 
  rotate(angle);
  text ("STRAIGHT", 0,0);
  c1+=5;
  c2+=2;
  if (angle>6.3) {angle=0;}      //IF ROTATION OF TEXT REACHES A DEFINED RANGED, THE WORD "NOT" APPEARS
  if ((angle<4.65)&&(angle>1.65)) {c1=0;fill(255-c2,0,255-c2);text("NOT",0,-50);}
  else {fill(0); c2=0;}

  
  println(angle);
}

//ENJOY THE PUNNY SKETCH
