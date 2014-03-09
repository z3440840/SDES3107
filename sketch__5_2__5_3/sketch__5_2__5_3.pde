  int move1 = 0;
  int move2 = 0;
  int move3 = 0;
  int move4 = 0;
  int colourFill1 = 0;
  int colourFill2 = 0;
  int colourFill3 = 0;


void setup()
{
  size(400,400); 
  ellipseMode(CENTER);
}
  
void draw()
{   fill(colourFill1,colourFill2,colourFill3);

  if (mousePressed==true){
  background(255);
    noStroke();

  ellipse(move1,50,100,100);

  ellipse(move2,150,100,100);
  
  ellipse(move3,250,100,100);

  ellipse(move4,350,100,100);

  move1 += 1;
  move2 += 2;
  move3 += 3;
  move4 += 4;
  
  if (move1>450) {move1=-50;}
  if (move2>450) {move2=-50;}
  if (move3>450) {move3=-50;}
  if (move4>450) {move4=-50;}
}
else
{background(255);stroke(0);strokeWeight(20);strokeCap(BEVEL);

  line(move1,0,move1,100);

  line(move2,100,move2,200);
  
  line(move3,200,move3,300);

  line(move4,300,move4,400);

  move1 += 1;
  move2 += 2;
  move3 += 3;
  move4 += 4;
  
  if (move1>450) {move1=-50;}
  if (move2>450) {move2=-50;}
  if (move3>450) {move3=-50;}
  if (move4>450) {move4=-50;}
}

 if ((mouseButton==LEFT)
  &&
((mouseX<move1+50)&&(mouseX>move1-50)&&(mouseY>0)&&(mouseY<100)))
{colourFill1 +=1;} 

if (
  (mouseButton==LEFT)
  &&
((mouseX<move2+50)&&(mouseX>move2-50)&&(mouseY>100)&&(mouseY<200)))
{colourFill2 +=1;} 

if (
  (mouseButton==LEFT)
  &&
((mouseX<move3+50)&&(mouseX>move3-50)&&(mouseY>200)&&(mouseY<300)))
{colourFill3 +=1;} 

if (
  (mouseButton==LEFT)
  &&
((mouseX<move4+50)&&(mouseX>move4-50)&&(mouseY>300)&&(mouseY<400)))
{
colourFill1 +=1;colourFill2 +=1;colourFill3 +=1;
} 

if (colourFill1>255) {colourFill1=0;}
if (colourFill2>255) {colourFill2=0;}
if (colourFill3>255) {colourFill3=0;}


println(colourFill1+","+colourFill2+","+colourFill3);

}
