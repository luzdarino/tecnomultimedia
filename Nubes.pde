class Nubes {
  float x, y;
  PImage nubes;

  Nubes(float posX, float posY) {
    x = posX;
    y = posY;
    nubes= loadImage("nubes.png");
  }

  void dibujar() {
    image(nubes, x, y);
  }
}
