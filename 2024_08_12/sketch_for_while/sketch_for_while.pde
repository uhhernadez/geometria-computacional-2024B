Ant ant;
Ant [] ants;

void setup () {
  size (512, 512);
  ant = new Ant();
  ants = new Ant[1000];
  
  for (int k=0; k< 1000; k++) {
    ants[k] = new Ant();
  }
  
  /*
  ants[0] = new Ant();
  ants[1] = new Ant();
  ants[2] = new Ant();
  ants[3] = new Ant();
  ants[4] = new Ant();
  ants[5] = new Ant();
  ants[6] = new Ant();
  ants[7] = new Ant();
  ants[8] = new Ant();
  ants[9] = new Ant();
  */
}

void draw () {
  background(215);
  ant.Draw();
  for (int k=0; k < 1000;k++) {
    ants[k].Draw();
  }
}
