float posX, posY;   // Posición inicial del objeto
float escalaX, escalaY; // Factores de escala
float angulo;       // Ángulo de rotación en grados
float sesgoX, sesgoY; // Factores de sesgado

void setup() {
  size(400, 400);
  posX = width / 2;
  posY = height / 2;
  escalaX = 1.0;
  escalaY = 1.0;
  angulo = 0;
  sesgoX = 0;
  sesgoY = 0;
  ellipseMode(CENTER);
}

void draw() {
  background(220);
  
  // Aplicar las transformaciones al objeto (en este caso, un círculo)
  translate(posX, posY);
  scale(escalaX, escalaY);
  rotate(radians(angulo));
  shearX(radians(sesgoX));
  shearY(radians(sesgoY));
  
  // Dibujar el objeto
  ellipse(0, 0, 50, 50); // El círculo se dibuja en el origen (0, 0) después de las transformaciones
}

void keyPressed() {
  if (key == 't') {
    // Tecla "T" para translación
    posX += 10;
  } else if (key == 's') {
    // Tecla "S" para escalado
    escalaX += 0.1;
    escalaY += 0.1;
  } else if (key == 'r') {
    // Tecla "R" para rotación
    angulo += 10;
  } else if (key == 'e') {
    // Tecla "E" para sesgado
    sesgoX += 0.1;
    sesgoY += 0.1;
  }
}
