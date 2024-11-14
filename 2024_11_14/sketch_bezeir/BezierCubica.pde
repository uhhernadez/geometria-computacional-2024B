class BezierCubica {
  ArrayList<PVector> curva;
  PVector p0, p1, p2, p3;

  BezierCubica (float x0, float y0, 
                float x1, float y1,
                float x2, float y2,
                float x3, float y3) {
     p0 = new PVector(x0, y0);
     p1 = new PVector(x1, y1);
     p2 = new PVector(x2, y2);
     p3 = new PVector(x3, y3);
     curva = new ArrayList<PVector>();
     Eval();                              
  }
  
  void Draw () {
    noFill();
    beginShape ();
      for (PVector p: curva) {
        vertex(p.x, p.y);
      }
      vertex(p3.x, p3.y);
    endShape ();
    fill(240);
    line(p0.x, p0.y, p1.x, p1.y);
    line(p2.x, p2.y, p3.x, p3.y);
    circle(p0.x, p0.y, 10);
    circle(p1.x, p1.y, 10);
    circle(p2.x, p2.y, 10);
    circle(p3.x, p3.y, 10);
    if (Agarrar(p0, 10)) {
      p0.set(mouseX, mouseY);
      Eval();
      return;
    }
    if (Agarrar(p1, 10)) {
      p1.set(mouseX, mouseY);
      Eval();
      return;
    }
    if (Agarrar(p2, 10)) {
      p2.set(mouseX, mouseY);
      Eval();
      return;
    }
    if (Agarrar(p3, 10)) {
      p3.set(mouseX, mouseY);
      Eval();
      return;
    }
  }
  
  boolean Agarrar(PVector c, float r) {
    PVector puntero = new PVector(mouseX, mouseY);
    float d = PVector.dist(c,puntero);
    return (d < r) && mousePressed;
  }
  
  
  void Eval () {
    curva.clear();
    for (float t = 0; t <= 1.0 ; t+= 0.001) {
      float x = B(p0.x, p1.x, p2.x, p3.x, t);
      float y = B(p0.y, p1.y, p2.y, p3.y, t);
      curva.add(new PVector(x, y));
    } 
  }  
  
  float B (float p0, float p1, float p2,
           float p3, float t) {
    float a = (1 - t) * (1 - t) * (1 - t);
    float b = 3 * t * (1 - t) * (1 - t);
    float c = 3 * t * t * (1 - t);
    float d = t * t * t;
    return a * p0 + b * p1 + c * p2 + d * p3;
  }
} 
