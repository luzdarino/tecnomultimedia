class Obstaculos {

  //PROPIEDADES
  float x, y, velocidad;
  PImage fuego;


  Obstaculos(float posX, float posY) {
    fuego= loadImage("fuego1.png");
    x=posX;
    y=posY;
    velocidad=5;
  }

  void dibujar() {
    image(fuego, x, y );
    x= x- velocidad;
    y=260;
    if (x==0) {
      x=600;
    }
  }
}
