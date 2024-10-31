ArrayList<PVector> curva;
PImage img;

void setup () {
  size (500, 500);
  curva = new ArrayList<PVector>();
  float delta = radians(1);
  for (float t = 0; t <=2*PI; t+=delta) {
    PVector p = FElipse(t, 100, 50); 
    p.rotate(radians(45))
    curva.add(p);
  }
  img = loadImage("tierra.png");
  img.resize(50, 50);
  imageMode(CENTER);
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
  image(img,p.x,p.y);
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
