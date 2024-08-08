int num;
void setup () {
  size(256, 256);
  num = 0;
}

void draw () {
  if ( num < 100) {
    background(0);
  } else {
    background(255);
  }
  num++;
}
