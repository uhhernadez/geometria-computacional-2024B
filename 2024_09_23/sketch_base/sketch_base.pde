Gizmo g;
void setup () {
  size (512, 512);
  g = new Gizmo ();
}

void draw () {
  translate(width/2, height/2);
  g.Draw();
  circle(0, 100, 30);
  pushMatrix();
  scale(2);
  g.Draw();
  circle(0, 100, 30);
  popMatrix();
  g.Draw();
  circle(0, 100, 30);
}
