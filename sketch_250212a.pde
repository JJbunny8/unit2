//Jennifer Wu
//Feb 12, 2025
//2-3

//Built in variables:
//  - mouseX, mouseY: these are th coordinates for your mouse pointer


//define your own variables here
int x;

void setup() {
  size(600, 600);
  x = 600; //set the sarting value
  strokeWeight(3);
} // -----end of setup ---------

void draw() {
  background(255);
  ellipse(x, 300, 200, 200);
  x = x - 3;
  if (x < -100) {
  x = 700;
  }
} // -----end of draw ---------
