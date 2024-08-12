void setup () {
  size (512, 512);
}
String selector = "";
void draw () {
  selector = "rojo";
  switch(selector) {
    case "rojo": background(128, 0, 0);   break;
    case "azul": background(0, 0, 128); break;
    case "verde": background(0, 128, 0);  break;
    default: { 
      
      break;
    }
  }
}

void keyPressed() {
}
