//Aven, See Through Kinect, Spring 2018
//https://github.com/aaaven/STK2018/wiki/

void setup(){
 size(600,300);
 setupCP5();
}

void draw() {
  background(255);
  println(depthRangeMin + ":" + depthRangeMax);
}