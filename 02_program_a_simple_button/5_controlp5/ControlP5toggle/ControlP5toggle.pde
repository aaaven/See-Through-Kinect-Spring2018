//Aven, See Through Kinect, Spring 2018
//https://github.com/aaaven/STK2018/wiki/

void setup() {
  size(400, 400);
  smooth(); 
  setupControlP5();
}


void draw() {
  background(0); 
  if (toggleValue) {
    fill(255, 0, 0);
  } else {
    fill(0, 255, 0);
  }
  ellipse(190, 110, 50, 50);

  if (toggle) {
    fill(255, 255, 0);
  } else {
    fill(0, 0, 255);
  }
  ellipse(190, 260, 50, 50);
}