//Aven, See Through Kinect, Spring 2018
//https://github.com/aaaven/STK2018/wiki/

int w = 400, h = 200;
float sliderX, sliderY; //to store slider xy values

void setup() {
  size(590, 280);
  stroke(255);
  smooth();
  setupControlP5();
}

void draw() {
  background(0);

  updateControlP5();

  //draw wave with the data
  pushMatrix();
  translate(160, 140);
  fill(50);
  rectMode(CENTER);
  rect(w/2, 0, w, h);
  for (int i=0; i<w; i++) {
    float y0 = sliderY*cos(map(i, 0, sliderX, -PI, PI)); 
    float y1 = sliderY*cos(map(i+1, 0, sliderX, -PI, PI));
    line(i, y0, i+1, y1);
  }
  popMatrix();
  //draw wave with the data
}