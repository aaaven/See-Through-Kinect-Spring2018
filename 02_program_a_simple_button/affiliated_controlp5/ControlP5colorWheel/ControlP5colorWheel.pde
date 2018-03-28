//Aven, See Through Kinect, Spring 2018
//http://aven.cc
//https://github.com/aaaven/STK2018/wiki/

void setup() {
  size(800, 400);
  noStroke();
  setupControlP5();
}

void draw() {  
  background(0);
  fill( colorWheel );
  rect(width/2 + 10, 10, width/2-20, height-20);
}