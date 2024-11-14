class BezierCuadratica {
  ArrayList<PVector> curva;
  PVector p0, p1, p2;
  
  BezierCuadratica(float x0, float y0, float x1, float y1, float x2, float y2) {
    p0 = new PVector (x0, y0);
    p1 = new PVector (x1, y1);
    p2 = new PVector (x2, y2);
    curva = new ArrayList<PVector>();

    for (float t = 0; t <= 1.0 ; t+= 0.1) {
      float x = B(x0, x1, x2, t);
      float y = B(y0, y1, y2, t);
      curva.add(new PVector(x, y));
    }
  }
  
  void Draw () {
    noFill();
    beginShape ();
      for (PVector p: curva) {
        vertex(p.x, p.y);
      }
      vertex(p2.x, p2.y);
    endShape ();
    fill(240);
    line(p0.x, p0.y, p1.x, p1.y);
    circle(p0.x, p0.y, 10);
    circle(p1.x, p1.y, 10);
    circle(p2.x, p2.y, 10);
  }
  
  float B (float p0, float p1, float p2, float t) {
    return (1-t)*(1-t) * p0+ 2*t*(1-t)*p1 +  t*t*p2;
  }

}
