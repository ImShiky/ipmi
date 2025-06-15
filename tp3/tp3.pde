PImage oparts;
color colorActual;

void setup(){
  size(800,400);
  noFill();
  stroke(0);
  oparts = loadImage("opart.jpg");
  colorActual = color(0);
}

void cambiarColorPorClick() {
  stroke(colorActual);
}

void draw(){
  background(255);
  image(oparts,0,0,400,400);
  if ((mouseX >= 400 && mouseX <= 800 && mouseY >= 0 && mouseY <= 400)) {
    crearIlusion();
  }
}

void mousePressed() {
  // Cambia de color SOLO si el clic está dentro del área derecha
  if (mouseX >= 400 && mouseX <= 800 && mouseY >= 0 && mouseY <= 400) {
    colorActual = color(
      int(random(50, 255)), 
      int(random(50, 255)), 
      int(random(50, 255))
    );
  }
}

void keyPressed() {
  if (key == ' ') {
    // Reinicia color y fondo
    colorActual = color(0); // Negro original
  }
}
