void setup(){
  size(400,400);
}

void draw(){
background(#BAEAF2); 
noStroke();

//montañas
fill(#A76C2C);
triangle(0,20,0,300,100,300);
fill(#6F3D07);
triangle(80,300,200,50,300,300);
fill(#A05B12);
triangle(0,300,80,100,200,300);
fill(#B26E26);
triangle(150,300,200,200,250,300);


//pasto
fill(#38CE39);
rect(0,300,400,300);

//sol
fill(#F8FF48);
circle(320,70,80);

//cerca de madera
strokeWeight(4);
stroke(#431F09);
line(0,260,400,260);

strokeWeight(8);
line(20,260,20,310);
line(50,260,50,310);
line(80,260,80,310);
line(110,260,110,310);
line(140,260,140,310);
line(170,260,170,310);
line(200,260,200,310);
line(230,260,230,310);
line(260,260,260,310);
line(290,260,290,310);
line(320,260,320,310);
line(350,260,350,310);
line(380,260,380,310);

//caño metálico de la camioneta
strokeWeight(4);
stroke(100);
line(210,245,140,310);

//camioneta
noStroke();
fill(#E80013);
stroke(1);
stroke(#BF0C1B);
triangle(250,300,260,248,290,300);
rect(210,245,50,50);
stroke(2);
stroke(#BF0C1B);
rect(120,290,200,50);

//ruedas
noStroke();
fill(100);
circle(160,340,40);
circle(280,340,40);
fill(150);
circle(160,340,20);
circle(280,340,20);
circle(160,340,10);

//ventana
fill(#80B4EA);
rect(215,250,40,40);
triangle(260,290,260,252,280,290);

//puerta
noFill();
strokeWeight(2);
stroke(#BF0C1B);
rect(210,295,50,40);
line(214,300,220,300);

//luces
fill(#FFA703);
rect(310,300,10,20);
rect(120,300,20,10);
}
