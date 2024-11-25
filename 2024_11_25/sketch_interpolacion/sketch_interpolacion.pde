float x0;
float x1;
float t;
float t0;
float T; // Periodo
ArrayList<Explosion> explosions;

PImage bullet;

float step (float x0, float x1, float t) {
  return (t > 0.5)? x1: x0;
}

float linear (float x0, float x1, float t) {
  float x = x0 + t * (x1 -x0); 
  return (x >= x1)? x1: x;
}

float cosine (float x0, float x1, float t) {
  float x = linear(x0, x1, -cos(PI*t)/2.0+0.5 );
  return (x >= x1)? x1: x;
}

float getSeconds() {
  return millis() / 1000.0;
}

void setup () {
  size(500,500);
  x0 = 50;
  x1 = 450;
  t = 0.0;
  T = 10.0;
  t0 = getSeconds();
  bullet = loadImage("bullet.png");
  bullet.resize(25,25);
  explosions = new ArrayList<Explosion>();
}

void draw () {
  background(160);
  imageMode(CENTER);
  float x;
  x = step(x0, x1, (t-t0)/T);
  noFill();
  circle(x0, 50, 20);
  circle(x1, 50, 20);
  fill(255);
  image(bullet, x, 50);
  
  x = linear (x0, x1, (t-t0)/T);
  noFill();
  circle(x0, 100, 20);
  circle(x1, 100, 20);
  fill(255);
  image(bullet, x, 100);
  
  x = cosine (x0, x1, (t-t0)/T);
  noFill();
  circle(x0, 150, 20);
  circle(x1, 150, 20);
  fill(255);
  image(bullet, x, 150);
  t = getSeconds();
  for (Explosion e : explosions) {
    e.Draw();
  }
}

void mousePressed() {
  PVector p = new PVector(mouseX, mouseY);
  explosions.add(new Explosion(p));
}
