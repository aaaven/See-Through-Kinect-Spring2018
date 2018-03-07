import controlP5.*;
ControlP5 cp5;
Textarea myTextarea;
Println console;

void setupControlP5() {
  cp5 = new ControlP5(this);
  cp5.enableShortcuts();
  myTextarea = cp5.addTextarea("txt")
    .setPosition(10, 20)
    .setSize(100, 360)
    .setFont(createFont("", 10))
    .setLineHeight(14)
    .setColor(color(200))
    .setColorBackground(color(0, 250))
    .setColorForeground(color(255, 100));
  ;
  console = cp5.addConsole(myTextarea);
}


void keyPressed() {
  switch(key) {
    case('1'):
    console.pause();
    break;
    case('2'):
    console.play();
    break;
    case('3'):
    console.setMax(8);
    break;
    case('4'):
    console.setMax(-1);
    break;
    case('5'):
    console.clear();
    break;
  }
}