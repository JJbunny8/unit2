//Jennifer Wu
// Feb 12, 2025
// 2-3

// VARIABLES ============================================================
int bg1, bg2, bg3;
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
  compassX = 1000;
  
} // END SETUP ==========================================================





void draw () { // =======================================================
  //sky
  background(#BCEDFF);

  // background buildings
  fill(#B2B1B7);
  rect(bg1, 100, 200, 600);
  rect(bg2, 100, 200, 600);
  rect(bg3, 100, 200, 600);

  //move buildings
  bg1 = bg1 +2;
  bg2 = bg2 +2;
  bg3 = bg3 +2;
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
  compassX = compassX - 2;
  
  //loop bus
  if (compassX < -400) {
    compassX = 1000;
  }

} // END DRAW ===========================================================

//              Paremeters
void compass(int x, int y) { //======================================================
  pushMatrix();
  translate (x, y);
  //bus
  fill(#C91C1C);
  rect(bus, 400, 320, 180);
  fill(0);
  ellipse(450, 550, 100, 100);
  popMatrix();
  
  
  
} // END COMPASS ========================================================
