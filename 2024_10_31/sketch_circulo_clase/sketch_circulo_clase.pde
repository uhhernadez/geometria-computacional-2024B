Circulo circulo;
BezierLineal lineal;
void setup () {
  size (500, 500);
  circulo = new Circulo(250, 250, 50);
  lineal = new BezierLineal(30, 40, 300, 70);
}

void draw () {
  background(210);
  circulo.Draw();
  lineal.Draw();
}
