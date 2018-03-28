//Aven, See Through Kinect, Spring 2018
//http://aven.cc
//https://github.com/aaaven/STK2018/wiki/

float speed;
float pos;
float c0, c1, c2, c3;
boolean auto;

void draw() {
  if (auto) pos += speed;
  background(0);
  translate(width/2, height/2);
  rotateY(pos);
  lights();
  fill(c0, c1, c2, c3);
  box(100);
}