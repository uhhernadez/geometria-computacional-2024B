class Triangle {
  PVector [] points;
  PVector center;
  
  Triangle () {
    points = new PVector[3];
    points[0] = new PVector(0,50);
    points[1] = new PVector(-50,-50);
    points[2] = new PVector(50,-50);
    center = new PVector (30, 50);
  }
  
  void Draw () {
    fill(255);
    beginShape();
    for (PVector p: points) {
      vertex(center.x + p.x, center.y + p.y);
    }
    endShape(CLOSE);
    fill(220,10,0);
    circle(center.x, center.y, 10);
  }
  
  void Translate (float x, float y) {
    for (PVector p: points) {
      p.add(x, y);
    }
    center.add(x,y);
  }
  void Rotate(float theta) {
    points[0] = Rotate(points[0], theta);
    points[1] = Rotate(points[1], theta);
    points[2] = Rotate(points[2], theta);
    center = Rotate(center,theta);
  }
   
  PVector Rotate(PVector p, float theta) {
    float x, y;
    x = p.x * cos(theta) + p.y * sin(theta);
    y = -p.x * sin(theta) + p.y * cos(theta);
    return new PVector(x, y);
  }
}
