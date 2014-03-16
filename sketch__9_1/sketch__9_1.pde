void setup()
{size(400,400);
noStroke();}

void draw()
{ 
background(255);
  if ((mouseX<200)&&(mouseY<200)) 
{fill(255,60,60);rectMode(CORNER);rect(0,0,200,200);
rectMode(CENTER);fill(#CACCC5);rect(300,300,100,100);}

  if ((mouseX>200)&&(mouseY<200)) 
{fill(0,255,100);rectMode(CORNER);rect(200,0,400,200);
rectMode(CENTER); fill(#90DBC7);rect(100,300,100,100);}
 
  if ((mouseX<200)&&(mouseY>200)) 
{fill(220,0,255);rectMode(CORNER);rect(0,200,200,400);
rectMode(CENTER); fill(#944BED);rect(300,100,100,100);}
 
  if ((mouseX>200)&&(mouseY>200)) 
{fill(0,90,90);rectMode(CORNER);rect(200,200,400,400);
rectMode(CENTER); fill(#FF0000);rect(100,100,100,100);}
}
