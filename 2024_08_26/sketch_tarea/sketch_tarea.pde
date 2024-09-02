Triangle t1, t2;
Rectangle r1, r2;

void setup () {
  size (512, 512);
  t1 = new Triangle();
  t2 = new Triangle(10, 10, 10, 100, 100, 10);

  r2 = new Rectangle();
}

void draw () {
  t1.Draw();
  t2.Draw();

  r2.Draw();
}
