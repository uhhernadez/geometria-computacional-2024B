class Rectangle {
  PVector p1, p2, p3, p4;
  
  Rectangle () {
    p1 = new PVector (50, 50);
    p2 = new PVector (100, 50);
    p3 = new PVector (100, 100);
    p4 = new PVector (50, 100);
  }
  
  Rectangle (float x1, float y1,
             float x2, float y2,
             float x3, float y3,
             float x4, float y4) {
    p1 = new PVector(x1, y1);
    p2 = new PVector(x2, y2);
    p3 = new PVector(x3, y3);
    p4 = new PVector(x4, y4);
  }

  void Draw () {
    beginShape();
      vertex(p1.x, p1.y);
      vertex(p2.x, p2.y);
      vertex(p3.x, p3.y);
      vertex(p4.x, p4.y);
    endShape(CLOSE);
  }
}
