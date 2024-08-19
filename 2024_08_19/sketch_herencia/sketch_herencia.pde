ArrayList<Ant> ants;
Warrior warrior;
Worker worker;
Queen queen;

void setup () {
  size (512, 512);
  ants = new ArrayList<Ant>();
  warrior = new Warrior();
  worker = new Worker();
  queen = new Queen();
}

void draw () {
  background(215);
  warrior.Draw();
  worker.Draw();
  queen.Draw();
  for (Ant ant:ants) {
    ant.Draw();
  }
}

void mousePressed() {
  ants.add(new Ant(2,mouseX, mouseY));
}

void keyPressed() {
  if (key == 'a' || key == 'A') {
    ants.add(new Worker());
  }
  if (key == 's' || key == 'S') {
    ants.add(new Warrior());
  }
  if (key == 'd' || key == 'D') {
    ants.add(new Queen());
  }
}
