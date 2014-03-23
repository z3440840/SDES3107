/*THIS SKETCH RANDOMLY PRINTS THE ALPHABET FROM A TO F*/

int a= -1;

void setup()
{ 
  size(400, 400);
  textAlign(CENTER);
  textSize(120);
}

void draw()
{ 
  println(a);
  a++;
  if ((a>0)&&(a<150)) {
    fill(255);
    text("A", random(400), random(400));
  }
  else {
  }

  if ((a>150)&&(a<250)) { 
    fill(0);
    text("B", random(400), random(400));
  }

  if ((a>250)&&(a<350)) { 
    fill(255);
    text("C", random(400), random(400));
  }

  if ((a>350)&&(a<450)) {
    fill(0);
    text("D", random(400), random(400));
  }

  if ((a>450)&&(a<550)) { 
    fill(255);
    text("E", random(400), random(400));
  }  

  if ((a>550)&&(a<650)) { 
    fill(0);
    text("F", random(400), random(400));
  }  


  if (a>650) {
    a= -1;
  }
//ALPHABET RESETS HERE WHEN
  
}

