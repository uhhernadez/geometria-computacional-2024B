PVector v;

void setup () {
  size (512, 512);
  v = new PVector(50, 50);
}

void draw () {
  background(128);
  PVector o = new PVector();
  translate(width/2, height/2);
  //float theta = PVector.angleBetween(new PVector(1,0),v);
  float theta = -0.1 * (millis() / 1000.0); // segundos
  textSize(30);
  textAlign(CENTER);
  float x = 100 * cos (theta);
  float y = 100 * sin (theta);
  v.set(x, y);
  int deg = (int)degrees(theta);
  text("El ángulo es: " + deg, 0, -110);              
  DrawVector(o, v);
}

void DrawVector (PVector a, PVector b) {
  line(a.x, a.y, b.x, b.y);
}
