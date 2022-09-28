class Nubes{
  float x, y;
  PImage nube;
  PImage nube_;
  
 Nubes(float posX, float posY){
   x = posX;
   y = posY;
   nube= loadImage("nubes.png");
   nube_ = loadImage("chiquita.png");
 
}
 
 void dibujar(){
image(nube, x,y);
}
}
