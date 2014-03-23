float moveX = 0;
float moveY = 0;

void setup()
{
  size(600, 200);
  PFont sfont;
  sfont = loadFont("AGaramond-BoldOsF-24.vlw");
  textFont(sfont);
  fill(0);
}

void draw()
{
  background(255);
  text("The quick brown fox", 60, 120);
  
  text("jumps", 278+(moveY), 110+sin(moveX)*20); 
  //causes the word "jump" to move along a sine wave
  
  text("over the lazy dog", 345, 120);
  
  moveY+=8;   
  //this causes the word "jump" to move sideways
  
  moveX+=0.4;

  if (moveY>400) {
    moveY = -280;
  }  
  //if the word "jump" is out of the screen, it resets its position
}

