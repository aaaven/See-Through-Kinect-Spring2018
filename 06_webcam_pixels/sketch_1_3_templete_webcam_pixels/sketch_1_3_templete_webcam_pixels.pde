//Aven, See Through Kinect, Spring 2018
//http://aven.cc
//https://github.com/aaaven/STK2018/wiki/


void setup() {
  size(640, 360);
  noStroke();
  ellipseMode(CENTER);
  setupCam();
}


void draw() {
  if (cam.available()) {
    cam.read();
    cam.loadPixels();
  }
  //drawing demo with pixels array
  int w = cam.width;
  int h = cam.height;
  int s = 20;
  for (int y = 0; y < h; y+= s) {
    for (int x = 0; x < w; x+= s) {
      int index =  x + y*w;    
      fill(cam.pixels[index]);
      ellipse(x,y,s,s);
    }
  }
  
  cam.updatePixels();
}