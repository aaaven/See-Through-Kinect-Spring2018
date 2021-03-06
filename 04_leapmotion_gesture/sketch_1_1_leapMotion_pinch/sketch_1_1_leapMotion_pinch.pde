//Aven, See Through Kinect, Spring 2018
//https://github.com/aaaven/STK2018/wiki/


float finger1X, finger1Y;
float finger2X, finger2Y;
boolean isPinch = false;
color clr;

void setup() {
  // OPENGL(depricated) to P3D
  size(800, 500, P3D);
  background(255);
  noStroke();
  LeapSetup();
}


void draw() {
  LeapRun();
  background(255);
  float distance = dist(finger1X, finger1Y, finger2X, finger2Y);
  if (distance < 30) {
    isPinch = true;
    clr = color(0,255,0);
  } else {
    isPinch = false;
    clr = color(255,0,0);
  }
  println(isPinch);
  
  fill(clr);
  ellipse(width/2,3*height/4,50,50);


  /*debug
  fill(255, 0, 0, 200);
  ellipse(finger1X, finger1Y, distance, distance);

  fill(255, 255, 0200);
  ellipse(finger2X, finger2Y, distance, distance);
  */
}