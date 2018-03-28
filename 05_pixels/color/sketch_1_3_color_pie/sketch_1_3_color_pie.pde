//Aven, See Through Kinect, Spring 2018
//http://aven.cc
//https://github.com/aaaven/STK2018/wiki/

int[] angle = {
  120, 90, 72, 60, 45, 40, 36, 30, 24, 18, 15, 12, 10, 9, 8, 6, 5, 4, 3, 2, 1
};
int num = angle.length-1;
int numstep = -1;

void setup() {
  size(720, 480);
  colorMode(HSB, 360, height, width);
  noStroke();
  frameRate(10);
}


void draw() {
  background(360);
  int rad = 200;
  int gsize = angle[num];

  for (int i =0; i < 360; i+=gsize) {
    fill(i, height-mouseY, width-mouseX);
    beginShape();
    vertex(0.5*width, 0.5*height);

    float sx = 0.5*width + cos(radians(i))*rad;
    float sy = 0.5*height + sin(radians(i))*rad;
    vertex(sx, sy);

    float ex = 0.5*width + cos(radians(i+gsize))*rad;
    float ey = 0.5*height + sin(radians(i+gsize))*rad;
    vertex(ex, ey);

    endShape();
  }

  num += numstep;
  if (num > angle.length-2 || num < 1) numstep *= -1;
}