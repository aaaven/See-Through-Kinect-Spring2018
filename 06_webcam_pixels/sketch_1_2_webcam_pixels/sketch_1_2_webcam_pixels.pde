//Aven, See Through Kinect, Spring 2018
//http://aven.cc
//https://github.com/aaaven/STK2018/wiki/

import processing.video.*;
Capture cam;

void setup() {
  size(640, 360);
  noStroke();
  rectMode(CENTER);
  String[] cameras = Capture.list();
  if (cameras.length == 0) {
    println("No cameras available.");
    exit();
  } else {
    println("Available cameras:");   
    for (int i = 0; i < cameras.length; i++) {
      println(i + ": " + cameras[i]);
    }
    // this is equivalent to:  printArray(cameras);
    
    cam = new Capture(this, cameras[3]); // index[3]: 640x360, 30fps
    cam.start();
  }
}


void draw() {
  if (cam.available()) {
    cam.read();
    cam.loadPixels();
  }
  int w = cam.width;
  int h = cam.height;
  int s = 10;
  for (int y = 0; y < h; y+= s) {
    for (int x = 0; x < w; x+= s) {
      int index =  x + y*w;    
      fill(cam.pixels[index]);
      rect(x,y,0.8*s,0.8*s);
    }
  }
  cam.updatePixels();
}