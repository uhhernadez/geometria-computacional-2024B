Gizmo g;
PShape lego;

void setup () {
  size(512, 512, P3D);
  g = new Gizmo ();
  lego = loadShape("lego_mejoradop.obj");
}

void draw () {
  background(0);
  lights();
  g.Draw();
  float r = 100;
  float t = millis() / 1000.0;
  float x = r * cos(t);
  float y = r * sin(t);
  shape(lego, 0, 0);
  camera(x, y, t,
    0, 0, 50,
    0, 0, -1);
}
