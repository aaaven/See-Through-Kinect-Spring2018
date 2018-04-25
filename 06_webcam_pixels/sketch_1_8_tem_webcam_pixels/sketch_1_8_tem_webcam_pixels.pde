//Aven, See Through Kinect, Spring 2018
//http://aven.cc
//https://github.com/aaaven/STK2018/wiki/


float amp = 45;

void setup() {
  size(640, 360);
  noStroke();
  ellipseMode(CENTER);
  setupCam();
  camImage = createImage(width, height, ARGB);
}

void draw() {
  background(20);

  if (cam.available()) {
    cam.read();
    camImage = cam;
  }
  camImage.loadPixels();

  //draw rotate circles
  //------------------------------------------------------------------------------------
  for (int i = 0; i < 360; i += 15) {
    for (int j = 0; j < 360; j += 5) {
      int x = int(width/2 + sin(radians(i-frameCount))*amp + sin(radians(j))*amp*1.5);
      int y = int(height/2 + cos(radians(i-frameCount))*amp + cos(radians(j))*amp*1.5);
      float size = sin(radians(j-i-frameCount*2))*5;    
      if (size < 1) size = 1;

      fill(camImage.pixels[x + y*width]);      

      ellipse(x, y, size, size);
    }
  }
  //draw rotate circles
  //------------------------------------------------------------------------------------

  camImage.updatePixels();
}