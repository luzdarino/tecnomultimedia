class Fantasma {

  float posx, posy;
  float tam;
  PImage fantasma;

  float vel = 8;  //velocidad: para emular gravedad
  boolean saltando = false;

  Fantasma( float x, float y ) {
    posx = x;
    posy = y;
    tam = 50;
    fantasma= loadImage("fantasma1.png");
  }

  void dibujar() {
    fill(128);
    image(fantasma, posx, posy);
  }

  void saltar() {
    if ( saltando ) {
      posy = posy - vel;
      vel = vel - 0.2;  

      if (posy >= 250 ) { 
        posy = 250;
        vel = 8;
        saltando = false;
      }
    }
  }

  void teclas() {
    if ( key == ' ' )
      saltando = true;
  }
}
