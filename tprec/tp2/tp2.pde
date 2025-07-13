//Hola buenas tardes profesor, soy Juan Rodrigo Yane de la comisión 5 y trabajé con el cuento "Los tres cerditos", tal vez me adelanté a algunas cosas que no vimos, quise agregar las arrays pero las quité por las dudas que no sea algo válido, así que cualquier cosa que necesite correción me avisas y la cambiaré para que esté bien, gracias.

PImage slide1, slide2, slide3, slide4, slide5, slide6, slide7, slide8, slide9, slide10, slide11, slide12, slide13, slide14, slide15, slide16, slide17, slide18, slide19, slide20;
PFont fuente1, fuente2, fuente3, fuente4, fuente5, fuente6, fuente7, fuente8, fuente9, fuente10, fuente11, fuente12, fuente13, fuente14, fuente15, fuente16, fuente17, fuente18, fuente19, fuente20;

int slideActual = 1;
int tiempoInicio;
int duracionSlide = 7000; // Duración en milisegundos

// Variables de animación para cada slide
float alpha1 = 0, alpha4 = 0, alpha5 = 0, alpha6 = 0, alpha11 = 0, alpha15 = 0, fade19 = 0; //animación de reaparición
float posY1 = 480, posY14 = 480; //animación de abajo hasta la coordenada elegida
float escala3 = 0.5, tam9 = 5, tam18 = 8; //animación de escalado de chiquito a grande
float rot7 = -0.7, rot13 = 0; //animación de rotación
float posX8 = -640, posX16 = -300; //animación de entrada de izquierda a derecha
float waveY10 = 380, bounce17 = 0, shake12 = 0; //animación de sacudida
boolean mostrarBoton = false; //variable para reiniciar la presentación
boolean presentacionIniciada = false; //variable para iniciar la presentación

void setup() {
  size(640, 480);
  frameRate(60);

  // Cargar imágenes
  slide1 = loadImage("slide1.png");
  slide2 = loadImage("slide2.png");
  slide3 = loadImage("slide3.png");
  slide4 = loadImage("slide4.png");
  slide5 = loadImage("slide5.png");
  slide6 = loadImage("slide6.png");
  slide7 = loadImage("slide7.png");
  slide8 = loadImage("slide8.png");
  slide9 = loadImage("slide9.png");
  slide10 = loadImage("slide10.png");
  slide11 = loadImage("slide11.png");
  slide12 = loadImage("slide12.png");
  slide13 = loadImage("slide13.png");
  slide14 = loadImage("slide14.png");
  slide15 = loadImage("slide15.png");
  slide16 = loadImage("slide16.png");
  slide17 = loadImage("slide17.png");
  slide18 = loadImage("slide18.png");
  slide19 = loadImage("slide19.png");
  slide20 = loadImage("slide20.png");

  // Cargar fuentes
  fuente1 = loadFont("ComicSansMS-Bold-24.vlw");
  fuente2 = loadFont("Georgia-Bold-20.vlw");
  fuente3 = loadFont("Arial-Black-24.vlw");
  fuente4 = loadFont("CourierNewPSMT-18.vlw");
  fuente5 = loadFont("Verdana-20.vlw");
  fuente6 = loadFont("MongolianBaiti-20.vlw");
  fuente7 = loadFont("Impact-22.vlw");
  fuente8 = loadFont("PalatinoLinotype-Italic-18.vlw");
  fuente9 = loadFont("Georgia-24.vlw");
  fuente10 = loadFont("Bahnschrift-20.vlw");
  fuente11 = loadFont("LucidaConsole-18.vlw");
  fuente12 = loadFont("SegoePrint-22.vlw");
  fuente13 = loadFont("CourierNewPS-BoldMT-20.vlw");
  fuente14 = loadFont("Gabriola-20.vlw");
  fuente15 = loadFont("TrebuchetMS-22.vlw");
  fuente16 = loadFont("Tahoma-18.vlw");
  fuente17 = loadFont("FranklinGothic-Medium-20.vlw");
  fuente18 = loadFont("FranklinGothic-MediumItalic-20.vlw");
  fuente19 = loadFont("Arial-ItalicMT-24.vlw");
  fuente20 = loadFont("TrebuchetMS-22.vlw");

  tiempoInicio = millis(); //El tiempo que pasa lo guardo en esta variable para controlar el tiempo en el que cambian las imágenes
}

void draw() {
  if (!presentacionIniciada) {
  background(0);
  fill(255);
  textFont(fuente1);
  textAlign(CENTER, CENTER);
  textSize(24);
  text("Haz clic para comenzar la historia", 320, 240); //Acá dibuja el texto con el que damos click para iniciar la presentación
  return; // Detiene draw() hasta que se haga clic
}
  background(0);

  // Mostrar imagen y texto según el slide actual
  if (slideActual == 1) {
    image(slide1, 0, 0, 640, 480);
    textFont(fuente1);
    fill(255, alpha1); //animación de reaparición
    textAlign(CENTER, CENTER);
    text("Había una vez tres cerditos muy trabajadores...", 50, 380, 540, 80);
    if (alpha1 < 255) alpha1 += 2; // acá es donde se agranda
  }
  if (slideActual == 2) {
    image(slide2, 0, 0, 640, 480);
    textFont(fuente2);
    fill(255);
    text("El menor, apurado por terminar y descansar, construyó una casa de paja. ¡Rápido y fácil!", 50, posY1, 540, 80);
    if (posY1 > 380) posY1 -= 2; // animación que aparece abajo hasta la cordenada 380 para que esté bien situado el texto
  }
  if (slideActual == 3) {
    image(slide3, 0, 0, 640, 480);
    textFont(fuente3);
    pushMatrix();
    translate(320, 420);
    scale(escala3);
    fill(255);
    text("El mediano, algo más aplicado, optó por madera. Estaba listo antes que su hermano mayor.", -270, -40, 540, 80);
    popMatrix();
    if (escala3 < 1.2) escala3 += 0.01; //animación para que el texto se agrande
  }
  if (slideActual == 4) {
    image(slide4, 0, 0, 640, 480);
    textFont(fuente3);
    fill(255, alpha4);
    text("El mayor, con paciencia y esfuerzo, construyó una sólida casa de ladrillos. Le llevó más tiempo, pero quedó perfecta.", 50, 340, 540, 120);
    if (alpha4 < 255) alpha4 += 2; //animación de reaparición
  }
  if (slideActual == 5) {
    image(slide5, 0, 0, 640, 480);
    textFont(fuente5);
    fill(255, alpha5);
    text("Al caer la noche, cada cerdito se fue a dormir en su casa, sin imaginar lo que estaba por llegar…", 50, 380, 540, 80);
    if (alpha5 < 255) alpha5 += 2; //animación de reaparición
  }

  if (slideActual == 6) {
    image(slide6, 0, 0, 640, 480);
    textFont(fuente6);
    fill(255, alpha6);
    text("En lo profundo del bosque, un lobo hambriento merodeaba en busca de una cena jugosa.", 50, 380, 540, 80);
    if (alpha6 < 255) alpha6 += 3; //animación de reaparición
  }
  if (slideActual == 7) {
    image(slide7, 0, 0, 640, 480);
    textFont(fuente7);
    pushMatrix(); //edito la rotación del texto
    translate(320, 400);
    rotate(rot7); // es -0.7
    fill(255);
    text("¡Ábranme la puerta o soplaré, soplaré... y su casa derribaré!, rugió el lobo frente a la casa de paja.", -270, -40, 540, 80);
    popMatrix(); //termino la rotación para no afectar el resto del código
    if (rot7 < 0) rot7 += 0.01; //aplico la animación de rotación
  }
  if (slideActual == 8) {
    image(slide8, 0, 0, 640, 480);
    textFont(fuente8);
    fill(255);
    text("El cerdito menor, confiado, se burló del lobo. ¡Ja! ¡Nunca podrás!", posX8, 380, 540, 80); //ubico el posx8 como -640 para que no se vea todo el texto y aparezca bien
    if (posX8 < 50) posX8 += 5; //entra de izquierda a derecha aca lo aplica
  }
  if (slideActual == 9) {
    image(slide9, 0, 0, 640, 480);
    textFont(fuente9);
    fill(255);
    textSize(tam9);
    text("El lobo sopló, sopló… ¡y con un estornudo poderoso, la casa voló por los aires!", 50, 340, 540, 120);
    if (tam9 < 32) tam9 += 0.5; //animación de escalado
  }
  if (slideActual == 10) {
    image(slide10, 0, 0, 640, 480);
    textFont(fuente10);
    fill(255);
    waveY10 = 380 + sin(frameCount * 0.5) * 10; //aca aplicamos el efecto shake de rebote, 380 es donde estaba el código inicial, seno es 1 o -1 en processing y framecount es 60 porque va a 60 fotogramas por segundos * 0.5 es la velocidad que hace el efecto de sacudida entre 370 y 390 (ya que el texto esta posicionado en 380), hacia abajo y arriba siendo de 0 +10 y -10 y asi crea el efecto, es un poco complejo de explicar pero así se resuelve el código.
    text("El cerdito escapó corriendo hacia la casa de madera de su hermano.", 50, waveY10, 540, 80); //efecto de rebote
  }
  if (slideActual == 11) {
    image(slide11, 0, 0, 640, 480);
    textFont(fuente11);
    fill(255, alpha11);
    text("¡Soplaré, soplaré... y su casa derribaré!, gritó el lobo otra vez.", 50, 380, 540, 80);
    if (alpha11 < 255) alpha11 += 3; //animación de reaparición
  }
  if (slideActual == 12) {
    image(slide12, 0, 0, 640, 480);
    textFont(fuente12);
    fill(255);
    float dx = random(-shake12, shake12); // entre -0 y 0
    float dy = random(-shake12, shake12); // entre -0 y 0
    text("Ambos cerditos se reían dentro de la casa. ¡Ni lo sueñes, lobo flacucho!", 50 + dx, 380 + dy, 540, 80);
    if (shake12 < 4) shake12 += 0.1; //hace una sacudida en posiciones aleatorias sin pasarse de la coordenada 4 para que el texto no se salga de pantalla, creando el efecto visual de sacudida intensa.
  }
  if (slideActual == 13) {
    image(slide13, 0, 0, 640, 480);
    textFont(fuente13);
    fill(255);
    pushMatrix(); //uso este valor para no afectar todo el código
    translate(320, 380);
    rotate(rot13); // vale 0
    text("Pero el lobo, con más ganas que nunca, volvió a soplar y soplar...", -270, 0, 540, 80);
    popMatrix(); //hasta afecta el rotate
    if (rot13 < PI / 32) rot13 += 0.01; //PI que es 3,1416 y / 32 = 0,098, y la rotación la hace hasta 0,098, que son 5,6 grados.
  }
  if (slideActual == 14) {
    image(slide14, 0, 0, 640, 480);
    textFont(fuente14);
    fill(255);
    text("Y una vez más, la casa cayó en pedazos.", 50, posY14, 540, 80);
    if (posY14 > 380) posY14 -= 3; //animación de abajo a arriba
  }
  if (slideActual == 15) {
    image(slide15, 0, 0, 640, 480);
    textFont(fuente15);
    fill(255, alpha15);
    text("El lobo, cansado pero terco, gritó: ¡Ábranme o soplaré hasta quedarme sin aire!", 50, 380, 540, 80);
    if (alpha15 < 255) alpha15 += 3; //animación de reaparición
  }
  if (slideActual == 16) {
    image(slide16, 0, 0, 640, 480);
    textFont(fuente16);
    fill(255);
    text("Sopló y sopló durante toda la noche...", posX16, 380, 540, 80);
    if (posX16 < 50) posX16 += 5; //animnación de izquierda a derecha
  }
  if (slideActual == 17) {
    image(slide17, 0, 0, 640, 480);
    textFont(fuente17);
    fill(255);
    float bounceY = 380 + sin(frameCount * 0.2) * 10; // misma explicación que en el slide 10, solo que la sacudida es mas suave no tan intensa con el 0.2
    text("Y todo el día siguiente. Pero la casa... ni se movió.", 50, bounceY, 540, 80);
  }
  if (slideActual == 18) {
    image(slide18, 0, 0, 640, 480);
    textFont(fuente18);
    fill(255);
    textSize(tam18); //vale 8
    text("La casa del hermano mayor era tan fuerte que ni un huracán la hubiera derribado.", 50, 380, 540, 80);
    if (tam18 < 28) tam18 += 0.2; //animación de escalado
  }
  if (slideActual == 19) {
    image(slide19, 0, 0, 640, 480);
    textFont(fuente19);
    fill(255, fade19);
    text("Los cerditos aprendieron una gran lección: el esfuerzo y el trabajo dan los mejores resultados.", 50, 380, 540, 80);
    if (fade19 < 255) fade19 += 2; //animación de reaparición
  }
  if (slideActual == 20) {
    image(slide20, 0, 0, 640, 480);
    textFont(fuente20);
    fill(255);
    mostrarBoton = true; //ninguna animación solo botón de reseteo de todo lo mismo
  }

  if (millis() - tiempoInicio > duracionSlide && slideActual < 20) {
    slideActual++;
    tiempoInicio = millis(); //Esta parte del código verifica si pasaron 6 segundos para cambiar el slide, y el < 20 es para que no se pase de las 20 imágenes de slide
  }
  if (mostrarBoton) {
  fill(255);
  stroke(0);
  rect(240, 400, 160, 40); // Dibujo el botón encima de todo
  fill(0);
  textFont(fuente1);
  textAlign(CENTER, CENTER);
  text("Reiniciar", 320, 420);
 }
}
//Restablezco todos los valores como estaban antes para reiniciar toda la animación
void mousePressed() {
  if (!presentacionIniciada) {
    presentacionIniciada = true;
    tiempoInicio = millis(); // arranca el temporizador
    return;
  }
   if (mostrarBoton) {
    // Verificar si el clic fue dentro del botón (x: 240–400, y: 420–460)
    if (mouseX > 240 && mouseX < 400 && mouseY > 420 && mouseY < 460) {
      // Reiniciar todo
      slideActual = 1;
      tiempoInicio = millis();
      alpha1 = 0;
      posY1 = 480;
      escala3 = 0.5;
      alpha4 = 0;
      alpha5 = 0;
      alpha6 = 0;
      rot7 = -0.7;
      posX8 = -640;
      tam9 = 5;
      waveY10 = 380;
      alpha11 = 0;
      shake12 = 0;
      rot13 = 0;
      posY14 = 480;
      alpha15 = 0;
      posX16 = -300;
      bounce17 = 0;
      tam18 = 8;
      fade19 = 0;
      mostrarBoton = false;
    }
  }
}
