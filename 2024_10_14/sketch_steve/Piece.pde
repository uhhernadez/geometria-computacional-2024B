class Piece {
  PVector offset;
  PVector piece;
  Gizmo g;
  Piece (float bx, float by, float bz, float ox, float oy, float oz) {
    offset = new PVector(ox, oy, oz);
    piece = new PVector(bx, by, bz);
    g = new Gizmo(10);
  }

  void Draw () {
    pushMatrix();
      g.Draw();
      translate(offset.x,offset.y, offset.z);
      box(piece.x, piece.y, piece.z);
    popMatrix();
  }
}
