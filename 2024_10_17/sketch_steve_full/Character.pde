class Character {
  Piece head;
  Piece chest;
  Piece right_leg;
  Piece left_leg;
  Piece right_arm;
  Piece left_arm;
  float f;
  PVector pos;
  float theta;
  
  Character () {
    head = new Piece (8, 8, 8, 0, 0, 4);
    chest = new Piece (8, 4, 10, 0, 0, 0);
    right_leg = new Piece (4, 4, 14, 0, 0,-7);
    left_leg = new Piece (4, 4, 14, 0, 0,-7);
    right_arm = new Piece (4, 4, 12, 0, 0,-6);
    left_arm = new Piece (4, 4, 12, 0, 0,-6);
    f = 0.0;
    pos = new PVector();
    theta = 0;
  }

  void Draw () {
    float t = millis() / 1000.0;
    float A = radians(40);
    float rla = A*cos(2*PI*f*t);
    float rra = A*sin(2*PI*f*t-PI/2.0);
  
    pushMatrix();
    translate(pos.x, pos.y, pos.z);
    rotate(theta);
    // Head
    pushMatrix();
      translate(0, 0, 24);
      rotateZ(0);
      head.Draw();
    popMatrix();
    // Chest
    pushMatrix();
      translate(0, 0, 19);
      rotateZ(0);
      chest.Draw();
    popMatrix();
    // Right leg 
    pushMatrix ();
      translate(-2, 0, 14);
      rotateX(rla);
      right_leg.Draw();
    popMatrix();
    // Left leg 
    pushMatrix ();
      translate(2, 0, 14);
      rotateX(rra);
      left_leg.Draw();
    popMatrix();
    // Right arm 
    pushMatrix ();
      translate(-6, 0, 24);
      rotateX(rla);
      right_arm.Draw();
    popMatrix();
    // Left arm 
    pushMatrix ();
      translate(6, 0, 24);
      rotateX(rra);
      left_arm.Draw();
    popMatrix();
    popMatrix();
  }

}
