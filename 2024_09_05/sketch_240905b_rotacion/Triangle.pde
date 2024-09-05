class Triangle {
  PVector [] points;
  
  Triangle () {
    points = new PVector[3];
    points[0] = new PVector(50,0);
    points[1] = new PVector(100,0);
    points[2] = new PVector(50,50);
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
  void Rotate(float theta) {
    points[0] = Rotate(points[0], theta);
    points[1] = Rotate(points[1], theta);
    points[2] = Rotate(points[2], theta);
   }
  PVector Rotate(PVector p, float theta) {
    float x, y;
    x = p.x * cos(theta) + p.y * sin(theta);
    y = -p.x * sin(theta) + p.y * cos(theta);
    return new PVector(x, y);
  }
}
