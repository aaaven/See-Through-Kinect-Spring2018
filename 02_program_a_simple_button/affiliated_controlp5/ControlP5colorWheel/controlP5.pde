import controlP5.*;
ControlP5 cp5;
int colorWheelX = 10, colorWheelY = 10, colorWheelSize = 380;
color colorWheel = color(100);

void setupControlP5() {
  cp5 = new ControlP5( this );
  cp5.addColorWheel("colorWheel", colorWheelX, colorWheelY, colorWheelSize ).setRGB(color(255, 0, 0));
}