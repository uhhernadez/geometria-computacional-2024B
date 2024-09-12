class Tyre {
  PVector [] points;
  PVector center;
  float r;
  
  Tyre() {
    points = new PVector[8];
    r = 30;
    
    for (int i = 0; i < 8; i++) {
      float theta = (float)i * (PI/4.0);
      
      float x = r * cos (theta);
      float y = r * sin (theta);
      points[i] = new PVector(x,y);
    }
    center = new PVector (0, 0);
  }
  
  Tyre(float radius) {
    points = new PVector[8];
    r = radius;
    
    for (int i = 0; i < 8; i++) {
      float theta = (float)i * (PI/4.0);
      
      float x = r * cos (theta);
      float y = r * sin (theta);
      points[i] = new PVector(x,y);
    }
    center = new PVector (0, 0);
  }
  
  
  void Draw () {
    fill(255);
    for (PVector p:points) {
      PVector radius = PVector.add(center, p);
      Line(center,radius);
    }
    fill(220,10,0);
    circle(center.x, center.y, 10);
    noFill();
    circle(center.x, center.y, 2 * r);
  }
  
  void Line (PVector a, PVector b) {
    line(a.x, a.y, b.x, b.y);
  }
  
  void Translate (float x, float y) {
    center.add(x,y);
  }
  
  void TranslateLocal(float x, float y) {
    for (PVector p: points) {
      p.add(new PVector(x,y));
    }
  }  
  
  void Rotate(float theta) {
    center = Rotate(center,theta);
  }
  
  void RotateLocal(float theta)  {
    for (int i = 0; i < 8; i++) {
      points[i] = Rotate(points[i], theta);
    }
  }
   
  PVector Rotate(PVector p, float theta) {
    float x, y;
    x = p.x * cos(theta) + p.y * sin(theta);
    y = -p.x * sin(theta) + p.y * cos(theta);
    return new PVector(x, y);
  }
  
}
