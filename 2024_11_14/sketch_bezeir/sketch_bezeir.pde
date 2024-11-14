BezierCubica cubica;
Pieza llanta1, llanta2, cuerpo, cabeza;

void setup () {
  size (500, 500);
  cubica = new BezierCubica(10, 200,
                            15, 80,
                            400, 350,
                            290, 360);
  String personaje = "girl";                            
  llanta1 = new Pieza("sprites/"+personaje +"/wheel_1.png"
                     , 1, 0 , 0);
  llanta2 = new Pieza("sprites/"+personaje +"/wheel_2.png"
                     , 1, 0 , 0);
  cuerpo = new Pieza("sprites/"+personaje +"/body.png"
                     , 1, 0 , 0);
  cabeza = new Pieza("sprites/"+personaje +"/head.png"
                     , 1, 0 , 0);                                     
                    
}

void draw () {
  background(210);
  //cubica.Draw();
  llanta.Dibujar();
}
