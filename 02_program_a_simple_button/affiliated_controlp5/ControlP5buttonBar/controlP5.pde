import controlP5.*;

ControlP5 cp5;

int barHover;
void controlP5Setup() {
  cp5 = new ControlP5(this);
  ButtonBar b = cp5.addButtonBar("bar")
    .setPosition(0, height/2)
    .setSize(width, 20)
    .addItems(split("a b c d e f g h i j k l", " "))
    ;
  println(b.getItem("a"));
  b.changeItem("a", "text", "first");
  b.changeItem("b", "text", "second");
  b.changeItem("c", "text", "third");
  b.onMove(new CallbackListener() {
    public void controlEvent(CallbackEvent ev) {
      ButtonBar bar = (ButtonBar)ev.getController();
      println("hello ", bar.hover());
      barHover = bar.hover();
    }
  }
  );
}

void checkHover() {
  switch (barHover) {
  case 0: //hover 0

    break;
  case 1: //hover 1

    break;
  case 2: //hover 2

    break;
  case 3: //hover 3

    break;
  case 4: //hover 4

    break;
  case 5://hover 5

    break;
  case 6://hover 6

    break;
  case 7://hover 7

    break;
  case 8://hover 8

    break;
  case 9://hover 9

    break;
  case 10://hover 10

    break;
  case 11://hover 11

    break;
  }
}

void bar(int n) {
  println("bar clicked, item-value:", n);
    switch (n) {
  case 0: //click 0

    break;
  case 1: //click 1

    break;
  case 2: //click 2

    break;
  case 3: //click 3

    break;
  case 4: //click 4

    break;
  case 5://click 5

    break;
  case 6://click 6

    break;
  case 7://click 7

    break;
  case 8://click 8

    break;
  case 9://click 9

    break;
  case 10://click 10

    break;
  case 11://click 11

    break;
  }
}