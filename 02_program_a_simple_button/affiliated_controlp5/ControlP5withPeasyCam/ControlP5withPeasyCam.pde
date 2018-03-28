//Aven, See Through Kinect, Spring 2018
//http://aven.cc
//https://github.com/aaaven/STK2018/wiki/


void setup() {
  size(400, 400, P3D);
  setupCam();
  setupControlP5();
}
void draw() {
  background(0);
  drawGUI();

  fill(fColor);
  box(boxSize);
  pushMatrix();
  translate(0, 0, 20);
  box(5);
  popMatrix();
}