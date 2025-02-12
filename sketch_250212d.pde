//Jennifer Wu
// Feb 12, 2025
// 2-3

// VARIABLES ============================================================
int bg1, bg2, bg3;
int bunny;



void setup() { // =======================================================
  size(800, 600);
  
  //initialize background hills
  bg1 = 0;
  bg2 = 400;
  bg3 = 800;

  // intitialize bunny
  bunny = 100;

} // END SETUP ==========================================================





void draw () { // =======================================================
  //sky
  background(#BCEDFF);
  
  // background hills
  fill(#109B3F);
  ellipse(bg1, 400, 400,400);
  ellipse(bg2, 400, 400,400);
  ellipse(bg3, 400, 400,400);
  //move hills
  bg1 = bg1 +2;
  bg2 = bg2 +2;
  bg3 = bg3 +2; 
  // loop the hilla
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
  fill(#FFE26C);
  rect(0, 400, 800, 200);

  //blob
  fill(255);
  ellipse(bunny, 400, 200, 200); //head
  ellipse(bunny-50, 300, 50, 100); //left ear
  ellipse(bunny+50, 300, 50, 100); //right ear
  // move bunny
  bunny = bunny + 10;

} // END DRAW ===========================================================
