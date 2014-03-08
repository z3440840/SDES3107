void setup()
{size(300,300);
print("Slide mouse left to reveal breakfast");}

void draw()
{
background(180,120,120);

int circleSize = 50;

stroke(0);
strokeWeight(1);
fill(255);
ellipseMode(RADIUS);
fill(120,120,255);
ellipse(150,150,circleSize+50,circleSize+50);
fill(255);
ellipse(150,150,circleSize+30,circleSize+30);
ellipse(150,150,circleSize,circleSize+20);

ellipseMode(CENTER);

noStroke();
fill(255,255,0,200);
ellipse(150,175,circleSize,circleSize);

fill(100,300-mouseX);
ellipse(150,150,150,150);
stroke(mouseX);
strokeCap(ROUND);
strokeWeight(20);
line(120,150,180,150);
}

