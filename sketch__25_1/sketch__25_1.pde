//THIS SKETCH ALTERS A LINE BASED ON WHICH NUMBER
//ON THE KEYBOARD YOU PRESS
//EACH NUMBER CORRESPONDS TO A POSITION ON THE LINE TO MOVE 
//EACH NUMBER CHANGES THE COLOUR OF THE LINE AS WELL


int y1 = 200;
int y2 = 200;
int y3 = 200;
int y4 = 200;
int y5 = 200;
int y6 = 200;
int y7 = 200;
int y8 = 200;
int y9 = 200;
int y10 = 200;

void setup()
{
  size(400,400);
  background(255);
  noFill();
  strokeWeight(1);
}

void draw()
{
  beginShape();
  curveVertex(width/11,y1);
  curveVertex(width/11*2,y2);
  curveVertex(width/11*3,y3);
  curveVertex(width/11*4,y4);
  curveVertex(width/11*5,y5);
  curveVertex(width/11*6,y6);
  curveVertex(width/11*7,y7);
  curveVertex(width/11*8,y8);
  curveVertex(width/11*9,y9);
  curveVertex(400,y10);
  endShape();
  //THIS IS THE LINE
  
    
  if ((keyPressed==true)&&(key=='1')) {y1+=10; stroke(200,0,0);} else {y1-=5;} 
  if (y1<200) {y1=200;}
  
  if ((keyPressed==true)&&(key=='2')) {y2+=10; stroke(200,100,0);} else {y2-=5;} 
  if (y2<200) {y2=200;}
  
  if ((keyPressed==true)&&(key=='3')) {y3+=10; stroke(200,200,0);} else {y3-=5;} 
  if (y3<200) {y3=200;}
  
  if ((keyPressed==true)&&(key=='4')) {y4+=10; stroke(100,200,0);} else {y4-=5;} 
  if (y4<200) {y4=200;}
  
  if ((keyPressed==true)&&(key=='5')) {y5+=10; stroke(0,200,0);} else {y5-=5;} 
  if (y5<200) {y5=200;}
  
  if ((keyPressed==true)&&(key=='6')) {y6+=10; stroke(0,200,100);} else {y6-=5;} 
  if (y6<200) {y6=200;}
  
  if ((keyPressed==true)&&(key=='7')) {y7+=10; stroke(0,200,200);} else {y7-=5;} 
  if (y7<200) {y7=200;}
  
  if ((keyPressed==true)&&(key=='8')) {y8+=10; stroke(0,100,200);} else {y8-=5;} 
  if (y8<200) {y8=200;}
  
  if ((keyPressed==true)&&(key=='9')) {y9+=10; stroke(0,0,200);} else {y9-=5;} 
  if (y9<200) {y9=200;}
  
  if ((keyPressed==true)&&(key=='0')) {y10+=10; stroke(100,0,200);} else {y10-=5;} 
  if (y10<200) {y10=200;}
  
  //THESE ARE THE POINTS ON LINE THAT WILL MOVE WHEN YOU PRESS A NUMBER ON THE KEYBOARD
    
}

