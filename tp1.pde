String a, c, d, e, p, z, t, r, h, b ;
PImage hoja1, hoja2, hoja3, hoja4, hoja5, hoja6, hs1, flor1, corazon, mariposa;
PFont fuente1;
PFont fuente2;
float posX, posY;


void setup() {
  size(600, 400);
  background(0);
  textAlign(CENTER);
  frameRate(8);

  a = "Alice Oselman" ;
  c = " Created and Written by";
  d = "Directed by";
  e = "Euros Lyn";
  p =" Produced by";
  z = "Zorana Pigotti";
  t = "Executive Producers";
  r = "Patrick Walter \nIan Cannin \nEmile Sherman";
  b = "Base On The Graphic Novel By";

  hoja1 = loadImage ("hoja1.png");
  hoja2 = loadImage ("hoja2.png");
  hoja3 = loadImage ("hoja3.png");
  hoja4 = loadImage ("hoja4.png");
  hoja5 = loadImage ("hoja5.png");
  hoja6 = loadImage ("hoja6.png");
  hs1 = loadImage("hs1.png");
  flor1 = loadImage("flor1.png");
  corazon = loadImage("corazon.png");
  mariposa = loadImage ("mariposa.png");

  fuente1 = loadFont("MVBoli-30.vlw");
  fuente2 = loadFont ("YuGothic-Bold-30.vlw");
}


void draw() {

  //println(frameCount);

  background(0);
  textSize(30);
  println(mouseX, mouseY);

  //pantalla 1
  if ( frameCount <= 30) {
    image(hs1, 86, 120);
  }

  //pantalla 2

  if ( 30 <frameCount && frameCount < 60) {
    textFont(fuente2);
    text( a, width/2, height/1.8);

    textFont(fuente1);
    text( c, width/2, height/2.3);

    image (hoja2, 480, 50);
    image(hoja1, 100, 200);
    image(flor1, 470, 300);
  }

  //pantalla 3
  if (60 < frameCount && frameCount < 90) {

    textFont(fuente1);
    text( d, width/2, height/2.3);

    textFont(fuente2);
    text( e, width/2, height/1.8);

    image (hoja3, 150, 100);
    image (hoja4, 400, 300);
    image( hoja5, 450, 100);
    image (hoja6, 120, 290);
  }

  //pantalla 4

  if (90 < frameCount && frameCount < 120) {

    textFont(fuente1);
    text( p, width/2, height/2.3);

    textFont(fuente2);
    text( z, width/2, height/1.8);

    image(hoja4, 70, 100);
    image(hoja6, 400, 300);
  }

  //pantalla 5
  if (120< frameCount && frameCount < 150) {

    textFont(fuente1);
    text( t, width/2, height/2.3);

    textFont(fuente2);
    text( r, width/2, height/1.8);

    image(corazon, 100, 300); 
    image(flor1, 450, 300);
  }

  //pantalla 6
  if (150 < frameCount && frameCount < 180) {

    textFont(fuente1);
    text( b, width/2, height/2.3);

    textFont(fuente2);
    text( a, width/2, height/1.8);

    image(corazon, 510, 110);
    image(hoja2, 80, 270);
    image(hoja4, 500, 300);
    image(flor1, 100, 30);
  }
  //flor que se mueve
  if (30 <frameCount && frameCount < 180 ) {
    if (keyPressed) {
      posX = random (width);
      posY = random (height);
    }
    image(flor1, posX, posY);
  }
}

//mariposa que se mueve
void mouseDragged() {
  if (30 <frameCount && frameCount < 180 ) {
    image(mariposa, mouseX, mouseY);
  }
}
