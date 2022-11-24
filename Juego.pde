//CLASE MADRE

class Juego {

  //PROPIEDADES
  int escenario, contador, c, tiempo, contadorTiempo, segundos, tiempoComienzo;
  PImage fondo1, fondo2, perdiste, ganaste, creditos, pasto;
  PFont tipografia;
  Fantasma fantasma;
  Obstaculos obstaculo;
  Nubes[] nubes= new Nubes[5];
  SoundFile sonido;


  //CONSTRUCTOR 
  Juego(PApplet p) {

    sonido = new SoundFile(p, "sonido.mp3");

    escenario = 0;
    contador=0;
    tiempo=0;
    contadorTiempo=22;
    tiempoComienzo= millis()/1000 + contadorTiempo;
    fondo1= loadImage("fondo1.jpg");
    fondo2= loadImage("fondo2.png");
    perdiste= loadImage("perdiste.png");
    ganaste= loadImage("ganaste.png");
    creditos= loadImage("creditos.jpg");
    pasto= loadImage("pasto.png");

    fantasma= new Fantasma(50, 250);
    obstaculo= new Obstaculos(550, 250);

    textAlign(CENTER);

    for (int i=0; i<nubes.length; i++) {
      nubes[1] = new Nubes(60, 10);
      nubes[2] = new Nubes(380, 100);
      nubes[3] = new Nubes(550, 30);
      nubes[4] = new Nubes(320, 100);
    }
    sonido.loop();
  }

  //ESTADOS
  void dibujar() {
    if (escenario == 0) {
      inicio();
    }
    if (escenario == 1) {
      instruc();
    }
    if (escenario == 2) {
      jugar();
    }
    if (escenario == 3) {
      ganar();
    }
    if (escenario == 4) {
      perder();
    }
    if (escenario==5) {
      creditos();
    }
  }


  //INICIO
  void inicio() {
    escenario = 0;

    image(fondo1, -50, -5); 
    fill(255);
    textSize(80);

    text("Boo fire", width/2, height/2);
    noStroke();
    fill(200);
    rectMode(CENTER);
    rect( width/2, 310, 270, 70, 10); 
    fill(0);
    textSize(18);
    text("Presiona 'I' \npara leer las instrucciones", width/2, 300);
  }


  //INSTRUCCIONES
  void instruc() {
    escenario= 1;
    image(fondo1, 0, 0, 900, 400);
    noStroke();
    fill(255);
    rectMode(CENTER);
    rect( width/2, height/2.6, 350, 150, 10); 

    noStroke();
    fill(200);
    rectMode(CENTER);
    rect( width/2, 300, 250, 50, 10);  

    fill(0);
    textSize(20);
    text("Evita que el fantasma muera \npresionando 'espacio' y \nsaltando los fuegos \nSi sobrevivis 20 segundos ganas", width/2, height/3.5);
    textSize(18);
    text("Presiona 'J' para jugar", width/2, 305);
  }


  //JUGAR
  void jugar() {
    escenario=2;

    image(pasto, 0, 330);
    nubes[1].dibujar();
    nubes[2].dibujar();
    nubes[3].dibujar();
    nubes[4].dibujar();
    obstaculo.dibujar();
    fantasma.saltar();
    fantasma.dibujar();
    println(contador);


    ///COLISIONES
    float d = dist(obstaculo.x, obstaculo.y, fantasma.posx, fantasma.posy);
    if (d<100) {  //PERDISTE
      escenario=4;
    }
    contador();
  }

  //CONTADOR
  void contador() {
    segundos= tiempoComienzo - millis()/1000;
    if (segundos<0) {
      tiempoComienzo = millis()/1000 + contadorTiempo;
    } else {
      noStroke();
      fill(0);
      rectMode(CENTER);
      rect( 460, 55, 150, 50, 10); 
      fill(255);
      text("Tiempo:", 450, 60);
      text(segundos, 500, 60);
    }
    if (segundos==0) {
      escenario= 3;
    }
  }

  //GANAR
  void ganar() {
    escenario=3;
    image(ganaste, 0, 0);
    textSize(60);
    fill(255);
    text("GANASTE", width/2, height/3);

    noStroke();
    fill(200);
    rectMode(CENTER);
    rect( width/3.5, 310, 200, 70, 10); 

    textSize(18);
    fill(0); 
    text("Presiona 'R'\npara reiniciar", width/3.5, 300);

    noStroke();
    fill(200);
    rectMode(CENTER);
    rect( width/1.3, 310, 200, 70, 10); 

    textSize(18);
    fill(0); 
    text("Presiona 'C'\npara créditos", width/1.3, 300);
  }


  //PERDER
  void perder() {

    escenario=4;

    image(perdiste, 0, 0);
    textSize(60);
    fill(255);
    text("PERDISTE", width/2, height/3);

    noStroke();
    fill(200);
    rectMode(CENTER);
    rect( width/3.5, 310, 200, 70, 10); 

    textSize(18);
    fill(0); 
    text("Presiona 'R'\npara reiniciar", width/3.5, 300);

    noStroke();
    fill(200);
    rectMode(CENTER);
    rect( width/1.3, 310, 200, 70, 10); 

    textSize(18);
    fill(0); 
    text("Presiona 'C'\npara créditos", width/1.3, 300);
  }

  //CRÉDITOS
  void creditos() {
    image(creditos, 0, 0);
    textSize(60);
    fill(255);
    text("CRÉDITOS", width/2, height/3);
    textSize(30);
    text("Luz Darino \n91317/1", width/2, height/2);

    noStroke();
    fill(200);
    rectMode(CENTER);
    rect( width/1.2, 310, 160, 70, 10); 

    textSize(18);
    fill(0); 
    text("Presiona 'R'\npara reiniciar", width/1.2, 300);
  }

  void reiniciar() {
    inicio();
    contador=0;
    tiempo=0;
    contadorTiempo=22;
    tiempoComienzo= millis()/1000 + contadorTiempo;
    fantasma.posy=250;
    obstaculo.x=550;
    obstaculo.y=300;
  }

  void keyPressed() {
    if (escenario==0) {
      if ( key == 'i' || key == 'I') {
        instruc();
      }
    }
    if (escenario == 1) {
      if ( key == 'j' || key == 'J') {
        jugar();
      }
    }
    if (escenario == 2) {
      fantasma.teclas();
    }
    if (escenario == 3) {
      if ( key == 'c' || key == 'C') {
        escenario=5;
      }
      if ( key == 'r' || key == 'R') {
        //reiniciar
        reiniciar();
      }
    }
    if (escenario == 4) {
      if ( key == 'r' || key == 'R') {
        reiniciar();
      }
      if ( key == 'c' || key == 'C') {
        escenario=5;
      }
    }
    if (escenario==5) {
      if ( key == 'r' || key == 'R') {
        reiniciar();
      }
    }
  }
}
