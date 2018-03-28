void keyPressed() {
  switch (key) {
  case ' ':
    background(199);
    str = "Blank";
    break;
  case 'c':
    save = true;
    break;
  case 'r':
    background(img);
    str = "Original Image";
    break;
  case 'h':
    colors = GenerativeDesign.sortColors(this, colors, GenerativeDesign.HUE);
    displayColor(colors);
    str = "Pixels sorted by HUE";
    break;
  case 's':
    colors = GenerativeDesign.sortColors(this, colors, GenerativeDesign.SATURATION);
    displayColor(colors);
    str = "Pixels sorted by SATURATION";
    break;

  case 'b':
    colors = GenerativeDesign.sortColors(this, colors, GenerativeDesign.BRIGHTNESS);
    displayColor(colors);
    str = "Pixels sorted by BRIGHTNESS";
    break;
  case 'g':
    colors = GenerativeDesign.sortColors(this, colors, GenerativeDesign.GRAYSCALE);
    displayColor(colors);
    str = "Pixels sorted by GRAYSCALE";
    break;
  case 'q':
    colors = GenerativeDesign.sortColors(this, colors, GenerativeDesign.RED);
    displayColor(colors);
    str = "Pixels sorted by RED";
    break;
  case 'w':
    colors = GenerativeDesign.sortColors(this, colors, GenerativeDesign.GREEN);
    displayColor(colors);
    str = "Pixels sorted by GREEN";
    break;
  case 'e':
    colors = GenerativeDesign.sortColors(this, colors, GenerativeDesign.BLUE);
    displayColor(colors);
    str = "Pixels sorted by BLUE";
    break;
  default:
    background(51);
    str = "Press Space/r/h/s/b/g/q/w/e key and have fun!";
    break;
  }
}