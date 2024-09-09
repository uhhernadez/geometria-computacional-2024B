PVector point;
Triangle t;
void setup () {
  size(400, 400);
  point = new PVector(100,100);
  t = new Triangle();
}
void draw () {
  translate(200, 200);
  circle(point.x, point.y, 30);
  point = Rotate(point, radians(1));
  t.Draw();
  t.Translate(10, 0);
  t.Rotate(-radians(1));  
}
PVector Rotate(PVector p, float theta) {
  float x, y;
  x = p.x * cos(theta) + p.y * sin(theta);
  y = -p.x * sin(theta) + p.y * cos(theta);
  return new PVector(x, y);
}
