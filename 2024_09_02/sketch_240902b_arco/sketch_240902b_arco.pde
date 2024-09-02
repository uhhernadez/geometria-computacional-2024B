float x, y, diameter;
float start, stop;
void setup () {
  size (500, 500);
  x = 100;
  y = 100;
  diameter = 30;
  start = radians(10);
  stop = radians(45);
}

void draw () {
  arc(x,y, diameter, diameter, start, stop);
  stop+=radians(0.5);
}
