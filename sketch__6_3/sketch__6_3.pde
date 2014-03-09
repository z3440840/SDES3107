  int rect1 = 0; 
  int rect2 = 0;
  int rect3 = 0;
  int rect4 = 0;

  int speedRise = 10;
  int speedSink = 2;

  int transparency = 100;

void setup()
{size(400,400);
rectMode(CENTER);
noStroke();}

void draw()
{ 
  background(225);
  fill(rect1,rect1,0,transparency);
    rect(width/8,height,100,rect1);
  fill(rect2,0,rect2,transparency);
    rect(width*3/8,height,100,rect2);
  fill(0,rect3,rect3,transparency);
    rect(width*5/8,height,100,rect3);
  fill(255-min(rect4,255),255-min(rect4,255),255-min(rect4,255),transparency);
    rect(width*7/8,height,100,rect4);

  fill(rect1,rect1,0,transparency);
    rect(0,height/8,rect1,100);
  fill(rect2,0,rect2,transparency);
    rect(0,height*3/8,rect2,100);
  fill(0,rect3,rect3,transparency);
    rect(0,height*5/8,rect3,100);
  fill(255-min(rect4,255),255-min(rect4,255),255-min(rect4,255),transparency);
    rect(0,height*7/8,rect4,100);

if (mousePressed&&(mouseX<100)) {rect1 += speedRise;}
else {rect1 -= speedSink;}
if (rect1<0) {rect1 =0;}
if (rect1>height*2) {rect1 =height*2;}

if (mousePressed&&(mouseX>100)&&(mouseX<200)) {rect2 += speedRise;}
else {rect2 -= speedSink;}
if (rect2<0) {rect2 =0;}
if (rect2>height*2) {rect2 =height*2;}

if (mousePressed&&(mouseX>200)&&(mouseX<300)) {rect3 += speedRise;}
else {rect3 -= speedSink;}
if (rect3<0) {rect3 =0;}
if (rect3>height*2) {rect3 =height*2;}

if (mousePressed&&(mouseX>300)&&(mouseX<400)) {rect4 += speedRise;}
else {rect4 -= speedSink;}
if (rect4<0) {rect4 =0;}
if (rect4>height*2) {rect4 =height*2;}

println(rect1+","+rect2+","+rect3+","+rect4);

}
