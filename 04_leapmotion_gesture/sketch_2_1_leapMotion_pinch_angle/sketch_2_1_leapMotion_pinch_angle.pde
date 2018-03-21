//Aven, See Through Kinect, Spring 2018
//https://github.com/aaaven/STK2018/wiki/

float finger1X, finger1Y;
float finger2X, finger2Y;


void setup() {
  // OPENGL(depricated) to P3D
  size(800, 500, P3D);
  background(255);
  LeapSetup();
}


void draw() {
  LeapRun();
  background(0);
  float distance = dist(finger1X, finger1Y, finger2X, finger2Y);
  //if (distance < 15) {
  //  background(255);
  //}

  noStroke();

  fill(0, 0, 255, 200);
  ellipse(finger1X, finger1Y, distance, distance);

  fill(255, 255, 0, 200);
  ellipse(finger2X, finger2Y, distance, distance);

  //visualize
  stroke(255, 0, 0);
  strokeWeight(3);
  fill(255, 0, 0);
  line(finger1X, finger1Y, finger2X, finger2Y);

  //caculate
  PVector finger1 = new PVector(finger1X, finger1Y);
  PVector finger2 = new PVector(finger2X, finger2Y);

  PVector dist = PVector.sub(finger1, finger2);

  //stablize
  dist.normalize();
  dist.mult(100);


  //visualize vector
  translate(width/2, height/2);
  strokeWeight(1);
  line(0, 0, dist.x, dist.y);
  ellipse(dist.x, dist.y, 20, 20);
  line(0, 0, 100, 0);

  //get angle
  float angle = PVector.angleBetween(new PVector(1, 0),dist);
  //angle = dist.heading();
  //println(angle+"   "+dist.heading());

  //stablize angle 
  //angle = constrain(angle, 0, 2*PI);
  println(angle);

  fill(255,0,0);
  arc(0, 0, 100, 100, angle, 0, PIE);
}