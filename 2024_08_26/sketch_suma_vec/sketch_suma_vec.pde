PVector u, v, w, o;

void setup () {
  size(512, 512);
  o = new PVector();
  u = new PVector(200, 30);
  v = new PVector(50, 100);
  w = PVector.add(u, v);
}

void draw () {
  stroke(255, 0, 0);
  DrawVector(o, u);
  DrawVector(v, w);
  stroke(0 ,255 ,0);
  DrawVector(o, v);
  DrawVector(u, w);
  stroke(0 ,0 ,255);
  DrawVector(o, w);
}

void DrawVector (PVector a, PVector b) {
  line(a.x, a.y, b.x, b.y);
}
