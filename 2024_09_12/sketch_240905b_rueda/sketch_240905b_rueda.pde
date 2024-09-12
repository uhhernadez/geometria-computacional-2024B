Triangle t;
void setup () {
  size(400, 400);  
  t = new Triangle();
}
void draw () {
  //translate(200, 200);  
  t.Draw();
  //t.Rotate(-radians(0.5));
  //t.TranslateLocal(0.1,0);
  t.RotateLocal(radians(1));
  t.Translate(0.1,0.1);
}
