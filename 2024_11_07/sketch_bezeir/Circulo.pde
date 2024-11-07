class Circulo {
  ArrayList<PVector> curva;
  float x, y, radius;
  Circulo (float x, float y, float radius) {
    this.x = x;
    this.y = y;
    this.radius = radius;
    curva = new ArrayList<PVector>();
    for (float t = 0; t <= 2*PI; t+=radians(1)) {
      curva.add(f(t, radius));
    }
  }
  void Draw () {
    noFill();
    beginShape();
      for (PVector p:curva) {
        float px = x + p.x;
        float py = y + p.y;
        vertex(px,py);
      }
    endShape();
    fill(255);
  }
  PVector f(float t, float R) {
    float x = R * cos(t);
    float y = R * sin(t);
    return new PVector(x, y);
  } 
}
