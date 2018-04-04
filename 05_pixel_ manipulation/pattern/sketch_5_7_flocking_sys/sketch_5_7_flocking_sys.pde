//Aven, See Through Kinect, Spring 2018
//http://aven.cc
//https://github.com/aaaven/STK2018/wiki/

ArrayList balls; 
int bw = 600, bh = 800;

void setup() {
  size(700, 950);
  smooth(); 
  p5Setup();
  balls = new ArrayList();   
  for (int i = 0; i < 1500; i++) {
    Vec3D startPoint = new Vec3D (random(0, width), random(0, height), 0);
    balls.add(new Ball(startPoint));
  }
}

void draw() {
  background(0);
  noFill();
  pushMatrix();
  translate(50, 100);
  rect(0, 0, bw, bh);
  for (int i = 0; i < balls.size (); i++) {
    Ball mb = (Ball) balls.get(i);
    ArrayList otherBalls = getOthers(balls, mb);
    mb.run(otherBalls);
  }
  popMatrix();
}

ArrayList getOthers(ArrayList oldArray, Ball toRemove) {
  ArrayList otherBalls = new ArrayList();
  for (int i = 0; i < oldArray.size(); i++) {
    Ball other = (Ball) oldArray.get(i);
    if (other != toRemove) {
      otherBalls.add(balls.get(i));
    }
  }
  return otherBalls;
}