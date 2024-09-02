PVector p1, p2; 
PVector pt1, pt2, pt3;
Circle c;

void setup () {
  size(512, 512, P3D);
  c = new Circle();
  //p = new PVector();
  p1 = new PVector(10, 10);
  p2 = new PVector(200, 50);
  pt1 = new PVector(50, 50);
  pt2 = new PVector(100, 50);
  pt3 = new PVector(75, 100);
}

void draw () {
  //point(p1.x, p1.y);
  // line(p1.x, p1.y, p2.x, p2.y);
  Line(p1, p2);
  c.Draw();
  
  beginShape();
    vertex(pt1.x, pt1.y);
    vertex(pt2.x, pt2.y);
    vertex(pt3.x, pt3.y);
  endShape(CLOSE);
  
  
}

// Dibuja una línea usando dos puntos.
void Line (PVector a, PVector b) {
  line(a.x, a.y, b.x, b.y);
}
