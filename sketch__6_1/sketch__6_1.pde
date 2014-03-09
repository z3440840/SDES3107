size(400,400);

strokeWeight(10);


//This was the initial sketch
/*
line(400,0,0,0);
line(300,100,0,0);
line(200,200,0,0);
line(100,300,0,0);
line(0,400,0,0);
*/

//This is the same sketch using "for"
for 
(int x = 400; x >= 0 ; x -= 100)
{line(x,400-x,0,0);}


