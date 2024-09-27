class Pattern {
  PVector position;
  float width1, width2, width3;
  PVector offset1, offset2;
  color [] colors;
  
  Pattern () {
    position = new PVector(0, 0);
    width1 = 64;
    width2 = 48;
    width3 = 30;
    offset1 = new PVector(8, 8);
    offset2 = new PVector(17, 17);
    colors = new color[4];
    colors[0] = color(#CBB46E);
    colors[1] = color(#5A3C58);
    colors[2] = color(#DAAD5C);
    colors[3] = color(#35161C);
  }
  void Draw () {
    pushMatrix();
      translate(position.x, position.y);
      FillRandom();
      rect(0,0, width1, width1);
      pushMatrix();
        translate(offset1.x, offset1.y);
        FillRandom();
        rect(0,0, width2, width2);
      popMatrix();
      pushMatrix();
        translate(offset2.x, offset2.y);
        FillRandom();
        rect(0,0, width3, width3);
      popMatrix();
    popMatrix();
  }

  void FillRandom() {
    int i = (int)random(0,4);
    fill(colors[i]);
  }
}
