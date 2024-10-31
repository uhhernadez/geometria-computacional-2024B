Gizmo g;
Character steve;
void setup () {
  size(512, 512, P3D);
  g = new Gizmo();
  steve = new Character();
  //fullScreen(P3D);
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
  perspective(fov, float(width)/float(height), 1, 1000);  
  //println(t);        
  //ortho(-50, 50, -50, 50);        
  if (keyPressed) {
    if (key == 'w' || key == 'W') {
      steve.pos.add(cos(steve.theta+PI/2), sin(steve.theta+PI/2), 0);
      steve.f = 2;
    }
    if (key == 's' || key == 'S') {
      steve.pos.add(-cos(steve.theta+PI/2), -sin(steve.theta+PI/2), 0);
      steve.f = 2;
    }
    if (key == 'a' || key == 'A') {
      steve.theta += radians(1);
      steve.f = 1;
    }
    if (key == 'd' || key == 'D') {
      steve.theta -= radians(1);
      steve.f = 1;
    }
  } else {
      steve.f = 0;
  }
}

void keyTyped () {
}
