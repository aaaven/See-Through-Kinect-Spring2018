//Aven, See Through Kinect, Spring 2018
//http://aven.cc
//https://github.com/aaaven/STK2018/wiki/



import controlP5.*;
ControlP5 cp5;

public float n = 50;
public float s = 10;
public float k = 100;

void setup() {
  size(400, 400);
  smooth();
  cp5 = new ControlP5(this);

  cp5.addNumberbox("n")
    .setPosition(10, 10)
    .setSize(42, 16)
    .setMultiplier(0.1)
    .setRange(10, 60)
    .setValue(20)
    ;

  cp5.addSlider("s")
    .setPosition(10, 100)
    .setSize(100, 20)
    .setScrollSensitivity(0.01)
    .setRange(60, 140)
    .setValue(100)
    ;


  cp5.addKnob("k")
    .setPosition(200, 100)
    .setRadius(50)
    .setScrollSensitivity(0.001)
    .setMin(60)
    .setMax(140)
    .setDisplayStyle(Controller.ARC)
    ;

  cp5.addRange("r")
    .setPosition(10, 200)
    .setSize(100, 20)
    .setRange(0, 200)
    .setRangeValues(50, 100)
    ;
} 


void draw() {
  background(0);
}


void keyPressed() {
  switch(key) {
    //set setting data
    case('1'):
    cp5.getProperties().setSnapshot("setting01");
    break;
    case('2'):
    cp5.getProperties().setSnapshot("setting02");
    break;
    case('3'):
    cp5.getProperties().setSnapshot("setting03");
    break;
    //get setting
    case('q'):
    cp5.getProperties().getSnapshot("setting01");
    break;
    case('w'):
    cp5.getProperties().getSnapshot("setting02");
    break;
    case('e'):
    cp5.getProperties().getSnapshot("setting03");
    break;
    /*
    case('z'):
     cp5.getProperties().removeSnapshot("hello1");
     break;
     case('x'):
     cp5.getProperties().removeSnapshot("hello2");
     break;
     case('c'):
     cp5.getProperties().removeSnapshot("hello3");
     break;
     */
     
    //save setting
    case('a'):
    cp5.getProperties().saveSnapshot("setting01");
    break;
    case('s'):
    cp5.getProperties().saveSnapshot("setting02");
    break;
    case('d'):
    cp5.getProperties().saveSnapshot("setting03");
    break;
    //load setting
    case('z'):
    cp5.getProperties().load("setting01.json");
    break;
    case('x'):
    cp5.getProperties().load("setting02.json");
    break;
    case('c'):
    cp5.getProperties().load("setting03.json");
    break;
  }

  println(cp5.getProperties().getSnapshotIndices());
}