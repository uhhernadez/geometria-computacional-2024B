Triangle t;
void setup () {
  size(400, 400);  
  t = new Triangle();
}
void draw () {
  translate(200, 200);  
  t.Draw();
  t.Rotate(-radians(0.5));
  t.RotateLocal(radians(1));
}
