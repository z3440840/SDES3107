size(200,200);

int sizeAndPos = min(50,120);
int colourEllp = 120;

fill(colourEllp,0,0);
ellipse(sizeAndPos,sizeAndPos,sizeAndPos+20,sizeAndPos);
println(sizeAndPos+" , "+colourEllp);

colourEllp = ceil(colourEllp+50.3);
sizeAndPos = max(50,120);

fill(0,colourEllp,0);
ellipse(sizeAndPos,sizeAndPos+10,sizeAndPos,sizeAndPos-20);
println(sizeAndPos+" , "+colourEllp);

colourEllp ++;
sizeAndPos = sizeAndPos-30;

fill(0,0,colourEllp);
ellipse(sizeAndPos,sizeAndPos,sizeAndPos-20,sizeAndPos+30);
println(sizeAndPos+" , "+colourEllp);



