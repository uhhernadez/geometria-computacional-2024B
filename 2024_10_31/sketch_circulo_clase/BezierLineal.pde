class BezierLineal {
  ArrayList<PVector> curva;
  PVector p0, p1;
  
  BezierLineal(float x0, float y0, float x1, float y1) {
    p0 = new PVector(x0, y0);
    p1 = new PVector(x1, y1);
    curva = new ArrayList<PVector>();
    
    for (float t = 0; t <= 1; t+=0.1) {
      float x = B(x0, x1, t);
      float y = B(y0, y1, t);
      curva.add(new PVector(x,y));
    } 
  }
  
  void Draw () {
    beginShape ();
      for (PVector p: curva) {
        vertex(p.x, p.y);
      }
      vertex(p1.x, p1.y);
    endShape ();
    circle(p0.x, p0.y, 10);
    circle(p1.x, p1.y, 10);
  }

  float B(float p0, float p1, float t) {
    return p0 + (p1-p0) * t;
  }
}
