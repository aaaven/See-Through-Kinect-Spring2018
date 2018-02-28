//Aven, See Through Kinect, Spring 2018
//https://github.com/aaaven/STK2018/wiki/OOP_button

Button button1, button2;
void setup() {
  size(400, 400);
  noStroke();
  button1 = new Button(width/2,height/3,100);
  button2 = new Button(width/2,2*height/3,50);
}
void draw() {
  background(47);
  button1.run();
  button2.run();
}