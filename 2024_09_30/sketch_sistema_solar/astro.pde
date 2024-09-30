class Astro {
  PImage img;
  PVector center;
  
  Astro (String path, int w, int h, float x, float y) {
    img = loadImage(path);
    if(img == null ) {
      println("No existe la imgen: " + path);
      return;
    }
    img.resize(w,h);
    center = new PVector(x,y);
  }
  
  void Draw () {
    float t = millis()/1000.0;
    imageMode(CENTER);
    pushMatrix();
      translate(center.x, center.y);
      rotate(radians(2*t));
      image(img, 0, 0);
    popMatrix();
  }
}
