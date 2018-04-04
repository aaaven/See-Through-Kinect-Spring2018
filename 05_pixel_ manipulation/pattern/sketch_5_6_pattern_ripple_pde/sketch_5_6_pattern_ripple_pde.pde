PVector[] points;
PImage img, updateImg;

void setup() {
  size(750, 1000);
  //load image
  img = loadImage("1.jpg");
  background(img);
  //create image
  updateImg = createImage(width, height, RGB);
  //initilize points
  points = new PVector[20];
  for (int i = 0; i < points.length; i++) {
    points[i] = new PVector();
  }
}

void draw() {
  background(0);
  image(updateImg, 0, 0);

  img.loadPixels();
  
  updateImg.loadPixels();
  //init updateImg with white pixels
  for (int i = 0; i < updateImg.pixels.length; i ++) {
    updateImg.pixels[i] = color(0);
  }
  //update pattern with original image pixel
  for (int x = 0; x < width; x += 3) {
    for (int y = 0; y < height; y += 3) {
      float d = 0;
      for (int i = 0; i < points.length; i += 3) {
        d += sin(0.08 * dist(x, y, points[i].x, points[i].y));
      }
      d /= points.length;
      int index = y*width + x;
      if (floor(d * 15+ frameCount * 0.1) % 7 == 0) updateImg.pixels[index] = img.pixels[index];
      //pixels[index] = floor(d * 15+ frameCount * 0.1) % 7 == 0 ? #FF2CD2 : #21073E;
    }
  }
  updateImg.updatePixels();
  img.updatePixels();

  for (int i = 0; i < points.length; i++) {
    points[i].set(
      mouseX/2 + width/2 * sin(frameCount*i*0.0011) * sin(frameCount*i*0.0017), 
      mouseY/2 + height/2 * sin(frameCount*i*0.0013) * sin(frameCount*i*0.0019));
  }
}