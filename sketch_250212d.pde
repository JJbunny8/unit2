//Jennifer Wu
// Feb 12, 2025
// 2-3

// VARIABLES ============================================================
int bg1, bg2, bg3, bg4;
int bus;
int compassX;
int compassAngle;
int cloud1;
int cloud2;
int cloud3;
int tower1;
int tower2;
int tower3;
int tower0;
int counter;
int rain1;
int rain2;
int rain3;

void setup() { // =======================================================
  size(800, 600, P2D);

  //initialize background buildings
  bg1 = 0;
  bg2 = 400;
  bg3 = 800;

  // intitialize bus
  bus = 100;
  
  // intitialize compassX
  compassX = 0;
  compassAngle = 0;
  
  // intitialize cloud
  cloud1 = 100;
  cloud2 = 360;
  cloud3 = 650;
  
  // intitialize tower
  tower1 = 0;
  tower2 = 280;
  tower3 = 550;
  tower0 = -250;
  
  // intitialize rain
  rain1 = -10;
  rain3 = -20;
  rain3 = -30;
  
 
  // intitialize counter
  counter = 0;

} // END SETUP ==========================================================


void draw () { // =======================================================
  //sky
  background(#A9D0F5);
  //#BCEDFF
  strokeWeight(1);
  
  //clouds
  stroke(#F2F2F2);
  fill(#F2F2F2);
  ellipse(cloud1, 80, 60, 40);
  ellipse(cloud1 + 20, 60, 60, 40);
  ellipse(cloud1 + 50, 80, 60, 40);
  
  ellipse(cloud2, 80, 60, 40);
  ellipse(cloud2 + 20, 60, 60, 40);
  ellipse(cloud2 + 50, 80, 60, 40);
  
  ellipse(cloud3, 80, 60, 40);
  ellipse(cloud3 + 20, 60, 60, 40);
  ellipse(cloud3 + 50, 80, 60, 40);
  
  //rain
  stroke(#5882FA);
  fill(#5882FA);
  ellipse(40, rain1, 5, 10);
  ellipse(120, rain2, 5, 10);
  ellipse(200, rain3, 5, 10);
  
  ellipse(380, rain1, 5, 10);
  ellipse(460, rain2, 5, 10);
  ellipse(540, rain3, 5, 10);
  
  ellipse(620, rain1, 5, 10);
  ellipse(700, rain2, 5, 10);
  ellipse(780, rain3, 5, 10);
  
  // background buildings
  //building1
  strokeWeight(1);
  stroke(0);
  fill(#B2B1B7);
  rect(bg1 + 100, 250, 300, 500);
  rect(bg1, 130, 200, 500);
  
  //windows1
  fill(#FDF3BD);
  rect(bg1 + 20, 160, 60, 70);
  rect(bg1 + 120, 160, 60, 70);
  
  rect(bg1 + 20, 280, 60, 70);
  rect(bg1 + 120, 280, 60, 70);
  
  rect(bg1 + 220, 290, 60, 70);
  rect(bg1 + 320, 290, 60, 70);
   
  //building2
  fill(#B2B1B7);
  rect(bg2 + 100, 250, 300, 500);
  rect(bg2, 130, 200, 500);
  
  //windows2
  fill(#FDF3BD);
  rect(bg2 + 20, 160, 60, 70);
  rect(bg2 + 120, 160, 60, 70);
  
  rect(bg2 + 20, 280, 60, 70);
  rect(bg2 + 120, 280, 60, 70);
  
  rect(bg2 + 220, 290, 60, 70);
  rect(bg2 + 320, 290, 60, 70);
  
  //building3
  fill(#B2B1B7);
  rect(bg3 + 100, 250, 302, 500);
  rect(bg3, 130, 200, 500);
  
  //windows3
  fill(#FDF3BD);
  rect(bg3 + 20, 160, 60, 70);
  rect(bg3 + 120, 160, 60, 70);
  
  rect(bg3 + 20, 280, 60, 70);
  rect(bg3 + 120, 280, 60, 70);
  
  rect(bg3 + 220, 290, 60, 70);
  rect(bg3 + 320, 290, 60, 70);
  
 //tower 0
  fill(#FFDD7E);
  rect(tower0 + 70, 390, 200, 90);
  rect(tower0, 300, 110, 300);
  fill(#615D6A);
  triangle(tower0, 300, tower0 + 60, 200, tower0 +110, 300);
  
  //window0
  rect(tower0 + 35, 350, 40, 60);

  //tower 1
  fill(#FFDD7E);
  rect(tower1 +50, 390, 230, 90);
  rect(tower1, 300, 110, 300);
  fill(#615D6A);
  triangle(tower1, 300, tower1 +60, 200, tower1 +110, 300);
  
  //window1
  rect(tower1 + 35, 350, 40, 60);
  
  //tower 2
  fill(#FFDD7E);
  rect(tower2 + 50, 390, 230, 90);
  rect(tower2, 300, 110, 300);
  fill(#615D6A);
  triangle(tower2, 300, tower2 + 60, 200, tower2 +110, 300);
  
  //window2
  rect(tower2 + 35, 350, 40, 60);
  
  //tower 3
  fill(#FFDD7E);
  rect(tower3 + 70, 390, 203, 90);
  rect(tower3, 300, 110, 300);
  fill(#615D6A);
  triangle(tower3, 300, tower3 +60, 200, tower3 +110, 300);
  
  //window3
  rect(tower3 + 35, 350, 40, 60);

  //move buildings
  bg1 = bg1 + 2;
  bg2 = bg2 + 2;
  bg3 = bg3 + 2;
  // loop the buildings
  if (bg1 > 800) {
    bg1 = -400;
  }
  if (bg2 > 800) {
    bg2 = -400;
  }
  if (bg3 > 800) {
    bg3 = -400;
  }

//move clouds
  cloud1 = cloud1 + 1;
  cloud2 = cloud2 + 1;
  cloud3 = cloud3 + 1;
  // loop the clouds
  if (cloud1 > 830) {
    cloud1 = -80;
  }
  if (cloud2 > 830) {
    cloud2 = -80;
  }
  if (cloud3 > 830) {
    cloud3 = -80;
  }
  
  rain1 = rain1 + 6;
  rain2 = rain2 + 6;
  rain3 = rain3 + 6;
  //loop rain
 if (rain1 > 260) {
    rain1 = -10;
  }
  if (rain2 > 260) {
    rain2 = -20;
  }
  if (rain3 > 260) {
    rain3 = -30;
  }
  
  //move towers
  tower1 = tower1 + 3;
  tower2 = tower2 + 3;
  tower3 = tower3 + 3;
  tower0 = tower0 + 3;
  // loop the clouds
  if (tower1 > 800) {
    tower1 = -270;
  }
  if (tower2 > 800) {
    tower2 = -270;
  }
  if (tower3 >800) {
    tower3 = -270;
  }
  if (tower0 >800) {
    tower0 = -270;
  }
  
  //ground
  fill(#4D4D52);
  rect(0, 450, 800, 150);
  fill(255);
  rect(30, 510, 100, 25);
  rect(230, 510, 100, 25);
  rect(430, 510, 100, 25);
  rect(630, 510, 100, 25);
  
  compass(compassX, 0, compassAngle);
  
  compassX = compassX + 4;
  compassAngle = compassAngle + 4;
  if (compassX > 900) {
    compassX = -500;
    
  }
} // END DRAW ===========================================================

//              Paremeters
void compass(int x, int y, int angle) { //==========================================
  stroke(0);
  
  pushMatrix();
  translate (x, y);
  //bus
  fill(#C91C1C);
  rect(150, 470, 300, 60);
  rect(100, 360, 320, 170);
  fill(#F5E8BE);
  rect(100, 415, 320, 8);
  
  fill(#CBF5FF);
  rect(370, 430, 50, 40);
  rect(290, 437, 40, 30);
  rect(210, 437, 40, 30);
  rect(130, 437, 40, 30);
  
  rect(370, 375, 40, 30);
  rect(290, 375, 40, 30);
  rect(210, 375, 40, 30);
  rect(130, 375, 40, 30);
  
  pushMatrix();
  fill(0);
  translate(170, 530);
  rotate(radians(angle));
  ellipse(0, 0, 60, 60);
  fill(255);
  ellipse(0, 0, 30, 30);
  stroke(255);
  line(0, 0, 30, 0);
  line(0, 0, -30, 0);
  popMatrix();
  
  pushMatrix();
  fill(0);
  translate(360, 530);
  rotate(radians(angle));
  stroke(0);
  ellipse(0, 0, 60, 60);
  fill(255);
  ellipse(0, 0, 30, 30);
  stroke(255);
  line(0, 0, 30, 0);
  line(0, 0, -30, 0);
  popMatrix();
  
  counter = counter + 1;
  if (counter < 30) {
    fill(#F7F8E0);
    ellipse(450, 500, 20, 30);  
  }
  if (counter > 30) {
    fill(#FFFF00);
    ellipse(450, 500, 20, 30);  
  }
  if (counter == 50) {
    counter = 0;
  }
  
  popMatrix();

  
} // END COMPASS ========================================================
