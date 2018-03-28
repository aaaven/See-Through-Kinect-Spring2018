//Aven, See Through Kinect, Spring 2018
//https://github.com/aaaven/STK2018/wiki/btn_states

color buttonColor = color(100);
float bx, by, w, h;
boolean hover = false, click = false, phover = false, pclick = false;
void setup() {
  size(800, 600);
  noStroke();
  bx = width/2;
  by = height/2;
  w = 80;
  h = 60;
}

void draw() {
  fill(buttonColor);
  rect(bx, by, w, h);
//check states on current frame
  if (mouseX > bx && mouseX < bx+w &&
    mouseY > by && mouseY < by+h) {//hover
    buttonColor = color(255, 0, 0);
    hover = true;
    if (mousePressed) {//click
      buttonColor = color(random(255), random(255), random(255));
      click = true;
    }
  } else {
    buttonColor = color(100);
    hover = false;
    click = false;
  }
  //println(hover + ":" +click);

  //compare  current frame and previous frame states
  if (!phover&&hover)println("hover on");
  if (!pclick&&click)println("click on");
  
  //update states on previous frame
  phover = hover;
  pclick = click;
}