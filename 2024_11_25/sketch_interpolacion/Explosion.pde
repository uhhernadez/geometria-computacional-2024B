class Explosion {
  int N;
  int i;
  int fs;
  int start;
  PImage [] frames;
  PVector pos;
  Explosion(PVector posicion) {
    N = 5;
    frames = new PImage[N];
    
    frames[0] = loadImage("explosions/output-0.png");
    frames[1] = loadImage("explosions/output-1.png");
    frames[2] = loadImage("explosions/output-2.png");
    frames[3] = loadImage("explosions/output-3.png");
    frames[4] = loadImage("explosions/output-4.png");
    i = 0;
    fs = 200;
    start = millis();
    pos = posicion;
  }

  void Draw() {
    int k = (millis() - start) / fs;
    if(k < N) {
      pushMatrix();
      translate(pos.x,pos.y);
      scale(1.2);
      image(frames[k],0,0);
      popMatrix();
    }
  }
}
