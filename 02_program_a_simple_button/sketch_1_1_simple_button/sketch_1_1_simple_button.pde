//Aven, See Through Kinect, Spring 2018
//https://github.com/aaaven/STK2018/wiki/OOP_button

color buttonColor = color(100);
float bx,by,w,h;
void setup() {
  size(800,600);
  noStroke();
  bx = width/2;
  by = height/2;
  w = 80;
  h = 60;
}

void draw() {
  fill(buttonColor);
  rect(bx, by, w, h);
  if (mouseX > bx && mouseX < bx+w &&
    mouseY > by && mouseY < by+h) {//hover
    buttonColor = color(255, 0, 0);
    if (mousePressed) {//click
      buttonColor = color(random(255), random(255), random(255));
    }
  } else {
    buttonColor = color(100);
  }
}