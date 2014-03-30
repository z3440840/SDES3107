//THIS SKETCH WRITES A WORD ON THE SCREEN EACH TIME A LETTER ON THE KEYBOARD IS PRESSED
//AFTER THE WORD APPEARS IT SINKS TO THE BOTTOM OF THE SCREEN LEAVING A TRAIL OF COLOUR
//PRESS SPACEBAR TO RESET

int y1 = 500;
int y2 = 500;
int y3 = 500;
int y4 = 500;
int y5 = 500;
int y6 = 500;
int y7 = 500;
int y8 = 500;
int y9 = 500;
int y10 = 500;
int y11 = 500;
int y12 = 500;
int y13 = 500;
int y14 = 500;
int y15 = 500;
int y16 = 500;
int y17 = 500;
int y18 = 500;
int y19 = 500;
int y20 = 500;
int y21 = 500;
int y22 = 500;
int y23 = 500;
int y24 = 500;
int y25 = 500;
int y26 = 500;

void setup()
{
 background(255);
 size(400,450);
 textSize(50);
}

void draw()
{ fill(0,0,y1);
  text("I'll",10,y1); y1++;  //EACH WORD HAS IT'S OWN FILL AND POSITION
  fill(0,0,y2);              //IT'LL START MOVING DOWN THE Y-AXIS AS SOON AS IT APPEARS
  text("run",75,y2); y2++;
  fill(0,0,y3);
  text("away",175,y3); y3++;
  fill(y4,0,y4);
  text("with",10,y4); y4++;
  fill(y5,0,y5);
  text("your",130,y5); y5++;
  fill(y6,0,y6);
  text("foot",255,y6); y6++;
  fill(y7,y7,y7);
  text("steps,",10,y7); y7++;
 
  fill(y8,y8,y8);
  text("I'll",165,y8); y8++;
  fill(y9,y9,y9);
  text("build",235,y9); y9++;
  fill(0,y10,y10);
  text("a",10,y10); y10++;
  fill(0,y11,y11);
  text("city",50,y11); y11++;
  fill(0,y12,y12);
  text("that",150,y12); y12++;
  fill(0,0,y13);
  text("dreams",10,y13); y13++;
  fill(0,0,y14);
  text("for",205,y14); y14++;
  fill(0,0,y15);
  text("two",290,y15); y15++;

fill(y16,0,y16);
  text("and",10,y16); y16++;
  fill(y11,0,y11);
  text("if",110,y17); y17++;
  fill(y12,0,y12);
  text("you",170,y18); y18++;
  fill(y13,0,y13);
  text("lose",270,y19); y19++;
  fill(0,y20,y20);
  text("your",10,y20); y20++;
  fill(0,y21,y21);
  text("self",120,y21); y21++; //U
  
  fill(0,y22,y22);
  text("I",230,y22); y22++; //V
  fill(0,y23,y23);
  text("will",260,y23); y23++; //w
  fill(100,y24,y24);
  text("find",10,y24); y24++; //x
  fill(100,y25,y25);
  text("you",120,y25); y25++; //y
  fill(100,y25,y25);
  text("Zedd",250,y26); y26++; //z
  


//RESET  
  if ((keyPressed==true)&&(key==' ')) 
  {
    background(255);
     y1 = 500;
     y2 = 500;
     y3 = 500;
     y4 = 500;
     y5 = 500;
     y6 = 500;
     y7 = 500;
     y8 = 500;
     y9 = 500;
     y10 = 500;
     y11 = 500;
     y12 = 500;
     y13 = 500;
     y14 = 500;
     y15 = 500;
     y16 = 500;
     y17 = 500;
     y18 = 500;
     y19 = 500;
     y20 = 500;
     y21 = 500;
     y22 = 500;
     y23 = 500;
     y24 = 500;
     y25 = 500;
     y26 = 500;
}

//"I'LL RUN AWAY WITH YOUR FOOT STEPS"
  if ((keyPressed==true)&&((key=='a')||(key=='A'))) {y1=50;} if (y1>500) {y1=500;} //I'LL
  if ((keyPressed==true)&&((key=='b')||(key=='B'))) {y2=50;} if (y2>500) {y2=500;} //RUN
  if ((keyPressed==true)&&((key=='c')||(key=='C'))) {y3=50;} if (y3>500) {y3=500;} //AWAY
  if ((keyPressed==true)&&((key=='d')||(key=='D'))) {y4=100;} if (y4>500) {y4=500;} //WITH
  if ((keyPressed==true)&&((key=='e')||(key=='E'))) {y5=100;} if (y5>500) {y5=500;} //YOUR
  if ((keyPressed==true)&&((key=='f')||(key=='F'))) {y6=100;} if (y6>500) {y6=500;} //FOOT
  if ((keyPressed==true)&&((key=='g')||(key=='G'))) {y7=150;} if (y7>500) {y7=500;} //STEPS
  
//"I'LL BUILD A CITY THAT DREAMS FOR TWO"  
  if ((keyPressed==true)&&((key=='h')||(key=='H'))) {y8=150;} if (y8>500) {y8=500;} //I'LL
  if ((keyPressed==true)&&((key=='i')||(key=='I'))) {y9=150;} if (y9>500) {y9=500;} //BUILD
  if ((keyPressed==true)&&((key=='j')||(key=='J'))) {y10=200;} if (y10>500) {y10=500;} //A
  if ((keyPressed==true)&&((key=='k')||(key=='K'))) {y11=200;} if (y11>500) {y11=500;} //CITY
  if ((keyPressed==true)&&((key=='l')||(key=='L'))) {y12=200;} if (y12>500) {y12=500;} //THAT
  if ((keyPressed==true)&&((key=='m')||(key=='M'))) {y13=250;} if (y13>500) {y13=500;} //DREAMS
  if ((keyPressed==true)&&((key=='n')||(key=='N'))) {y14=250;} if (y14>500) {y14=500;} //FOR
  if ((keyPressed==true)&&((key=='o')||(key=='O'))) {y15=250;} if (y15>500) {y15=500;} //TWO
  
//"AND IF YOU LOSE YOURSELF"
  if ((keyPressed==true)&&((key=='p')||(key=='P'))) {y16=300;} if (y16>500) {y16=500;} //AND
  if ((keyPressed==true)&&((key=='q')||(key=='Q'))) {y17=300;} if (y17>500) {y17=500;} //IF
  if ((keyPressed==true)&&((key=='r')||(key=='R'))) {y18=300;} if (y18>500) {y18=500;} //YOU
  if ((keyPressed==true)&&((key=='s')||(key=='S'))) {y19=300;} if (y19>500) {y19=500;} //LOSE
  if ((keyPressed==true)&&((key=='t')||(key=='T'))) {y20=350;} if (y20>500) {y20=500;} //YOUR
  if ((keyPressed==true)&&((key=='u')||(key=='U'))) {y21=350;} if (y21>500) {y21=500;} //SELF
  
//"I WILL FIND YOU" - ZEDD
  if ((keyPressed==true)&&((key=='v')||(key=='V'))) {y22=350;} if (y22>500) {y22=500;} //I
  if ((keyPressed==true)&&((key=='w')||(key=='W'))) {y23=350;} if (y23>500) {y23=500;} //WILL
  if ((keyPressed==true)&&((key=='x')||(key=='X'))) {y24=400;} if (y24>500) {y24=500;} //FIND
  if ((keyPressed==true)&&((key=='y')||(key=='Y'))) {y25=400;} if (y25>500) {y25=500;} //YOU
  if ((keyPressed==true)&&((key=='z')||(key=='Z'))) {y26=400;} if (y26>500) {y26=500;} //ZEDD

//EACH WORD WILL PRINT IF A LETTER IS PRESSED, WHETHER CAPITAL OR NOT

}

