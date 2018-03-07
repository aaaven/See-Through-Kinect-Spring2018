//Aven, See Through Kinect, Spring 2018
//https://github.com/aaaven/STK2018/wiki/

Star[][] stars;
int nx = 10;
int ny = 10;

void setup() {
  size(700, 400);
  noStroke();
  smooth();

  stars = new Star[nx][ny];
  for (int x = 0; x<nx; x++) {
    for (int y = 0; y<ny; y++) {
      stars[x][y] = new Star();
    }
  }

  setupControlP5();
}


void draw() {
  background(0);
  fill(255, 100);

  pushMatrix();
  translate(width/2 + 150, height/2);
  rotate(frameCount*0.001);
  for (int x = 0; x<nx; x++) {
    for (int y = 0; y<ny; y++) {
      stars[x][y].display();
    }
  }
  popMatrix();
}


void myMatrix(int theX, int theY) {
  println("catch ya!: "+theX+", "+theY);
  stars[theX][theY].update();
}


void keyPressed() {
  switch (key) {
  case '1':
    cp5.get(Matrix.class, "myMatrix").set(0, 0, true);
    break;
  case '2':
    cp5.get(Matrix.class, "myMatrix").set(1, 1, true);
    break;
  case 't':
    cp5.get(Matrix.class, "myMatrix").trigger(0);
    break;
  case 'p':
    if (cp5.get(Matrix.class, "myMatrix").isPlaying()) {
      cp5.get(Matrix.class, "myMatrix").pause();
    } else {
      cp5.get(Matrix.class, "myMatrix").play();
    }
    break;
  case 'c':
    cp5.get(Matrix.class, "myMatrix").clear();
    break;
  }
}