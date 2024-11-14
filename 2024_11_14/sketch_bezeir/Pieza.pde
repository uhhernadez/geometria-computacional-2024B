class Pieza {
  PImage img;
  PVector pos;
  
  Pieza (String ruta, float s, float x, float y) {
    img = loadImage(ruta);
    pos = new PVector (x, y);
  }
  
  void Dibujar () {
    imageMode(CENTER);
    pushMatrix();
    translate(pos.x, pos.y);
    image(img, 0, 0);
    popMatrix();
  }
  
}
