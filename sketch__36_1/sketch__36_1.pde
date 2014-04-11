//THIS SKETCH REVEALS ADJECTIVE WHEN THE MOUSE IS CLICKED. 
  
  int plus = 0;
  int minus = 0;
int fade = 0;

void setup()
{
  size(400,400);
  PFont font;
  font = loadFont("Outlander-Black-48.vlw");
  textFont(font);
  fill(0);
  textAlign(CENTER);
}

void draw()
{


  background(255);
  String s1 = "NOUN";
  String s2 = "ADJECTIVE";
   
  fill(0);
   
  text(s1.charAt(0), 100+minus, 200+minus);
  text(s1.charAt(1), 165+plus, 200+minus);
  text(s1.charAt(2), 235+minus, 200+plus); 
  text(s1.charAt(3), 300+plus, 200+plus); 
  //SETTING UP THE POSITION OF THE CHARS OF THE WORD "NOUN"
  
  if (mousePressed==true) 
  { 
    minus-=2;  
    plus+=2;  //THESE MOVE THE LETTERS OF "NOUN" 
    fade+=8;    
    fill(0,fade); //THIS MAKES THE WORD "ADJECTIVE" FADE IN
    text(s2, 200,200);
  }
  else
  {
   fade=0;
   minus+=5;
   plus-=5;   //IF MOUSE IS NOT CLICKED, THINGS REVERT BACK TO THE ORIGINAL SKETCH
   if (minus>0) {minus =0;}
   if (plus<0) {plus =0;}
   if (plus>250) {plus =250;}
   if (minus<(-250)) {minus =(-250);}  //SETTING THE LIMITS  
  }  
}
