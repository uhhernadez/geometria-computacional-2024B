PImage earth, moon;

void setup() {
  size(500, 500);
  earth = loadImage("tierra.png");
  moon = loadImage("luna.png");
}

void draw() {
  background(0);
  float t = millis()/100.0;
  imageMode(CENTER);
  translate(width/2, height/2);
  pushMatrix();
    scale(0.2);
    rotate(radians(4*t));
    image(earth,0,0);
  popMatrix();
  rotate(radians(-4*t));
  translate(180, 0);
  scale(.09);
  image(moon, 0, 0);
}
