import controlP5.*;
ControlP5 cp5;
int depthRangeMin = 0, depthRangeMax = 4499;
Range range;


void setupCP5() {
  cp5 = new ControlP5(this);
  range = cp5.addRange("rangeController")
    // disable broadcasting since setRange and setRangeValues will trigger an event
    .setBroadcast(false) 
    .setPosition(10, 10)
    .setSize(100, 15)
    .setHandleSize(5)
    .setRange(0, 4499)
    .setRangeValues(15, 3000)
    // after the initialization we turn broadcast back on again
    .setBroadcast(true)
    .setColorForeground(color(20, 240))
    .setColorBackground(color(200, 240))  
    ;             
  noStroke();
}

void controlEvent(ControlEvent theControlEvent) {
  if (theControlEvent.isFrom("rangeController")) {
    depthRangeMin = int(theControlEvent.getController().getArrayValue(0));
    depthRangeMax = int(theControlEvent.getController().getArrayValue(1));
  }
}