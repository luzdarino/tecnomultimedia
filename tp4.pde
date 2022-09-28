Fondo fondo;

void setup(){
  size(600,400);
  fondo = new Fondo();
}

void draw(){
  background(60);
  fondo.dibujar();
}
void keyPressed(){
  fondo.dibujar();
}
