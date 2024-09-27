Gizmo g;
Pattern p;
Pattern [] painting;
void setup () {
  size (500, 500);
  g = new Gizmo ();
  p = new Pattern(100);
  painting = new Pattern[5*5];
  for (int i = 0; i < 25; i++) {
    painting[i] = new Pattern(100);
  }
}

void draw () {
  int k = 0;
  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 5; j++) {
      pushMatrix();
        translate(i*100, j*100);
        painting[k].Draw();
        k++;
      popMatrix();
    }
  }
}
