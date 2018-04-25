//Aven, See Through Kinect, Spring 2018
//http://aven.cc
//https://github.com/aaaven/STK2018/wiki/

int p_num = 500;
particle particles[];
PVector mouse, diff_mouse;

void setup() {
  size(640, 360);
  cursor(HAND);
  particles = new particle[p_num];
  for (int i = 0; i < p_num; i++) {
    particles[i] = new particle();
  }
  mouse = new PVector(width/2, height/2);
  diff_mouse = new PVector(0, 0);

  setupCam();
  camImage = createImage(width, height, ARGB);
}

void draw() {
  background(0);
  if (cam.available()) {
    cam.read();
    camImage = cam;
  }
  camImage.loadPixels();

  if (mouseX != 0) {
    diff_mouse = new PVector(mouseX, mouseY).sub(mouse).mult(1.5);
  }
  mouse.add(diff_mouse);
  for (int i = 0; i < p_num; i++) {
    particles[i].render();
  }

  camImage.updatePixels();
}

class particle {
  PVector pos, vel, prevPos;
  float thold = 30, spd_ctrl = 1.05, drag = 0.01, w, div = 0.05, r = 0.45*height;

  particle() {
    float theta = random(-PI, PI);
    pos = new PVector(0.5*width+ r*sin(theta), 0.5*height+ r*cos(theta));
    vel = new PVector(0, 0);
    prevPos = new PVector(width/2, height/2);
    w = random(0.1*thold, thold);
  }
  void render() {
    update();
    display();
    updatePos();
  }

  void update() {
    vel.div(spd_ctrl);
    PVector diff_vel = PVector.sub(mouse, pos).mult(drag*w);
    vel.add(diff_vel);
    //vel.x += diff_vel.x;
    //vel.y += diff_vel.y;
    pos.add(vel);
    //pos.x += vel.x;
    //pos.y += vel.y;
  }

  void display() {
    //line(pos.x, pos.y, prevPos.x, prevPos.y);
    for (float i = 0; i < 1; i+= div) {
      PVector prevP = PVector.lerp(pos, prevPos, i);
      PVector p = PVector.lerp(pos, prevPos, i+div);
      if(pos.x < width && pos.x > 0 && pos.y <  height && pos.y > 0){
      stroke(camImage.pixels[int(pos.x) + int(pos.y)*width]);
      }else{
      stroke(0);
      }
      line(prevP.x, prevP.y, p.x, p.y);
    }
  }

  void updatePos() {
    prevPos.x = pos.x;
    prevPos.y = pos.y;
  }
}