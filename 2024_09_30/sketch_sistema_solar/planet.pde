class Planet {
  Astro planet;
  Astro moon;
  PVector center;
  
  Planet (String path, int w, int h, float x, float y) {
    planet = new Astro(path, w, h, x, y);
    moon = new Astro("luna.png", w/3, h/3, -w/2-20, 0);
    center = new PVector(x,y);
  }
  
  void Draw () {
    float t = millis()/1000.0; 
    pushMatrix();
    planet.Draw();
    translate(center.x, center.y);
    rotate(2*t);
    moon.Draw();
    popMatrix();
  }

}
