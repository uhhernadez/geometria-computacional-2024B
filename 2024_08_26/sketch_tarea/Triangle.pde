class Triangle {
  PVector p1, p2, p3;
  
  Triangle() { // Asigna valores por defecto
    p1 = new PVector (0, 0);
    p2 = new PVector (100, 0);
    p3 = new PVector (0, 100);
  }
  
  Triangle (float x1, float y1, 
            float x2, float y2,
            float x3, float y3) {
    p1 = new PVector(x1, y1);
    p2 = new PVector(x2, y2);
    p3 = new PVector(x3, y3);
  }

  void Draw () {
    beginShape();
      vertex(p1.x, p1.y);
      vertex(p2.x, p2.y);
      vertex(p3.x, p3.y);
    endShape(CLOSE);
  }
}
