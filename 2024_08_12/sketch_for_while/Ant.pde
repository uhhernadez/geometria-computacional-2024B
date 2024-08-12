class Ant {
  float x, y;
  Ant() {
    x = random(0, width);
    y = random(0, height);
  }
  
  void Draw () {
    float deltaX = random(-1,1);
    float deltaY = random(-1,1);
    x+= deltaX;
    y = y + deltaY;
    point(x,y);
  }
}
