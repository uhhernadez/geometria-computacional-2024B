class Triangle {
  PVector [] points;
  PVector center;
  
  Triangle () {
    points = new PVector[3];
    // Origen, global
    center = new PVector (150, 100);
    // Vertices, local
    points[0] = new PVector(0,0);
    points[1] = new PVector(50,0);
    points[2] = new PVector(0,50);
  }
  
  void Draw () {
    beginShape();
    for (PVector p: points) {
      vertex(center.x + p.x, center.y + p.y);
    }
    endShape(CLOSE);
  }
  void Translate (float x, float y) {
   center.add(x, y);
  }
  
}
