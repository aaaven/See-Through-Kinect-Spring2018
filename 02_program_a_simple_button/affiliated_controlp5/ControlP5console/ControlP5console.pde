//Aven, See Through Kinect, Spring 2018
//http://aven.cc
//https://github.com/aaaven/STK2018/wiki/

void setup() {
  size(500, 400);
  fill(110, 255, 220);  
  noStroke();
  frameRate(50);
  ellipseMode(CENTER);
  setupControlP5();
}


void draw() {
  background(128);
  float n = sin(frameCount*0.01)*300;
  ellipse(300, height/2, n, n);  
  println(frameCount+"\t"+String.format("%.2f", frameRate)+"\t"+String.format("%.2f", n));
}