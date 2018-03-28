import controlP5.*;
ControlP5 myp5;

float sepatateMagnitude =15.0;
float cohesionMagnitude =0.5;
float alignMagnitude =7.0;

void p5Setup() {
  myp5 = new ControlP5(this);
  myp5.addSlider("sepatateMagnitude")
    .setPosition(10, 25)
    .setRange(1, 15)
    ;

  myp5.addSlider("cohesionMagnitude")
    .setPosition(10, 45)
    .setRange(0.01, 2)
    ;

  myp5.addSlider("alignMagnitude")
    .setPosition(10, 65)
    .setRange(1, 15)
    ;
}