class Fondo {
  //PROPIEDADES
  float algo;

  //Instancias de mis objetos
  Fantasma fantasma;
  Nubes nube1, nube2, nube3, nube4;
  ////

  //CONSTRUCTOR
  Fondo() {
    fantasma= new Fantasma(10, 250);
    nube1 = new Nubes(40, 30);
    nube2 = new Nubes(150, 150);
    nube3 = new Nubes(380,100);
    nube4 = new Nubes(550, 30);
  }

  void dibujar() {
    pushStyle();
    noStroke();
    fill(0, 100, 120);
    rect(0, 320, 600, 100);
    popStyle();
    fantasma.dibujar();
    nube1.dibujar();
    nube2.dibujar();
    nube3.dibujar();
    nube4.dibujar();
  }
}
