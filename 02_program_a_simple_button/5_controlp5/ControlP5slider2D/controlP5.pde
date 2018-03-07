import controlP5.*;
ControlP5 cp5;
Slider2D slider;

int slider_x = 30, slider_y = 40, 
  slider_w = 100, slider_h = 200, 
  sliderXmin = 10, sliderXmax = 100, 
  sliderYmin = 10, sliderYmax = 100, 
  sliderXinit = 55, sliderYinit = 55 
  ;

void setupControlP5() {
  cp5 = new ControlP5(this);
  slider = cp5.addSlider2D("wave");
  slider.setPosition(slider_x, slider_y);
  slider.setSize(slider_w, slider_h);
  slider.setMinMax(sliderXmin, sliderYmin,sliderXmax, sliderYmax);
  slider.setValue(sliderXinit, sliderYinit);
  //s.disableCrosshair();
}

void updateControlP5() {
  //----------------------slider values-----------------------------
  sliderX = slider.getArrayValue()[0];
  sliderY = slider.getArrayValue()[1];
  //----------------------slider values-----------------------------
}