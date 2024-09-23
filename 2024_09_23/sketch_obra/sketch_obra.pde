Gizmo g;
Pattern p;
void setup () {
  size (512, 512);
  g = new Gizmo ();
  p = new Pattern();
}

void draw () {
  g.Draw();
  for (int i = 0; i < 10; i++) {
    for (int j = 0; j < 10; j++) {
      pushMatrix();
        translate(p.width1*i, p.width1*j);
        p.Draw();
      popMatrix();
    }
  }
  
}
