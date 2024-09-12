Tyre t;
void setup () {
  size(400, 400);  
  t = new Tyre(50);
}
void draw () {
  background(210);
  translate(200, 200);  
  t.Draw();
  t.RotateLocal(-radians(0.5));
  t.Translate(0.1,0);
}
