void keyPressed() {
  background(255);
  switch (key) {
  case ' ':
    save = true;
    break;
  case 'r':
    background(img);
    str = "Original Image";
    break;
  case 'h':
    colors = GenerativeDesign.sortColors(this, colors, GenerativeDesign.HUE);
    str = "Pixels sorted by HUE";
    colorIndex = 0;
    break;
  case 's':
    colors = GenerativeDesign.sortColors(this, colors, GenerativeDesign.SATURATION);
    str = "Pixels sorted by SATURATION";
    colorIndex = 0;
    break;

  case 'b':
    colors = GenerativeDesign.sortColors(this, colors, GenerativeDesign.BRIGHTNESS);
    str = "Pixels sorted by BRIGHTNESS";
    colorIndex = 0;
    break;
  case 'g':
    colors = GenerativeDesign.sortColors(this, colors, GenerativeDesign.GRAYSCALE);
    str = "Pixels sorted by GRAYSCALE";
    colorIndex = 0;
    break;
  case 'q':
    colors = GenerativeDesign.sortColors(this, colors, GenerativeDesign.RED);
    str = "Pixels sorted by RED";
    colorIndex = 0;
    break;
  case 'w':
    colors = GenerativeDesign.sortColors(this, colors, GenerativeDesign.GREEN);
    str = "Pixels sorted by GREEN";
    colorIndex = 0;
    break;
  case 'e':
    colors = GenerativeDesign.sortColors(this, colors, GenerativeDesign.BLUE);
    str = "Pixels sorted by BLUE";
    colorIndex = 0;
    break;
  default:
    break;
  }
}