// P_2_0_01.pde
//LICENSE AND COPYRIGHT OF EDITTED FILE BELOW

/*
 *
 * drawing a filled circle with lines.
 * 	 
 * MOUSE
 * position x          : length
 * position y          : thickness and number of lines
 * 
 * KEYS
 * s                   : save png
 * p                   : save pdf
*/
 
 
import java.io.*;
import java.util.*;
import processing.pdf.*;
boolean savePDF = false;

float rotateDegree = 0; //CHANGE #2.1: ROTATE SHAPE
int clickChange = 0;//CHANGE #6.1: MAKE THE 4 SHAPES MOVE APART FROM EACH OTHER WHEN MOUSE IS CLICKED AND REVERT BACK WHEN MOUSE RELEASED
float fade = 0;   //CHANGE #7.1: MAKE THE SHAPE FADE IN AND OUT 2 BY 2, ONE USING A COSINE WAVE AND THE OTHER A SINE WAVE SO THEY'LL BE "OPPOSITES"
float fade1 = 0;  //CHANGE #7.2: MAKE THE SHAPE FADE IN AND OUT 2 BY 2, ONE USING A COSINE WAVE AND THE OTHER A SINE WAVE SO THEY'LL BE "OPPOSITES"
float fade2 = 0;  //CHANGE #7.3: MAKE THE SHAPE FADE IN AND OUT 2 BY 2, ONE USING A COSINE WAVE AND THE OTHER A SINE WAVE SO THEY'LL BE "OPPOSITES"
int x = 0;

void setup() 
{
  size(600,600);
}

void draw() 
{
  if (savePDF) beginRecord(PDF, timestamp()+".pdf");

  strokeCap(SQUARE);
  smooth();
  noFill();

  translate(mouseX, mouseY); // CHANGE #1: SHAPE FOLLOWS THE MOUSE NOW  

  int circleResolution = (int) map(mouseY, 0, height, 2, 80);
  float radius = mouseX-width/2;
  float angle = TWO_PI/circleResolution;

  float waveVal = 0;  // CHANGE #3.1: MAKE LINES "BOUNCE OFF" CURSOR WITH A SINE WAVE
  waveVal = 50+sin(PI/50*rotateDegree)*50;  //CHANGE #3.2: MAKE LINES "BOUNCE OFF" CURSOR WITH A SINE WAVE

  ellipseMode(CENTER); // CHANGE #4.1: CHANGE THE LINES TO ELLIPSES AND ADD 3 ELLIPSES 
 
  rotate(rotateDegree/50); //CHANGE #2.2: ROTATE SHAPE
  rotateDegree++; //CHANGE #2.3: ROTATE SHAPE
   
  for (int i=0; i<=circleResolution; i++)
    {
      float x = cos(angle*i) * radius;
      float y = sin(angle*i) * radius;
      stroke(fade1);//CHANGE #7.4: MAKE THE SHAPE FADE IN AND OUT 2 BY 2, ONE USING A COSINE WAVE AND THE OTHER A SINE WAVE SO THEY'LL BE "OPPOSITES"
      ellipse(clickChange+x, clickChange+y, waveVal, waveVal); // CHANGE #3.3: MAKE LINES "BOUNCE OFF" CURSOR WITH A SINE WAVE
      stroke(fade2);//CHANGE #7.5: MAKE THE SHAPE FADE IN AND OUT 2 BY 2, ONE USING A COSINE WAVE AND THE OTHER A SINE WAVE SO THEY'LL BE "OPPOSITES"
      ellipse(x-clickChange, clickChange+y,waveVal, waveVal); // CHANGE #4.2: CHANGE THE LINES TO ELLIPSES AND ADD 3 ELLIPSES
      stroke(fade2);//CHANGE #7.6: MAKE THE SHAPE FADE IN AND OUT 2 BY 2, ONE USING A COSINE WAVE AND THE OTHER A SINE WAVE SO THEY'LL BE "OPPOSITES"
      ellipse(clickChange+x, y-clickChange, waveVal, waveVal); // CHANGE #4.3: CHANGE THE LINES TO ELLIPSES AND ADD 3 ELLIPSES
      stroke(fade1);//CHANGE #7.7: MAKE THE SHAPE FADE IN AND OUT 2 BY 2, ONE USING A COSINE WAVE AND THE OTHER A SINE WAVE SO THEY'LL BE "OPPOSITES"
      ellipse(x-clickChange, y-clickChange, waveVal, waveVal); // CHANGE #4.4: CHANGE THE LINES TO ELLIPSES AND ADD 3 ELLIPSES
      // CHANGE #5: FLUCUATE THE ELLIPSES' POSITIONS WITH THE CURSOR (FLOAT X AND FLOAT Y) INSTEAD OF THE WIDTH AND HEIGHT OF THE ELLIPSES.  
        
      fade+=0.1; //CHANGE #7.8: MAKE THE SHAPE FADE IN AND OUT 2 BY 2, ONE USING A COSINE WAVE AND THE OTHER A SINE WAVE SO THEY'LL BE "OPPOSITES"
      fade1=126+sin(radians(fade))*(126);//CHANGE #7.9: MAKE THE SHAPE FADE IN AND OUT 2 BY 2, ONE USING A COSINE WAVE AND THE OTHER A SINE WAVE SO THEY'LL BE "OPPOSITES"
      fade2=126+cos(radians(fade))*(126);//CHANGE #7.10: MAKE THE SHAPE FADE IN AND OUT 2 BY 2, ONE USING A COSINE WAVE AND THE OTHER A SINE WAVE SO THEY'LL BE "OPPOSITES"
    }
  
  if (savePDF) 
    {
      savePDF = false;
      endRecord();
    }

  clickChange = constrain(clickChange,30,300); //CHANGE #6.2: MAKE THE 4 SHAPES MOVE APART FROM EACH OTHER WHEN MOUSE IS CLICKED AND REVERT BACK WHEN MOUSE RELEASED
  if (mousePressed==true) {clickChange+=5;} else {clickChange-=5;} //CHANGE #6.3: MAKE THE 4 SHAPES MOVE APART FROM EACH OTHER WHEN MOUSE IS CLICKED AND REVERT BACK WHEN MOUSE RELEASED
}


void keyPressed() 
{
  if (key=='s' || key=='S') saveFrame(timestamp()+"_##.png");
  if (key=='p' || key=='P') savePDF = true;
}

// timestamp
String timestamp() 
{
  Calendar now = Calendar.getInstance();
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", now);
}


// Generative Gestaltung, ISBN: 978-3-87439-759-9
// First Edition, Hermann Schmidt, Mainz, 2009
// Hartmut Bohnacker, Benedikt Gross, Julia Laub, Claudius Lazzeroni
// Copyright 2009 Hartmut Bohnacker, Benedikt Gross, Julia Laub, Claudius Lazzeroni
//
// http://www.generative-gestaltung.de
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
