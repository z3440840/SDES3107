size(200,200);

int x = 10;
int y = 100;
float z = 50.5;
boolean t = true;

textSize(75);
textAlign(CENTER);
ellipseMode(CENTER);
rectMode(CENTER);
noStroke();

fill(0,200,50);

if ((x == y) == true) {text("F",150,75);}  else {text("T",150,75);}
  print(x == y); 

if (!(x<z) == false) {text("F",50,75);} else {text("T",50,75);}
  println(x<z);
  
if (((z-0.5) == (y/2)) == t) 
{fill(250,0,0);
ellipse(50,150,50,50);} 
else 
{fill(0,200,50);
ellipse(50,150,50,50);}

  print((z-0.5) == (y/2));
  
if (((t == true)&&(x>y))== !t)
{fill(20,150,20);
rect(150,150,50,50);} 
else 
{fill(20,0,20);
rect(150,150,50,50);} 

println((t == true)&&(x>y));
  
