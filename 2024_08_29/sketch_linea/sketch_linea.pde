Line l;
void setup () {
  size (512, 512);
  l = new Line();
  l.m = 1;
}

void draw () {
  background(208);
  translate(width/2, height/2);
  l.Draw();
  //l.b = l.b + 0.1;
  l.m += 0.01;
}
