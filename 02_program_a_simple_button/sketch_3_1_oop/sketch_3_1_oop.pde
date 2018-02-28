//Aven, See Through Kinect, Spring 2018
//https://github.com/aaaven/STK2018/wiki/OOP_button

Button button1, button2;
void setup() {
  size(400, 400);
  noStroke();
  button1 = new Button(width/2,height/3,100);
  button2 = new Button(width/2,2*height/3,50);
}
void draw() {
  background(47);
  button1.checkDistance();
  button1.updateColor();
  button1.display();
  button2.checkDistance();
  button2.updateColor();
  button2.display();
}
class Button {
  float x, y, size;
  int result = 0;
  color buttonColor = color(100);
  Button(float _x, float _y, float _size) {
    x = _x;
    y = _y;
    size = _size;
  }
  void checkDistance() {
    float distance = dist(x, y, mouseX, mouseY);
    if ( distance < size/2) { //mouse hover
      result = 1;
      if (mousePressed) {
        result = 2;
      }
    } else {
      result = 0;
    }
  }
  void updateColor() {
    switch(result) {
    case 0:
      buttonColor = color(100);
      break;
    case 1:
      buttonColor = color(255, 0, 0);
      break;
    case 2:
      buttonColor = color(random(255), random(255), random(255));
      break;
    }
  }
  void display() {
    fill(buttonColor);
    ellipse(x, y, size, size);
  }
}