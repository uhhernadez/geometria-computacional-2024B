class Circulo {
  PVector centro;

  Circulo() {
    centro = new PVector();
  }

  void Dibujar () {
    circle(centro.x, centro.y, 40);
  }
  
  void Trasladar (float dx, float dy) {
    // Forma 1
    //centro.x = centro.x + dx;
    //centro.y = centro.y + dy;
    // Forma 2
    //centro.set(centro.x + dx, centro.y + dy);
    // Forma 3
    centro.add(dx, dy);
    // Forma 4
    //centro.add(new PVector(dx,dy));
  }
  
}
