class Star {
  float x, y;
  float s0, s1;
  Star() {
    float f= random(-PI, PI);
    x = cos(f)*random(100, 150);
    y = sin(f)*random(100, 150);
    s0 = random(2, 10);
  }
  void display() {
    s1 += (s0-s1)*0.1;
    pushStyle();
    fill(random(100,125),random(255),random(255));
    ellipse(x, y, s1, s1);
    popStyle();  
}
  void update() {
    s1 = 50;
  }
}