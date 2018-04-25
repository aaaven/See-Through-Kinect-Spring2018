//Aven,04/16/2017
//Interactive Installation
//New Media, WPP, SADA

import processing.video.*;

Capture cam;
PImage img;
color pcolor;
int t = 20;

PGraphics pg;
void setup() {
  size(640, 360);
  String[] cameras = Capture.list();
  if (cameras.length == 0) {
    println("No cameras available.");
    exit();
  } else {
    println("Available cameras:");
    for (int i = 0; i < cameras.length; i++) {
      println(i + ": " + cameras[i]);
    }
    cam = new Capture(this, cameras[3]); // index[3]: 640x360, 30fps
    cam.start();
  }
  //create an empty PImage object
  img = createImage(640, 360, ARGB); //ARGB, if you want to add alpha  //not RGBA
  pg = createGraphics(width, height);
}


void draw() {
  if (cam.available()) {
    cam.read();
    cam.loadPixels();
  }
  img.loadPixels();
  int h = cam.height;
  int w = cam.width;
  int sumX = 0, sumY = 0, count = 0;
  for (int y = 0; y < h; y++) {
    for (int x = 0; x < w; x++) {
      int i =  x + y*w; // IMPORTANT

      int r = int( red(cam.pixels[i]) ); 
      int g = int( green(cam.pixels[i]) );
      int b = int( blue(cam.pixels[i]) );

      int tr = (int)abs(r - red(pcolor));
      int tg = (int)abs(g - green(pcolor));
      int tb = (int)abs(b - blue(pcolor));

      if (tr < t && tg < t && tb < t) {
        img.pixels[i] = color(255, 255, 0);
        sumX += x;
        sumY += y;
        count ++;
      } else {
        img.pixels[i] = color(0, 0);
      }
    }
  }
  img.updatePixels();
  //display PImage img instead of cam object
  image(cam, 0, 0);
  image(img, 0, 0);

  //get average
  if (count != 0) {
    float ax = sumX/count;
    float ay = sumY/count;
    println("x" + ax + "y" + ay);

    pg.beginDraw();
    pg.fill(255, 50);
    pg.noStroke();
    for (int i =0; i < 6; i++) {
      pg.pushMatrix();
      pg.translate(ax, ay);
      pg.rotate(i*PI/3);
      pg.ellipse(0, 50, 30, 30);
      pg.popMatrix();
    }
    pg.endDraw();
    //pushStyle();
    //stroke(255);
    //strokeWeight(1);
    //line(ax, 0, ax, height);
    //line(0, ay, width, ay);
    //popStyle();
    image(pg, 0, 0);
  } else {
    pg = createGraphics(width, height);
  }

  //saveFrame("video-######.jpg");
}

void mousePressed() {
  pcolor = cam.get(mouseX, mouseY);
}