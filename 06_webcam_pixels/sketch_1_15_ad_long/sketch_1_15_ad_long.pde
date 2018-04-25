int p_num = 500;
particle particles[];
PVector target, t_vel;

void setup() {
  size(1280, 720);
  cursor(HAND);

  particles = new particle[p_num];
  float r = 0.45*height;
  for (int i = 0; i < p_num; i++) {
    float theta = random(-PI, PI);
    PVector _pos = new PVector(0.5*width+ r*sin(theta), 0.5*height+ r*cos(theta));
    PVector _vel = new PVector(0, 0);
    PVector _prevPos = new PVector(width/2, height/2);
    particles[i] = new particle(_pos, _vel, _prevPos);
  }
  target = new PVector(width/2, height/2);
  t_vel = new PVector(0, 0);
}

void draw() {
  background(0);
  if (mouseX != 0) {
    t_vel = PVector.sub(new PVector(mouseX, mouseY), target);
    t_vel.mult(0.5);
  }

  target.add(t_vel);
  for (int i = 0; i < p_num; i++) {
    particles[i].render(target);
  }
}