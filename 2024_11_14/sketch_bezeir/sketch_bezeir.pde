BezierLineal lineal;
BezierCuadratica cuadratica;
BezierCubica cubica;

PVector centro;
float radio;

void setup () {
  size (500, 500);
  lineal = new BezierLineal(30, 40, 300, 70);
  cuadratica = new BezierCuadratica(50, 100, 10, 130, 100, 100);
  cubica = new BezierCubica(10, 200,
                            15, 80,
                            400, 350,
                            290, 360);
    centro = new PVector(150, 200);
    radio = 50;                            
}

void draw () {
  background(210);
  //lineal.Draw();
  //cuadratica.Draw();
  cubica.Draw();
  
  PVector cursor = new PVector(mouseX, mouseY);
  circle(cursor.x, cursor.y, 10);
  float d = PVector.dist(centro,cursor);
  if (d < radio) {
    fill(255, 0, 0);
    if (mousePressed) {
      centro.set(mouseX, mouseY);
    }
  } else {
    fill(200, 200, 200);
  }
  circle(centro.x,centro.y,2*radio);
 
}
