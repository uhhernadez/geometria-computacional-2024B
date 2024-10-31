Circulo circulo;
BezierLineal lineal;
BezierCuadratica cuadratica;
void setup () {
  size (500, 500);
  circulo = new Circulo(250, 250, 50);
  lineal = new BezierLineal(30, 40, 300, 70);
  cuadratica = new BezierCuadratica(50, 100, 10, 130, 100, 100);
}

void draw () {
  background(210);
  circulo.Draw();
  lineal.Draw();
  cuadratica.Draw();
}
