//Aven, See Through Kinect, Spring 2018
//http://aven.cc
//https://github.com/aaaven/STK2018/wiki/

float fre = 0.1;
float rad = 3;

void setup() {
  size(600, 800);
  noStroke();
  background(0);
  //printArray(colors);

}

void draw() {
  float sinValue = sin(fre*frameCount);
  float cosValue = cos(fre*frameCount);

  float x = 0.5 * width + cosValue*rad;
  float y = 0.5 * height + sinValue*rad;

  int index = int(y)*width + int(x);
  stroke(255);
  point(x, y);

  rad+=0.05;
}