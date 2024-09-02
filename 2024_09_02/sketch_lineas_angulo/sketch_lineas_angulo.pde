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
  float theta = AngleTwoLines (l1, l2);
  text((int)degrees(theta), 0, 100);
  noFill();
  arc(p.x,p.y, 60, 60, l1.Angle(), l1.Angle()+theta);
  println(degrees(l1.Angle()));
  println(degrees(l2.Angle()));
}

PVector intersection(Line l1, Line l2) {
  PVector point = new PVector();
  point.x = (l2.b - l1.b)/(l1.m - l2.m);
  point.y = l1.m * ((l2.b - l1.b)/(l1.m - l2.m)) + l1.b;
  return point;
}

float AngleTwoLines (Line l1, Line l2) {
  return atan((l2.m-l1.m)/(1+l1.m*l2.m));
}
