
void loading() {
  background(0);
  pushStyle();
  fill(255);
  noStroke();
  textAlign(CENTER);
  text("loading pixels...", width/2, height/2);
  popStyle();
}

color[] getColors(int w, int h, String fileName) {//"1.jpg"

  PImage img = loadImage(fileName);
  img.resize(w, h);

  color[] _colors = new color[w*h];

  img.loadPixels();
  for (int i =0; i < img.pixels.length; i ++) {
    color c = (color)img.pixels[i];
    _colors[i] = c;
  }
  img.updatePixels();
  //printArray(colors);
  return _colors;
}