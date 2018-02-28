//Aven, See Through Kinect, Spring 2018
//https://github.com/aaaven/STK2018/wiki/OOP_button

float x1, y1, size1 = 50;
color button1Color = color(100);

void setup() {
  size(400, 400);
  stroke(0);
  strokeWeight(1);
  x1 = width/2;
  y1 = height/2;
}


void draw() {
  background(100);
  //size = sin(frameCount*0.02)*60 + 90;
  fill(button1Color);
  ellipse(x1, y1, size1, size1);

  int check = checkDistance(x1, y1, size1);
  switch(check) {
  case 0:
    button1Color = color(100);
    break;
  case 1:
    button1Color = color(255, 0, 0);
    break;
  case 2:
        button1Color = color(random(255),random(255),random(255));
    break;
  }
  
  
}

int checkDistance(float _x, float _y, float _size) {
  int result = 0;
  float distance = dist(_x, _y, mouseX, mouseY);
  if ( distance < _size/2) { //mouse hover
    result = 1;
    if (mousePressed) {
      result = 2;
    }
  } else {
    result = 0;
  } 
  return result;
}