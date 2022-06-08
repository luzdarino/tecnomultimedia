int cant = 50;
int tam, i, j;
float degrade1;
float degrade2;

void setup() {
  size(600, 500);
  tam = width/cant;
  rectMode(CENTER);
  frameRate(50);
}

void draw() {
  background(255);
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      float distancia = dist(mouseX, mouseY, i*tam, j*tam);
      float a = map(distancia, 0, width, tam/6, tam*2);
      float degrade1 = map(mouseX, 0, width, 0, 255);
      float degrade2= map(mouseY, 0, width, 0, 255);
      if (mouseX>=300) {
        fill(degrade1, 0, degrade2 );
        rect(i*tam+tam/2, j*tam+tam/2, a, 250);
      } else {
        fill(degrade1, 0, degrade2);
        ellipse(i*tam+tam/2, j*tam+tam/2, a, 150);
      }
    }
  }
  if (keyPressed) {
    if (key==' '){
      fill(0);
      rect(width/2,height/2,width,height);
    }
    if (key=='r'){
      reset();
    }
}
}
void reset() {
  mouseX=0;
  mouseY=0;
}
