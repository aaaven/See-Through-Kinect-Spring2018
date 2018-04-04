//Aven, See Through Kinect, Spring 2018
//http://aven.cc
//https://github.com/aaaven/STK2018/wiki/


PImage img;
color[] colors;

int gridX=5, gridY=5;
int colorIndex = 0;
void setup() {
  size(600, 800);
  noStroke();
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
  //printArray(colors);

}


void draw() {
  
  /*
  for (int y = 0; y < ycount; y++) {
    for (int x = 0; x < xcount; x++) {
      //get rect location
      int px = int(x*gridX);
      int py = int(y*gridY);
      //get color index
      int index = py*width + px;
      fill(colors[index]);
      rect(px, py, gridX, gridY);
    }
  }
    }
  }
  */
  for (int y = 0; y < height; y+=gridY) {
    for (int x = 0; x < width; x+=gridX) {
      //get color index
      int index = y*width + x;
      fill(colors[index]);
      rect(x, y, gridX, gridY);
    }
  }
}