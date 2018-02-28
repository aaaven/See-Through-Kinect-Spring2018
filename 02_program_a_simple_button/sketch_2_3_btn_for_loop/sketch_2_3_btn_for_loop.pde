//Aven, See Through Kinect, Spring 2018
//https://github.com/aaaven/STK2018/wiki/OOP_button

int y, btn_size;
color buttonColor = color(100);

void setup() {
  size(1000, 600);
  noStroke();
  y = height/2;
  btn_size = 100;
}


void draw() {
  background(220);

  for (int x = btn_size/2; x < width; x+=btn_size) {
    println(x);
    int check = checkDistance(x, y, btn_size);
    switch(check) {
    case 0:
      buttonColor = color(x/10);
      break;
    case 1:
      buttonColor = color(255, 0, 0);
      break;
    case 2:
      buttonColor = color(random(255), random(255), random(255));
      break;
    }

    fill(buttonColor);
    ellipse(x, y, btn_size, btn_size);
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