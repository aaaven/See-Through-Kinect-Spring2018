//Aven, See Through Kinect, Spring 2018
//http://aven.cc
//https://github.com/aaaven/STK2018/wiki/

void setup() {
  size(600, 600);
  colorMode(HSB, height, 100, 100);
  rectMode(CENTER);
  noStroke();
}

void draw() {
  int bg = height/2+mouseY;
  if(bg > height) bg -= height; //bg = bg - 360; 
  background(bg, 100, 100); //background
  fill(mouseY, 100, 100);
  rect(width/2, height/2, 120,120);
}