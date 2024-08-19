class Ant {
  float x, y;
  float radio;
  color color_;

  Ant() {
    x = random(0, width);
    y = random(0, height);
    radio = 5;
    color_ = color(0, 0, 0);
  }

  Ant(float l) {
    x = random(0, width);
    y = random(0, height);
    radio = l;
    color_ = color(0, 0, 0);
  }

  Ant(float l, float x, float y) {
    this.x = x;
    this.y = y;
    radio = l;
    color_ = color(0, 0, 0);
  }

  Ant(float l, int r, int g, int b) {
    x = random(0, width);
    y = random(0, height);
    radio = l;
    color_ = color(r, g, b);
  }

  void Draw () {
    float deltaX = random(-1, 1);
    float deltaY = random(-1, 1);
    x+= deltaX;
    y = y + deltaY;
    fill(color_);
    circle(x, y, 2*radio);
  }
}
