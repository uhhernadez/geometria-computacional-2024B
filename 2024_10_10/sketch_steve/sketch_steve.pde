Gizmo g;
void setup () {
  size(500, 500, P3D);
  g = new Gizmo();
}

void draw () {
  background(145);
  g.Draw();
  pushMatrix();
    translate(0, 0, 28);
    box(8,8,8);
  popMatrix();
  pushMatrix();
    translate(0, 0, 19);
    box(8,4,10);
  popMatrix();
  pushMatrix();
    translate(-2,0,7);
    box(4,4,14);
  popMatrix();
  pushMatrix();
    translate(2,0,7);
    box(4,4,14);
  popMatrix();
  pushMatrix();
    translate(-6,0,18);
    box(4,4,12);
  popMatrix();
  pushMatrix();
    translate(6,0,18);
    box(4,4,12);
  popMatrix();
  
  camera(70, 70, 25,
         0, 0, 25,
         0, 0, -1);       
}
