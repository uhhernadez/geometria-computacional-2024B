int num;
int direccion;
int vel;
void setup () {
  size(256, 256);
  num = 0;
  direccion = 1;
  vel = 10;
}

void draw () {
  background(0,0,255);
  //      x    y    extent
  circle(num, 128, 40);
  /*
  if (num > width ) {
    direccion = -1;
  } else if (num < 0) {
    direccion = +1;
  }
  num += direccion * vel;
  */
  
  if (num < width && direccion > 0) {
    num ++;
  } else {
    direccion = -1;
  }
  
  if (num > 0 && direccion < 0) {
    num --;
  } else {
    direccion = +1;
  }
 
}
