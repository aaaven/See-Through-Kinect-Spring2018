//Aven, See Through Kinect, Spring 2018
//http://aven.cc
//https://github.com/aaaven/STK2018/wiki/

import generativedesign.*;

PImage img;
color[] colors;
int colorIndex = 0;
String str = "Press Space/r/h/s/b/g/q/w/e key and have fun!";
boolean save =false;
void setup() {
  size(600, 800);
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
  if (save) {
    String filename = "screenshot/" + str + "#####.png";
    saveFrame(filename);
    save = false;
  } 
  noStroke();
  textSize(20);
  text(str, 20, 20);
}

void displayColor(color[] _colors) {
  background(199);
  while (colorIndex < _colors.length) {
    int x = colorIndex % width;
    int y =  (int)colorIndex / width;
    strokeWeight(1);
    stroke(_colors[colorIndex]);
    point(x, y);
    colorIndex++;
  }
  colorIndex = 0;
}