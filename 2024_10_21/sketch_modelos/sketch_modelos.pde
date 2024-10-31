Gizmo g;
PShape modelo;

void setup () {
  size(512, 512, P3D);
  g = new Gizmo ();
  modelo = loadShape("Creeper.obj");
}

void draw () {
  background(200);
  lights();
  g.Draw();
  float r = 20;
  float t = millis() / 1000.0;
  float x = r * cos(t);
  float y = r * sin(t);
  //rotateX(PI/2);
  scale(2);
  perspective(radians(60), 
              float(width)/float(height), 
              0.1, 100);
  shape(modelo, 0, 0);
  camera(x, y, 10,
    0, 0, 0,
    0, 0, -1);
}
