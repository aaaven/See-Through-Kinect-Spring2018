import controlP5.*;
ControlP5 cp5;
int myColor = color(0, 0, 0);

int sliderValue1 = 127; //declare same variables as sliderbars' name, I dont know why, just follow the rules
int sliderValue2 = 127;

int sliderTicks1 = 127;
int sliderTicks2 = 127;

void setupControlP5(){
 cp5 = new ControlP5(this);

  // add a horizontal sliders, the value of this slider will be linked
  // to variable 'sliderValue' 
  cp5.addSlider("sliderValue1")
    .setPosition(100, 50)
    .setRange(0, 255)
    ;



  // add a vertical slider
  cp5.addSlider("sliderValue2")
    .setPosition(600, 140)
    .setSize(20, 100) //use set size to make a tall and thin vertical one--aven
    .setRange(0, 255)
    .setValue(127)
    ;
  

  // create another slider with tick marks, now without
  // default value, the initial value will be set according to
  // the value of variable sliderTicks2 then.
  cp5.addSlider("sliderTicks1")  //vertical one
    .setPosition(100, 140)
    .setSize(20, 100)  //use set size to make a tall and thin vertical one--aven
    .setRange(0, 255)
    .setNumberOfTickMarks(5)
    ;
  cp5.addSlider("sliderTicks2")
    .setPosition(100, 370)
    .setWidth(400)
    .setRange(255, 0) // values can range from big to small as well
    .setValue(127)
    .setNumberOfTickMarks(7)
    .setSliderMode(Slider.FLEXIBLE)
    ;
  // use Slider.FIX or Slider.FLEXIBLE to change the slider handle
  // by default it is Slider.FIX
 
}