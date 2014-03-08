int imgWidth = 200; //CHANGE VALUES HERE TO RESCALE
int imgHeight = 200; //CHANGE VALUES HERE TO RESCALE

size(imgWidth,imgHeight);
background(255);

ellipseMode(CORNER);
noStroke();
fill(55);
ellipse(imgWidth/10, imgHeight/10, imgWidth/5, imgHeight/5);
ellipse(imgWidth-imgWidth/3.3, imgHeight-imgHeight/3.3, imgWidth/5, imgHeight/5);
ellipse(imgWidth-imgWidth/3.3, imgHeight/10, imgWidth/5, imgHeight/5);
ellipse(imgWidth/10, imgHeight-imgHeight/3.3, imgWidth/5, imgHeight/5);

rectMode(CENTER);
fill(255,0,0);
rect(imgWidth/2, imgHeight/2, imgWidth/4, imgHeight-imgHeight/10);
rect(imgWidth/2, imgHeight/2, imgWidth-imgWidth/10, imgHeight/4);

print("This image is "+imgWidth+" pixels wide and "+imgHeight+" pixels high.");
