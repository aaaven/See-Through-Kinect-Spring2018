//Aven, See Through Kinect, Spring 2018
//https://github.com/aaaven/STK2018/wiki/

float pfingerIX, pfingerIY;
float fingerIX, fingerIY;
float fingerTX, fingerTY;

ArrayList<Circle> circles = new ArrayList<Circle>();

void setup() {
  size(800, 500);
  background(0);
  noStroke();
  LeapSetup();
}


void draw() {
  background(0);

  LeapDraw();

  // add circles
  circles.add( new Circle( fingerIX, fingerIY, 20) );

  // update & draw circles
  for (int i=0; i<circles.size(); i++) {
    circles.get(i).update(i);
    circles.get(i).display();
  }
  // limit the number of circle and remove the oldest circles
  if (circles.size() > 100) {
    circles.remove(0);
  }

  text(circles.size(), 10, 20);

  pfingerIX = fingerIX;
  pfingerIY = fingerIY;
}

class Circle {
  float x, y;
  float size;
  color clr;
  int alpha;

  Circle(float _x, float _y, float _size) {
    x = _x;
    y = _y;
    size = _size;
    clr = color(255);
    alpha = 255;
  }

  void update(int i ) {
    alpha-=5;
    size = i*1.5;
  }
  void display() {
    pushStyle();
    fill(clr, alpha);
    ellipse(x, y, size, size);
    popStyle();
  }
}