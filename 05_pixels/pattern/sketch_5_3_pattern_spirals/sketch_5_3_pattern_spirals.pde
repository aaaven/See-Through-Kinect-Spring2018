//Aven, See Through Kinect, Spring 2018
//http://aven.cc
//https://github.com/aaaven/STK2018/wiki/

color[] colors;
ArrayList <Spiral> spirals;
void setup() {
  size(600, 800);
  noStroke();
  loading();
  colors = getColors(width, height, "1.jpg");
  spirals = new ArrayList();
  background(0);
}


void draw() {

  if (spirals.size() < 88) spirals.add(new Spiral(random(width), random(height)));

  if (spirals.size() > 0) {
    for (int i = 0; i < spirals.size(); i++) {
      Spiral s =(Spiral) spirals.get(i);

      if (s.toLive) {
        s.update();
        s.display();
      } else {
        spirals.remove(i);
      }
    }
  }
}

void mouseClicked() {
  spirals.add(new Spiral(mouseX, mouseY));
}

void loading() {
  background(0);
  pushStyle();
  fill(255);
  noStroke();
  textAlign(CENTER);
  text("loading pixels...", width/2, height/2);
  popStyle();
}

color[] getColors(int w, int h, String fileName) {//"1.jpg"

  PImage img = loadImage(fileName);
  img.resize(w, h);

  color[] _colors = new color[w*h];

  img.loadPixels();
  for (int i =0; i < img.pixels.length; i ++) {
    color c = (color)img.pixels[i];
    _colors[i] = c;
  }
  img.updatePixels();
  //printArray(colors);
  return _colors;
}

class Spiral {
  float cx, cy, rad, fre, x, y;
  int index;
  boolean toLive;

  Spiral(float centerX, float centerY) {
    cx = centerX;
    cy = centerY;
    rad = 3;
    fre = random(0.05, 0.15);
    toLive = true;
  }

  void update() {
    float sinValue = sin(fre*frameCount);
    float cosValue = cos(fre*frameCount);

    x = cx + cosValue*rad;
    y = cy + sinValue*rad;

    if (x < 0 || x> width || y < 0 || y > height) toLive = false;
    if (toLive) index = int(y)*width + int(x);
    rad += 0.05;
  }    

  void display() {
    stroke(colors[index]);
    point(x, y);
  }
}