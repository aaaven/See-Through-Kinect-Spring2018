//Aven, See Through Kinect, Spring 2018
//http://aven.cc
//https://github.com/aaaven/STK2018/wiki/


ArrayList <Spiral> spirals;
void setup() {
  size(600, 800);
  noStroke();
  spirals = new ArrayList();
  background(255);
}
void draw() {
  //if (spirals.size() < 88) spirals.add(new Spiral(random(width), random(height)));
  if (spirals.size() > 0) {
    for (int i = 0; i < spirals.size(); i++) {
      Spiral s =(Spiral) spirals.get(i);
      if (s.toLive)s.run();
      else spirals.remove(i);
    }
  }
}
void mouseClicked() {
  spirals.add(new Spiral(mouseX, mouseY));
}
void keyPressed() {
  if (key == ' ') saveFrame("img-####.jpg");
}