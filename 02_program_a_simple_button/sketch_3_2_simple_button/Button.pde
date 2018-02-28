
//this is the button class
class Button {
  float x, y, size;
  int result = 0;
  color buttonColor = color(100);
  Button(float _x, float _y, float _size) {
    x = _x;
    y = _y;
    size = _size;
  }
  void check() {
    float distance = dist(x, y, mouseX, mouseY);
    if ( distance < size/2) { //mouse hover
      result = 1;
      if (mousePressed) {//mouse click
        result = 2;
      }
    } else {//default
      result = 0;
    }
  }
  void update() {
    switch(result) {
    case 0: //default
      buttonColor = color(100);
      break;
    case 1://hover
      buttonColor = color(255, 0, 0);
      break;
    case 2://click
      buttonColor = color(random(255), random(255), random(255));
      break;
    }
  }
  void display() {
    fill(buttonColor);
    ellipse(x, y, size, size);
  }
  void run(){
    check();
    update();
    display();
  }
}