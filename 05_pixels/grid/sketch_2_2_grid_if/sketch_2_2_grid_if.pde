//Aven, See Through Kinect, Spring 2018
//http://aven.cc
//https://github.com/aaaven/STK2018/wiki/

PImage img;
color[] colors;
//grid dimension
int xcount = 60, ycount = 80;
float gridX, gridY;

int colorIndex = 0;
void setup() {
  size(600, 800);
  noStroke();
  //colorMode(HSB, width, height, width);
  colors = new color[xcount*ycount];
  img = loadImage("1.jpg");
  img.resize(width, height);

  //grid dimension
  gridX = width/xcount;
  gridY = height/ycount;
  //load pic color data into colors array
  for (int y = 0; y < ycount; y++) {
    for (int x = 0; x < xcount; x++) {
      int index = y*xcount + x;
      int px = int(x*gridX);
      int py = int(y*gridY);
      colors[index] = img.get(px, py);
      //println(index);
    }
  }
  printArray(colors);
}


void draw() {
  if (colorIndex < colors.length) {
    int x = colorIndex % xcount;
    int y =  (int)colorIndex / xcount;
    float px = x*gridX;
    float py = y*gridY;
    fill(colors[colorIndex]);
    rect(px, py, gridX, gridY);
    colorIndex++;
  }
}