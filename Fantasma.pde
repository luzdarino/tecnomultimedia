class Fantasma{

  //PROPIEDADES
 float x, y;
 PImage personaje;

//CONSTRUCTOR
Fantasma(float posX, float posY){
x= posX;
y= posY;
personaje= loadImage("fantasma1.png");

}

/*
  if(keyPressed){
   x++;
  }
}*/

void dibujar(){
    if(keyPressed){
   x++;
  }
    image( personaje, x,y);
}
}
