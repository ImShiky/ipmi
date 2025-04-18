PImage miImagen;

void setup(){
  size(800, 400);
  miImagen = loadImage ("cubitos.png");
}

void draw(){
  background(233); //relleno blanco
  image(miImagen,0, 0, 400, 400);
  text(400 + mouseX + " - " + mouseY, mouseX, mouseY); //coordenadas del mouse
  println(mouseX + " - " + mouseY);//coordenadas del mouse
  float lineaGrosor = 10; //grosor de las lineas
  stroke(0); // Color negro para las líneas
  strokeWeight(lineaGrosor);
  line(490, 0, 490, 800); // 1 linea vertical
  line(404, 130, 490, 130); // 1 linea horizontal
  line(404, 139, 490, 139); // 1 linea horizontal grosor
  line(404, 290, 800, 290); // 2 linea horizontal
  line(750, 290, 750, 750); // 2 linea vertical
  line(750, 346, 800, 346); // 2 linea vertical
  line(750, 355, 800, 355); // 2 linea vertical grosor
  line(404, 130, 404, 139); // arreglo
  noStroke();
  fill (215,0,0); //relleno rojo
    rect(495.9, 0, 800, 284.5);
  fill (30,90,255); //relleno azul
    rect(400, 295, 86, 200);
  fill (255,255,0); //relleno amarillo
    rect(756, 361, 800, 400);
}
//Hola profe, solo quería decirte que podía haber hecho la obra con solo figuras en vez de trabajar con lineas, pero terminé rellenando las líneas con figuras así que es masomenos lo mismo, el trabajo ya está hecho así que espero esto todo bien, ¡saludos!
//Hecho por Juan Rodrigo Yane
//legajo : 122951/8
