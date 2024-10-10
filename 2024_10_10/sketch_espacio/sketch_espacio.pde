Gizmo g;
void setup () {
  size(500, 500, P3D);
  g = new Gizmo();
}
float z = -200;
void draw () {
  background(0);
  g.Draw();
  translate(100, 100, 0);
  g.Draw();
  rotateZ(radians(z));
  box(20);
  camera(200, 200, 200,
         100, 100, 0,
         0, 0, -1);
  z++;       
}
