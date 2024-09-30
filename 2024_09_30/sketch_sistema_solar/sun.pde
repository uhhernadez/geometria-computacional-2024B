class Sun {
  Astro sun;
  Planet earth;
  
  Sun (String path, int w, int h, float x, float y) {
    sun = new Astro(path, w, h, x, y);
    earth = new Planet("tierra.png", w/4, h/4, w, 0);
  }
  
  void Draw () {
    float t = millis()/1000.0; 
    pushMatrix();
    sun.Draw();
      translate(sun.center.x, sun.center.y);
      rotate(t);
      earth.Draw();
    popMatrix();
  }
  
}
