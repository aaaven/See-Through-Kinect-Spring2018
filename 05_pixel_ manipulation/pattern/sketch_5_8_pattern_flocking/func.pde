
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

ArrayList getOthers(ArrayList oldArray, Ball toRemove) {
  ArrayList otherBalls = new ArrayList();
  for (int i = 0; i < oldArray.size(); i++) {
    Ball other = (Ball) oldArray.get(i);
    if (other != toRemove) {
      otherBalls.add(balls.get(i));
    }
  }
  return otherBalls;
}