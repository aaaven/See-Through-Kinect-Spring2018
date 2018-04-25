import processing.video.*;
Capture cam;
PImage camImage;

void setupCam() {
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