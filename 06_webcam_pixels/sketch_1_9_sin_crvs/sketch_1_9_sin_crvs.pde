//Aven, See Through Kinect, Spring 2018
//http://aven.cc
//https://github.com/aaaven/STK2018/wiki/

int count = 20, MAX = 440;
float r = 150,d = 8.25;

void setup() {
  size(640, 320);
  smooth();
  noStroke();
}

void draw() {

  background(100);
  fill(240,100);
  for (int round = 1; round < count; round++) {
    for (int a = 0; a <= 360; a ++) {
      float progress = constrain(map(frameCount%MAX, 0+round*d, MAX+(round-count)*d, 0, 1), 0, 1);
      float ease = -0.5*(cos(progress * PI) - 1);
      float phase = 2*PI*ease + PI + radians(map(frameCount%MAX, 0, MAX, 0, 360));

      float x = map(a, 0, 360, -r, r) + width*0.5;
      float y = r * sqrt(1 - pow((x - width*0.5)/r, 2)) * sin(radians(a) + phase) + 160;
      ellipse(x, y, 3, 3);
    }
  }
}