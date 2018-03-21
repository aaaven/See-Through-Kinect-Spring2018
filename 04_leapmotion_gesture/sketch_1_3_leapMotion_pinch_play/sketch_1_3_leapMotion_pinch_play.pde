//Aven, See Through Kinect, Spring 2018
//https://github.com/aaaven/STK2018/wiki/

float finger1X, finger1Y;
float finger2X, finger2Y;
boolean isPinch = false, prePinch = false;

void setup() {
  // OPENGL(depricated) to P3D
  size(800, 500, P3D);
  background(255);
  noStroke();
  LeapSetup();
  setupSound();
}


void draw() {
  background(255);
  LeapRun();

  float distance = dist(finger1X, finger1Y, finger2X, finger2Y);

  if (distance < 30) {
    //isPinch 
    fill(200, 200);
    ellipse(finger1X, finger1Y, 300, 300);
    isPinch = true;
  } else {
    isPinch = false;
  }
  //on pinch
  //prePinch = false, isPinch =true
  if (!prePinch&&isPinch) {
    //onPinch
    soundfile.play();
  }
  //off pinch
  //prePinch = true, isPinch = false
  if(prePinch&&!isPinch){
    //offPinch
      soundfile.stop();
  }

  fill(255, 0, 0, 200);
  ellipse(finger1X, finger1Y, 30, 30);

  fill(255, 255, 0200);
  ellipse(finger2X, finger2Y, 30, 30);

  prePinch = isPinch;
}