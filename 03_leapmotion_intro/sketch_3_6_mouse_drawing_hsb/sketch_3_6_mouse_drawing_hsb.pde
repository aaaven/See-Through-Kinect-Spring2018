//Aven, See Through Kinect, Spring 2018
//https://github.com/aaaven/STK2018/wiki/

void setup() {
  size(800, 500);
  background(255);
  colorMode(HSB);
}

void draw() {
  float distance = dist(pmouseX, pmouseY, mouseX, mouseY);
  float constrainedD = constrain(distance, 1, 30);
  float mappedD = map(constrainedD, 1, 30, 30, 1);

  stroke(frameCount%255, 255, 255);
  strokeWeight(mappedD);
  line(pmouseX, pmouseY, mouseX, mouseY);
  //ellipse(mouseX, mouseY, 30,30);

  if (distance > 30) {
    fill(255, 0, 0);
    int numOfDrops = round(distance*0.05);
    for ( int i=0; i<numOfDrops; i++) {
      int dropSize = round(random(3));
      ellipse(mouseX+random(-60, 60), mouseY+random(-60, 60), dropSize, dropSize);
    }
  }
}

void keyPressed() {
   //background(255);
}