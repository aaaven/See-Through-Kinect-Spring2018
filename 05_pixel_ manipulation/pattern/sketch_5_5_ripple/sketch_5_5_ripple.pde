//Aven, See Through Kinect, Spring 2018
//http://aven.cc
//https://github.com/aaaven/STK2018/wiki/

PVector[] points;

void setup() {
  size(800, 800);
  //initilize points
  points = new PVector[20];
  for (int i = 0; i < points.length; i++) {
    points[i] = new PVector();
  }
}

void draw() {
  background(0);
  
  loadPixels();
  for (int x = 0; x < width; x += 3) {
    for (int y = 0; y < height; y += 3) {
      float d = 0;
      for (int i = 0; i < points.length; i += 3) {
        d += sin(0.08 * dist(x, y, points[i].x, points[i].y));
      }
      d /= points.length;
      int index = y*width + x;
      if (floor(d * 15+ frameCount * 0.1) % 7 == 0) pixels[index] = #FF2CD2;
      else pixels[index] = #21073E;
      //pixels[index] = floor(d * 15+ frameCount * 0.1) % 7 == 0 ? #FF2CD2 : #21073E;
    }
  }
  updatePixels();

  for (int i = 0; i < points.length; i++) {
    points[i].set(
      mouseX/2 + width/2 + width/2 * sin(frameCount*i*0.0011) * sin(frameCount*i*0.0017), 
      mouseY/2 + height/2 * sin(frameCount*i*0.0013) * sin(frameCount*i*0.0019));
  }
}