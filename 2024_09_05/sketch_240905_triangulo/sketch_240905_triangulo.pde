Triangle t;
void setup () {
  size(500, 500);
  t = new Triangle();
}

void draw () {
  t.Draw();
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      t.Translate(0, -10);
    }
    if (keyCode == DOWN) {
      t.Translate(0, 10);
    }
    if (keyCode == LEFT) {
      t.Translate(-10, 0);   
    }
    if (keyCode == RIGHT) {
      t.Translate(10, 0);
    }
  }
}
