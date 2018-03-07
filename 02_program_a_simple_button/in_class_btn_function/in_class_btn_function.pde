int checkStates(float _bx, float _by, float _w, float _h) {
  int result;
  if (mouseX > _bx && mouseX < _bx+_w &&
    mouseY > _by && mouseY < _by+_h) {//hover
    //buttonColor = color(255, 0, 0);
    result = 1;
    if (mousePressed) {//click
      //buttonColor = color(random(255), random(255), random(255));
      result = 2;
    }
  } else {
    //buttonColor = color(100);
    result = 0;
  }
  return result;
}














color btnColor = color(100);
float bx, by, w, h;
void setup() {
  size(800, 600);
  noStroke();
  bx = width/2;
  by = height/2;
  w = 80;
  h = 60;
}

void draw() {
  //draw button
  fill(btnColor);
  rect(bx, by, w, h);

  int state = checkStates(bx, by, w, h);
  println(state);
  
  if(state == 0) btnColor = color(0);
  if(state == 1) btnColor = color(255,0,0);
  if(state == 2) btnColor = color(random(255));
  
  
}