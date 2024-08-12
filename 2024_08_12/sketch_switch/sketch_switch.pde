void setup () {
  size (512, 512);
}
int selector = -1;
void draw () {
  switch(selector) {
    case 1: background(23,104,5);   break;
    case 0: background(0 ,255,123); break;
    case 2: background(58,48 ,12);  break;
    case 3: background(180,48 ,89);  break;
    default: { 
      println("Caso no soportado"); 
      selector = 0;
      break;
    }
  }
  //selector ++;
  //selector = selector % 4;
  //selector = (selector > 3)? 0: selector;
  
  //if (selector > 3) {
  //  selector = 0;
  //} 
  
  println(selector);
}

void keyPressed() {
  selector++;
}
