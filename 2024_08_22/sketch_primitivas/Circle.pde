class Circle {
  PVector center;
  float radius;

  Circle () {
    center = new PVector();
    radius = 20;
  }
  
  void Draw () {
    circle(center.x, center.y, radius);
  }
}
