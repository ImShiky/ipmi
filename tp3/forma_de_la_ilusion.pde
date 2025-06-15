void crearIlusion() {
  int cantidad = 29;
  float espaciado = calcularEspaciado(mouseX); // ← Usamos la función que retorna

  for (int i = 2; i < cantidad; i++) {
    float tam = i * espaciado;

    if (i == 2) {
      pushMatrix();
      translate(mouseX, mouseY);
      cambiarColorPorClick();
      rect(-tam / 2, -tam / 2, tam, tam);
      popMatrix();
    }

    if (i > 2) {
      float deformacion = map(mouseX, 0, width, 0.8, 0.8);
      float deformY = map(mouseY, 0, height, 0.8, 0.8);

      pushMatrix();
      translate(600, 200);
      scale(deformacion, deformY);
      cambiarColorPorClick();
      rect(-tam / 2, -tam / 2, tam, tam);
      popMatrix();
    }
  }
}
float calcularEspaciado(float x) {
  return constrain(map(x, 400, 800, 6, 18), 6, 18);
}
