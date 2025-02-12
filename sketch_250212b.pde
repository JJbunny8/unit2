//Jennifer Wu
//Feb 12, 2025
//2-3

//Built in variables:
//  - mouseX, mouseY: these are th coordinates for your mouse pointer


//define your own variables here
int x, d;

void setup() {
  size(600, 600);
  x = 0; //set the sarting value
  d = 0;
  strokeWeight(3);
} // -----end of setup ---------

void draw() {
  background(255);
  ellipse(x, 300, d, d);
  x = x + 5;
  d = d + 1;
  if (x > 700) {
  x = 0;
  d = 0;
  }
} // -----end of draw ---------
