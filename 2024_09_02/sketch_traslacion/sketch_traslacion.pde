Circulo c;
void setup () {
  size(500, 500);
  c = new Circulo();
}

void draw () {
  c.Dibujar();
  //c.Trasladar(1,1);
}

void keyPressed() {
  if (key == 'd' || key == 'D') {
    c.Trasladar(10, 0);
  }
  if (key == 'a' || key == 'A') {
    c.Trasladar(-10, 0);
  }
  if (key == 's' || key == 'S') {
    c.Trasladar(0, 10);
  }
  if (key == 'w' || key == 'W') {
    c.Trasladar(0, -10);
  }
}
