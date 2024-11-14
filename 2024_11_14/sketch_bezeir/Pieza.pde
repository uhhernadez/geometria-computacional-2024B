class Pieza {
  PImage img;
  PVector pos;
  float theta;
  Pieza (String ruta, float s, float x, float y) {
    img = loadImage(ruta);
    pos = new PVector (x, y);
    theta = 0.0;
  }
  
  void Dibujar () {
    imageMode(CENTER);
    pushMatrix();
      translate(pos.x, pos.y);
      rotate(theta);
      image(img, 0, 0);
    popMatrix();
  }
}
