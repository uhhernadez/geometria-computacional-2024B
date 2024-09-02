Line l1, l2;
void setup () {
  size (512, 512);
  l1 = new Line(2, 5);
  l2 = new Line(-2, 20);
}

void draw () {
  background(208);
  translate(width/2, height/2);
  l1.Draw();
  l2.Draw();
  PVector p = intersection(l1, l2);
  circle(p.x, p.y, 5);
  println(p);
 // l2.b += 0.5;
}

PVector intersection(Line l1, Line l2) {
  PVector point = new PVector();
  point.x = (l2.b - l1.b)/(l1.m - l2.m);
  point.y = l1.m * ((l2.b - l1.b)/(l1.m - l2.m)) + l1.b;
  return point;
}
