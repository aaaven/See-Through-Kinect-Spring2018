import controlP5.*;
ControlP5 cp5;
boolean toggleValue = false;
boolean toggle = false;

void setupControlP5() {
  cp5 = new ControlP5(this);

  // create a toggle
  cp5.addToggle("toggleValue")
    .setPosition(40, 100)
    .setSize(50, 20)
    ;

  // create a toggle and change the default look to a (on/off) switch look
  cp5.addToggle("toggle")
    .setPosition(40, 250)
    .setSize(50, 20)
    .setValue(true)
    .setMode(ControlP5.SWITCH)
    ;
}