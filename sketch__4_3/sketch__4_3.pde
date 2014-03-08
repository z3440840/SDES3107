//CLICK ON THE LINE!!

int lineDist = min(width, height);
int lineColour = max(0, -1);
int thickness = max(10, 100);
int speed = 3;

void setup()
{
size(500,100);
textSize(20);
fill(0, 102, 153);
textAlign(CENTER);
}

void draw()
{
background(255);
strokeWeight(thickness);
stroke(lineColour,0,0);
line(lineDist,0,lineDist,height);
lineDist += speed;

if ((mousePressed==true)
&&(mouseX>lineDist-thickness/2)
&&(mouseX<lineDist+thickness/2))
{
lineColour+=10;
thickness -=2;
speed +=0.8;
}

if (lineDist>width) {lineDist=0;}
if (thickness<3) {
background(255);
text("You Beat The Game!", width/2, height/2);
}

}
