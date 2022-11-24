//https://youtu.be/CaYydLMXjNI

import processing.sound.*;

Juego juego;

void setup() {
  size(600, 400);

  juego = new Juego(this);
}

void draw() {
  background(60); 
  juego.dibujar();
}

void keyPressed() {
  juego.keyPressed();
}  
