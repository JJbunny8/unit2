//Jennifer Wu
//Feb 11, 2025
//2-3

//Built in variables:
//  - mouseX, mouseY: these are th coordinates for your mouse pointer


//define your own variables here
int w;

void setup() {
  size(600, 600);
  w = 0; //set the sarting value
  strokeWeight(3);
} // -----end of setup ---------

void draw() {
  background(255);
  ellipse(300, 300, w, w);
  w = w + 4;
  if (w > 850) {
  w = 0;
  }
} // -----end of draw ---------
