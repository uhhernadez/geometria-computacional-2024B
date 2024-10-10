//Planet earth;
Sun sun;
ArrayList<PVector> stars;
void setup() {
  size(500, 500);
  //earth = new Planet("tierra.png",100, 100, 0, 0 );
  sun = new Sun ("sol.png", 200, 200, 0, 0);
  stars = new ArrayList<PVector>();
  for (int k = 0 ; k < 10000; k++) {
    float x = random(0, 5000);
    float y = random(0, 5000);
    stars.add(new PVector(x,y));
  }
}

void draw() {
  background(0);
  stroke(255);
  for (PVector p:stars) {
    point(p.x,p.y);
    p.add(-1,0);
  }
  translate(width/2,height/2);
  //earth.Draw();
  sun.Draw();
}
