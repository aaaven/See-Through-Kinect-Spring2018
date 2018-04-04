//Aven, See Through Kinect, Spring 2018
//http://aven.cc
//https://github.com/aaaven/STK2018/wiki/

PImage img;
color[] colors;

int colorIndex = 0;
void setup() {
  size(240, 320);
  strokeWeight(1);
  //colorMode(HSB, width, height, width);
  colors = new color[width*height];
  img = loadImage("1.jpg");
  img.resize(width, height);
  background(img);
  loadPixels();
  for (int i =0; i < pixels.length; i ++) {
    color c = (color)pixels[i];
    colors[i] = c;
  }
  updatePixels();
  background(0);
  //printArray(colors);
}


void draw() {
  if (colorIndex < colors.length) {
    int x = colorIndex % width;
    int y =  (int)colorIndex / width;
    stroke(colors[colorIndex]);
    point(x, y);
    colorIndex++;
  }
}