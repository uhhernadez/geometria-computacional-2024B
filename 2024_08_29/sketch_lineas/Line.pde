class Line {
  float m; // Pendiente
  float b; // Desplazamiento en el eje y
  
  Line () {
    m = 0.5;
    b = 0;
  }

  Line (float m, float b) {
    this.m = m;
    this.b = b;
  }

  void Draw () {
    PVector p1 = new PVector();
    PVector p2 = new PVector();
    p1.x = -2000;
    p2.x = 2000;
    
    p1.y = m * p1.x + b;
    p2.y = m * p2.x + b;
    line(p1.x, p1.y, p2.x, p2.y);
  }
}
