import controlP5.*;

ControlP5 cp5;
int boxSize = 20;
color fColor = color(255, 0, 0);

void setupControlP5() {
  cp5 = new ControlP5(this);
  cp5.addButton("changeColor", 10, 10, 10, 80, 20).setId(1);
  cp5.addButton("changeSize", 10, 10, 40, 80, 20).setId(2);
  cp5.setAutoDraw(false);
}

void drawGUI() {
  hint(DISABLE_DEPTH_TEST);
  cam.beginHUD();

  cp5.draw();

  cam.endHUD();
  hint(ENABLE_DEPTH_TEST);
}

void changeColor() {
  fColor = color(random(255), random(255), random(255));
}

void changeSize() {
  boxSize = (int)random(5, 40);
}