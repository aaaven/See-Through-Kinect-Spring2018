//Aven, See Through Kinect, Spring 2018
//https://github.com/aaaven/STK2018/wiki/OOP_button

float x, y, size = 50;
color buttonColor = color(100);

void setup() {
  size(400, 400);
  stroke(0);
  strokeWeight(1);
  x = width/2;
  y = height/2;
}


void draw() {
  background(100);
  //size = sin(frameCount*0.02)*60 + 90;
  fill(buttonColor);
  ellipse(x, y, size, size);

  float distance = dist(x, y, mouseX, mouseY);
  if ( distance < size/2) { //mouse hover
    buttonColor = color(255, 0, 0);
    if (mousePressed) {
      buttonColor = color(random(255), random(255), random(255));
    }
  } else {
    buttonColor = color(100);
  }
}