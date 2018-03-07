//Aven,03/04/2017
//Interactive Installation
//New Media, WPP, SADA

import controlP5.*;
ControlP5 cp5;
int myColor = color(255);

void setup() {
  size(400,600);
  noStroke();
  cp5 = new ControlP5(this);
  
  // create a new button with name 'buttonA'
  cp5.addButton("colorA")
     .setPosition(10,10)
     .setSize(200,19)
     ;

  cp5.addButton("colorB")
     .setPosition(10,30)
     .setSize(200,19)
     ;
     
  cp5.addButton("colorC")
     .setPosition(10,50)
     .setSize(200,19)
     ;

  PImage[] imgs = {loadImage("button_a.png"),loadImage("button_b.png"),loadImage("button_c.png")};
  cp5.addButton("play")
     .setPosition(140,300)
     .setImages(imgs)
     .updateSize()
     ;
     
  cp5.addButton("playAgain")
     .setPosition(210,300)
     .setImages(imgs)
     .updateSize()
     ;

}

void draw() {
  background(myColor);
}

// function colorA will receive changes from 
// controller with name colorA
public void colorA() {
  println("a button event from colorA");
  myColor = color(255,0,0);
}

// function colorB will receive changes from 
// controller with name colorB
public void colorB() {
  println("a button event from colorB");
  myColor = color(0,255,0);
}

// function colorC will receive changes from 
// controller with name colorC
public void colorC() {
  println("a button event from colorC");
  myColor = color(0,0,255);
}

public void play() {
  println("a button event from play");
  myColor = color(random(255),random(255),random(255));
}

public void playAgain() {
  println("a button event from playagain");
  myColor = color(random(255),random(255),random(255));
}