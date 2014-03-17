size(300, 300);
colorMode(HSB);

for (int x=0; x<200; x++) 
{ for (int y=255; y>0; y--)
{ stroke(255,y,x);
  line(y,x,x,y);
  stroke(30,x,y);
line(x,y,y,x);

println(x+" "+y);}}


