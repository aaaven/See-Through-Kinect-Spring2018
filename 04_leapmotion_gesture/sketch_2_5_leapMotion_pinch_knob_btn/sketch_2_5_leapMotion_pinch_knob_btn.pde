//Aven, See Through Kinect, Spring 2018
//https://github.com/aaaven/STK2018/wiki/

float finger1X, finger1Y;
float finger2X, finger2Y;
boolean debugMode = false,isPinch = false, prePinch = false;
color clr;

void setup() {
  // OPENGL(depricated) to P3D
  size(800, 500, P3D);
  background(255);
  LeapSetup();
  setupSound();
}


void draw() {
  LeapRun();
  background(0);


  //caculate
  PVector finger1 = new PVector(finger1X, finger1Y);
  PVector finger2 = new PVector(finger2X, finger2Y);

  PVector dist = PVector.sub(finger1, finger2);

  //debugMode
  float distance = dist.mag();
  if (debugMode) {
    pushStyle();
    fill(clr);
    ellipse(finger1.x, finger1.y, distance, distance);
    ellipse(finger2.x, finger2.y, distance, distance);
    popStyle();
  }

  //button
  if (distance < 30) {
    //isPinch 
    isPinch = true;
  } else {
    isPinch = false;
  }
  //on pinch
  //prePinch = false, isPinch =true
  if (!prePinch&&isPinch) {
    //onPinch
    soundfile.stop();
    clr = color(255,0,0);
  }
  //off pinch
  //prePinch = true, isPinch = false
  if (prePinch&&!isPinch) {
    //offPinch
    soundfile.play();
    clr = color(0,255,0);
  }



  //stablize
  dist.normalize();
  dist.mult(100);

  //get angle
  float angle = dist.heading();

  float dAngle;
  if (angle<0) {
    dAngle = angle + 2*PI;
  } else {
    dAngle = angle;
  }

  pushMatrix();
  translate(width/2, height/2);
  fill(255, 15);
  ellipse(0, 0, 110, 110);
  fill(51);
  arc(0, 0, 100, 100, 0, dAngle);
  fill(0, 100);
  arc(0, 0, 80, 80, 0, dAngle);
  ellipse(0, 0, 40, 40);
  //dAngle = map(dAngle, 0, 360, 0, 100);
  fill(199);
  textSize(20);
  int textAngle = round(degrees(dAngle));
  text(textAngle, 120, 120);
  popMatrix();
  println(dAngle);

  soundfile.amp(0.01*textAngle);

  prePinch = isPinch;
}

void keyPressed() {
  if (key == ' ') {
    debugMode = ! debugMode;
  }
}