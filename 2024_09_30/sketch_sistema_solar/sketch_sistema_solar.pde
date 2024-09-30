//Planet earth;
Sun sun;
void setup() {
  size(500, 500);
  //earth = new Planet("tierra.png",100, 100, 0, 0 );
  sun = new Sun ("sol.png", 200, 200, 0, 0);
}

void draw() {
  background(0);
  translate(width/2,height/2);
  //earth.Draw();
  sun.Draw();
}
