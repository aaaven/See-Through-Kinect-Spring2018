//Aven, See Through Kinect, Spring 2018
//http://aven.cc
//https://github.com/aaaven/STK2018/wiki/

ArrayList balls; 
color[] colors;
int bw = 300, bh = 400;

void setup() {
  size(400, 500);
  smooth(); 
  p5Setup();
  colors = getColors(bw, bh, "1.jpg");
  balls = new ArrayList();   
  //for (int i = 0; i < 800; i++) {
  //  Vec3D startPoint = new Vec3D (random(0, bw), random(0, bh), 0);
  //  balls.add(new Ball(startPoint));
  //}
  int grid = 10;
  for (int j = 0; j < bh; j += grid) {
    for (int i  = 0; i < bw; i += grid) {
      int index = j*bw + i;
      if (colors[index] != color(255)) {
        Vec3D startPoint = new Vec3D (i, j, 0);
        balls.add(new Ball(startPoint));
      }
    }
  }
}

void draw() {
  background(255);
  noFill();
  pushMatrix();
  translate(50, 50);
  for (int i = 0; i < balls.size (); i++) {
    Ball mb = (Ball) balls.get(i);
    ArrayList otherBalls = getOthers(balls, mb);
    mb.run(otherBalls);
  }
  popMatrix();
}

void keyPressed() {
  if (key == ' ') {
    PImage screenshot = get(50,100,bw,bh);
    screenshot.save("logo" + (int)random(10000) + ".png");
    println("screenshot saved");
  }
}