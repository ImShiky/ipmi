//Buenas profesor, representé lo más fiel posible a la obra, el degrade que me pediste lo intenté hacer pero no pude, intenté algo como if(deg1<255) deg+=25; if(deg2<129); deg2+=20, y así sucesivamente, pero no supe como aplicarlo. Y el for anidado me dijiste que no lo haga porque no era posible en esta obra, aclarando eso gracias profe, ojalá verlo en el próximo cuatrimestre
//Juan Rodrigo Yane 122951/8
// LINK DEL VIDEO : https://www.youtube.com/watch?v=xRNNUOAF0c8

float posx = 400;
float posy = 0;
int negro = 0;
int blanco = 255;
int negro2 = 0;
int blanco2 = 255;
int negro3 = 0;
int blanco3 = 255;
PImage oparts;
color colorActual;
boolean verificacion_color = false;

void setup(){
  size(800, 400); //TAMAÑO PEDIDO SEGÚN LA CONSIGNA
  noFill();
  stroke(0);
  oparts = loadImage("opart.jpg");
}

void draw(){
  background(255);
  ilusion(40, 20);
  image(oparts, 0, 0, 400, 400); //IMAGÉN A LA IZQUIERDA PEDIDA EN LA CONSIGNA
}
