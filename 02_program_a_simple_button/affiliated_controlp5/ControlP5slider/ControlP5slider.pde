//Aven, See Through Kinect, Spring 2018
//https://github.com/aaaven/STK2018/wiki/

void setup() {
  size(700, 400);
  noStroke();
  setupControlP5();
}

void draw() {
  background(0);

  fill(sliderValue1);
  rect(0, 0, width, 100);

  fill(sliderTicks1);
  rect(0, 100, width/2, 250);

  fill(sliderValue2);
  rect(width/2, 100, width/2, 250);

  fill(sliderTicks2);
  rect(0, 350, width, 50);
}