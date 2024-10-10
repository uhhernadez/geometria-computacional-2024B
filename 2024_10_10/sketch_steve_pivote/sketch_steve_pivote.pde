Gizmo g;
Piece head;
void setup () {
  size(500, 500, P3D);
  head = new Piece (8, 8, 8, 0, 0, 4);
  g = new Gizmo();
}


void draw () {
  float t = millis () / 1000.0;
  background(145);
  g.Draw();
  pushMatrix();
    translate(0, 0, 24);
    rotateZ(radians(45 * cos (2*PI*0.9*t)));
    head.Draw();
  popMatrix();
  camera(70, 70, 25,
         0, 0, 25,
         0, 0, -1);       
}
