size(400,400);
background(0);
strokeWeight(5);

for (int x = 0; x <= 400; x +=10) 
  {    
    for (int y = 0; y <= 400; y+=10)
    {
      stroke(0,0,x);
      line(0,x,width,x);
      stroke(0,y,0,5);
      line(y,0,y,height); 
    }
  }
  

