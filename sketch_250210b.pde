//Jennifer Wu
//Feb 10, 2025
//2-3

//Built in variables:
//  - mouseX, mouseY: these are th coordinates for your mouse pointer


//define your own variables here
int y, x;

void setup() {
  size(600, 600);
  x = 0;
  y = 0; //set the sarting value
  strokeWeight(3);
} // -----end of setup ---------

void draw() {
  background(255);
  ellipse(x, y, 200, 200);
  x = x + 2;
  y = y + 2;
  if (y > 700) {
  y = -100;
  x = -100;
  }
} // -----end of draw ---------
