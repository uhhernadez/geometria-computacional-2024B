Tyre t;
Byke b;
void setup () {
  size(400, 400);  
  t = new Tyre(50);
  b = new Byke();
}
void draw () {
  background(210);
  translate(200, 200);  
  if(keyPressed) {
    if(key == 'd') {
      b.Forward();
    } else if (key == 'a') {
      b.Backward();
    }
  }
  b.Draw();
}
