//Aven, See Through Kinect, Spring 2018
//http://aven.cc
//https://github.com/aaaven/STK2018/wiki/

import generativedesign.*;

PImage img;
color[] colors;
int colorIndex = 0;
String str = "Start";
boolean save =false;
//int gridX = 12, gridY = 16;
void setup() {
  size(120, 160);
  noStroke();
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
    int px = colorIndex % width;
    int py =  (int)colorIndex / width;
    stroke(colors[colorIndex]);
    point(px, py);
    
    //fill(colors[colorIndex]);
    //if ((px % gridX == 0) && (py % gridY == 0)) {
    //  rect(px, py, gridX, gridY);
    //}
    
    colorIndex++;
  }
  if (save) {
    String filename = "screenshot/" + str + "###.png";
    saveFrame(filename);
    save = false;
  }
}