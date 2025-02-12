//Jennifer Wu
//Feb 12, 2025
//2-3

//Built in variables:
//  - mouseX, mouseY: these are th coordinates for your mouse pointer


//define your own variables here
int y1, y2;

void setup() {
  size(600, 600);
  y1 = -100; //set the sarting value
  y2 = 700;
  strokeWeight(3);
} // -----end of setup ---------

void draw() {
  background(255);
  ellipse(150, y1, 200, 200);
  ellipse(450, y2, 200, 200);
  y1 = y1 + 4;
  y2 = y2 - 4;
  if (y1 > 700) {
  y1 = -100;
  y2 = 700;
  }
} // -----end of draw ---------
