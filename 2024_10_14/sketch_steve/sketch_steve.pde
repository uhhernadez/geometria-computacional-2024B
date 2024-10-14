Gizmo g;
Character steve;
void setup () {
  //size(1024, 640, P3D);
  g = new Gizmo();
  steve = new Character();
  fullScreen(P3D);
}


void draw () {
  float t = millis () / 1000.0;
  background(145);
  g.Draw();
  steve.Draw();
  camera(70, 70, 25,
         0, 0, 25,
         0, 0, -1);         
}

void keyPressed () {
  if (key == 'w' || key == 'W') {
    steve.pos.add(0, 1, 0);
  }
  if (key == 's' || key == 'S') {
    steve.pos.add(0, -1, 0);
  }
}
