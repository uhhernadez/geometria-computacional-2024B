class Byke {
  Tyre ta, tb;
  PVector test;
  
  Byke () {
    ta = new Tyre();
    tb = new Tyre();
    ta.Translate(50, 0);
    tb.Translate(-50, 0);
    test = new PVector(0, -50);
  }
  
  void Draw () {
    ta.Draw();
    tb.Draw();
    circle(test.x, test.y, 30);
  }
  
  void Forward() {
    ta.Translate(1,0);
    tb.Translate(1,0);
    test.add(1,0);
    ta.RotateLocal(-radians(1));
    tb.RotateLocal(-radians(1));
  }
  
  void Backward() {
    ta.Translate(-1,0);
    tb.Translate(-1,0);
    test.add(-1,0);
    ta.RotateLocal(radians(1));
    tb.RotateLocal(radians(1));
  }
  
}
