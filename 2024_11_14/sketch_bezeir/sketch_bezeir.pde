BezierCubica cubica;
Carro carro;

void setup () {
  size (500, 500);
  cubica = new BezierCubica(10, 200,
                            15, 80,
                            400, 350,
                            290, 360);
  carro = new Carro(0,0,.5);                               
}

void draw () {
  background(210);
  translate(width/2, height/2);
  carro.Dibujar();
}
