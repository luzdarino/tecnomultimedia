int miVariable;
String z;
String d;

void setup(){
  
  size(400,400);
  z= "Luz";
  d="Darino";
  
}

void draw(){
  
 background(210);
 miVariable=frameCount;
 
 //circulos
 fill(0,150);
 circle(200,200,miVariable);
 fill(0,80);
 circle(100,100,miVariable);
 fill(0,30);
 circle(300,300,miVariable);

 //nombre
 textSize(30);
 fill(#B983F5);
 text(z,miVariable,100);
 fill(#8EFFB0);
 text(z,50,miVariable);
 fill(#8ED8FF);
 text(z,miVariable,300);
 fill(0);
 text(z,300,miVariable);
 textSize(40);
 fill(250,0,0);
 text(d,mouseX,mouseY);

//formas primitivas
fill(miVariable,150);
rect(130,miVariable,150,50);

}
