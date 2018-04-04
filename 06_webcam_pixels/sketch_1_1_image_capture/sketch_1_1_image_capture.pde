//Aven, See Through Kinect, Spring 2018
//http://aven.cc
//https://github.com/aaaven/STK2018/wiki/


//video -> capture ->GettingStartedCapture example
import processing.video.*;
Capture cam;

void setup() {
  size(640, 360);
  String[] cameras = Capture.list();
  if (cameras.length == 0) {
    println("There are no cameras available for capture.");
    exit();
  } else {
    println("Available cameras:");
    printArray(cameras);//print out all aviable cameras
    cam = new Capture(this, cameras[3]); //choose the one you want to use
    cam.start();
  }
}


void draw() {
  if (cam.available()) {
    cam.read();
  }
  image(cam, 0, 0);
}