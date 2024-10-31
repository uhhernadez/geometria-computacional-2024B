ArrayList<PVector> curva;
PImage img;

void setup () {
  size (500, 500);
  curva = new ArrayList<PVector>();
  float delta = radians(1);
  for (float t = 0; t <=2*PI; t+=delta) {
    PVector p = FCurvaMisteriosa(t);
    p.rotate(PI);
    curva.add(p);
  }
  
}
int n = 0;
void draw () {
  background(0);
  translate(width/2, height/2);
  beginShape();
  for (PVector p:curva) {
    vertex(p.x, p.y);
  }
  endShape();
  n = (n == curva.size())? 0: n;
  PVector p = curva.get(n);
  n++;
}

PVector FCirculo(float t, float R) {
  float x = R * cos(t);
  float y = R * sin(t);
  return new PVector(x, y);
}

PVector FElipse(float t, float Rx,float Ry) {
  float x = Rx * cos(t);
  float y = Ry * sin(t);
  return new PVector(x, y);
}

PVector FCurvaMisteriosa(float t) {
  float x = 16 * sin (t) * sin(t)* sin(t);
  float y = 13 * cos (t) - 5 * cos (2*t)- 2*cos(3*t)-cos(4*t);
  return new PVector(x, y);
}
