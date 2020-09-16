/* Lab 1AC
Trent Otash
Scale many shapes example 
- contains scaled ellipse
- contains scaled rectangle
- contains scaled triangle
*/

// scalars
float small = 1.5;
int med = 4;
int huge = 10;

void setup(){
  // drawing surface size and color
  size(500, 500);
  background(random(255), random(255), random(255));
  
  // initial settings
  noStroke();           // no object outlines
  ellipseMode(CENTER);  // draw ellipses from center
  rectMode(CENTER);     // draw rectangles from center 
  //framerate because the colors changing color every second was distracting
  frameRate(5);
  
  // --- ellipse 
  // set fill color
  fill(random(255), random(255), random(255));
  ellipse( random(250), random(250), random(450), small*50); // (x, y, r1, r2)
  ellipse( random(250), random(250), random(450), med*50);
  ellipse( random(450), random(250), random(450), huge*50);
  
  // --- rectangle
  // set fill color
  fill(random(255), random(255), random(255));
  rect( random(250), random(250), random(450), med*50);   // (x, y, w, h)
  rect( random(250), random(250), random(450), huge*50);
  rect( random(450), random(250), random(450), small*50);
  
  
  // --- triangle
  // set fill color
  fill(random(255), random(255), random(255));
  // left
  triangle( huge*25, random(500), huge*50, random(500), huge*75, random(500)); // (x1, y1, x2, y2, x3, y3)
  // center <- ends up leftmost due to scalar
  triangle( small*25, random(500), small*50, random(500), small*75, random(500));
  // right  <- ends up middle due to scalar
  triangle( med*25, random(500), med*50, random(500), med*75, random(500));
}

void draw(){
//there is nothing in the draw function because it would change the pattern every frame and I would rather it be a different pattern every time the code is run.
}
