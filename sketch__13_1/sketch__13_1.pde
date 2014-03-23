size(400, 400);   //size of sketch
PFont ostrich;    //defining font
ostrich = loadFont("OstrichSans-Bold-48.vlw");
                  //loading the font
textFont(ostrich);//setting the font
textAlign(CENTER);//justifying text to centre

fill(#33CC99);    //fill colour for rectangle
rectMode(CENTER);  
noStroke();
rect(width/2, height/2, 200, 200); 
//drawing rectangle in middle of sketch

fill(0);
text("B-MO", width/2, height/2+10);
//drawing the text in the centre of the sketch
