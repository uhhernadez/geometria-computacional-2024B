class Triangle {
  PVector [] points;
  
  Triangle () {
    points = new PVector[3];
    points[0] = new PVector(0,0);
    points[1] = new PVector(50,0);
    points[2] = new PVector(0,50);
  }
  
  void Draw () {
    beginShape();
    for (PVector p: points) {
      vertex(p.x, p.y);
    }
    endShape(CLOSE);
  }
  void Translate (float x, float y) {
    for (PVector p: points) {
      p.add(x, y);
    }
  }
  
}
