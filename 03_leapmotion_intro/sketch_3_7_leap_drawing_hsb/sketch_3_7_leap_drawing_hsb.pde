//Aven, See Through Kinect, Spring 2018
//https://github.com/aaaven/STK2018/wiki/

float pFinger1X, pFinger1Y;
float finger1X, finger1Y;

void setup() {
  size(800, 500);
  background(255);
  colorMode(HSB);
  LeapSetup();
}

void draw() {
  LeapRun();

  float distance = dist(pFinger1X, pFinger1Y, finger1X, finger1Y);
  float constrainedD = constrain(distance, 1, 30);
  float mappedD = map(constrainedD, 1, 30, 30, 1);

  stroke(frameCount%255, 255, 255);
  strokeWeight(mappedD);
  line(pFinger1X, pFinger1Y, finger1X, finger1Y);
  //ellipse(mouseX, mouseY, 30,30);

  if (distance > 30) {
    fill(255, 0, 0);
    int numOfDrops = round(distance*0.05);
    for ( int i=0; i<numOfDrops; i++) {
      int dropSize = round(random(3));
      ellipse(finger1X+random(-60, 60), finger1Y+random(-60, 60), dropSize, dropSize);
    }
  }

  // save the current finger position
  pFinger1X = finger1X;
  pFinger1Y = finger1Y;
}

void keyPressed() {
  //background(255);
}