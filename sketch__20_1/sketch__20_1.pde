//THIS SKTECH PRINTS THE NUMBERS 1 TO 10 
//IN RANDOM POSITIONS ON THE SCREEN
//WHEN IT REACHES 10, THE SKETCH STOPS

void setup()
{size(400,400);
textSize(50);
frameRate(4);}        //THE SKETCH RUNS 4 FRAMES A SEC

void draw()
{
println(frameCount);  //THE FRAME COUNT IS PRINTED EACH TIME

if (frameCount==1)
{fill(0);text("1", random(width), random(height));}  //EACH FRAME COUNT, A NUMBER IS PRINTED

if (frameCount==2)
{fill(0);text("2", random(width), random(height));} 

if (frameCount==3)
{fill(0);text("3", random(width), random(height));} 

if (frameCount==4)
{fill(0);text("4", random(width), random(height));} 

if (frameCount==5)
{fill(0);text("5", random(width), random(height));} 

if (frameCount==6)
{fill(0);text("6", random(width), random(height));} 

if (frameCount==7)
{fill(0);text("7", random(width), random(height));} 

if (frameCount==8)
{fill(0);text("8", random(width), random(height));} 

if (frameCount==9)
{fill(0);text("9", random(width), random(height));} 

if (frameCount==10)
{fill(0);text("10", random(width), random(height));} 

if (frameCount>10)
{noLoop();}            //WHEN THE SKETCH REACHS TEN, IT STOPS

}
  
