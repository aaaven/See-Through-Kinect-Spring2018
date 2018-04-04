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