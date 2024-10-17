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
  float fov = radians(60);
  perspective(fov, float(width)/float(height), 1, 10*t);  
  //println(t);        
  //ortho(-50, 50, -50, 50);        
  if (keyPressed) {
    if (key == 'w' || key == 'W') {
      steve.pos.add(0, 1, 0);
      steve.f = 2;
    }
    if (key == 's' || key == 'S') {
      steve.pos.add(0, -1, 0);
      steve.f = 2;
    }
  } else {
      steve.f = 0;
  }
}

void keyTyped () {
}
