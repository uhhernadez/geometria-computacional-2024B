BezierLineal lineal;
BezierCuadratica cuadratica;
BezierCubica cubica;
void setup () {
  size (500, 500);
  lineal = new BezierLineal(30, 40, 300, 70);
  cuadratica = new BezierCuadratica(50, 100, 10, 130, 100, 100);
  cubica = new BezierCubica(10, 200,
                            15, 80,
                            400, 350,
                            290, 360);
}

void draw () {
  background(210);
  //lineal.Draw();
  //cuadratica.Draw();
  cubica.Draw();
}
