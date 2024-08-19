ArrayList<Ant> ants;
Warrior warrior;
Worker worker;
void setup () {
  size (512, 512);
  ants = new ArrayList<Ant>();
  warrior = new Warrior();
  worker = new Worker();
}

void draw () {
  background(215);
  warrior.Draw();
  worker.Draw();
  for (Ant ant:ants) {
    ant.Draw();
  }
}

void mousePressed() {
  ants.add(new Ant(2,mouseX, mouseY));
}
