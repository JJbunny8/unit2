//Jennifer Wu
// Feb 12, 2025
// 2-3

// VARIABLES ============================================================
int bg1, bg2, bg3, bg4;
int bus;
int compassX;



void setup() { // =======================================================
  size(800, 600, P2D);

  //initialize background buildings
  bg1 = 0;
  bg2 = 400;
  bg3 = 800;

  // intitialize bus
  bus = 100;
  
  // intitialize compassX
  compassX = -400;
  
} // END SETUP ==========================================================





void draw () { // =======================================================
  //sky
  background(#BCEDFF);
  
  strokeWeight(0);

  // background buildings
  fill(#B2B1B7);
  rect(bg1, 130, 200, 500);
  rect(bg1 + 200, 250, 300, 500);
  rect(bg2, 130, 200, 500);
  rect(bg3, 130, 200, 500);
 
  //towers
  fill(#FFDD7E);
  rect(300, 300, 110, 300);
  rect(350, 390, 200, 90);
  fill(#615D6A);
  triangle(300, 300, 360, 200, 410, 300);

  //move buildings
  bg1 = bg1 + 1;
  bg2 = bg2 + 1;
  bg3 = bg3 + 1;
  // loop the buildings
  if (bg1 > 1000) {
    bg1 = -200;
  }
  if (bg2 > 1000) {
    bg2 = -200;
  }
  if (bg3 > 1000) {
    bg3 = -200;
  }

  
  //ground
  fill(#4D4D52);
  rect(0, 450, 800, 150);
  fill(255);
  rect(30, 510, 100, 25);
  rect(230, 510, 100, 25);
  rect(430, 510, 100, 25);
  rect(630, 510, 100, 25);
  
  compass(compassX, 0);
  
  // move bus
  //compassX = compassX + 3;
  
  //loop bus
  if (compassX > 900) {
    compassX = -500;
  }

} // END DRAW ===========================================================

//              Paremeters
void compass(int x, int y) { //==========================================
  pushMatrix();
  translate (x, y);
 
  //Ferris Wheel
  fill(255);
  ellipse(0, 300, 300, 300);
  
  //bus
  fill(#C91C1C);
  rect(150, 470, 300, 60);
  rect(100, 360, 320, 170);
  fill(#F5E8BE);
  rect(100, 430, 320, 8);
  fill(0);
  ellipse(360, 530, 60, 60);
  ellipse(170, 530, 60, 60);
  
  
  
  
  
  popMatrix();
  
  
  
} // END COMPASS ========================================================
