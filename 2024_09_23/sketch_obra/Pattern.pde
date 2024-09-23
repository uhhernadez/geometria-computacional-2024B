class Pattern {
  PVector position;
  float width1, width2, width3;
  PVector offset1, offset2;
  
  Pattern () {
    position = new PVector(0, 0);
    width1 = 64;
    width2 = 48;
    width3 = 30;
    offset1 = new PVector(8, 8);
    offset2 = new PVector(17, 17);
  }
  void Draw () {
    pushMatrix();
      translate(position.x, position.y);
      rect(0,0, width1, width1);
      pushMatrix();
        translate(offset1.x, offset1.y);
        rect(0,0, width2, width2);
      popMatrix();
      pushMatrix();
        translate(offset2.x, offset2.y);
        rect(0,0, width3, width3);
      popMatrix();
    popMatrix();
  }

}
