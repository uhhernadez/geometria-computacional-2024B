class Carro {
  Pieza llanta1, llanta2, cuerpo, cabeza;
  PVector pos;
  float scale;
  Carro (float x, float y, float s) {
  String personaje = "girl";                            
  llanta1 = new Pieza("sprites/"+personaje +"/wheel_1.png"
                     , 1, -160 , 100);
  llanta2 = new Pieza("sprites/"+personaje +"/wheel_2.png"
                     , 1, 120 , 100);
  cuerpo = new Pieza("sprites/"+personaje +"/body.png"
                     , 1, 0 , 0);
  cabeza = new Pieza("sprites/"+personaje +"/head.png"
                     , 1, -100 , -200);            
  pos = new PVector (x, y);
  scale = s;
  }
  
  void Dibujar () {
    pushMatrix();
      translate(pos.x , pos.y);
      scale(scale);
      pushMatrix();
      cuerpo.Dibujar();
      cabeza.Dibujar();
      llanta1.Dibujar();
      llanta1.theta+=radians(1);
      llanta2.Dibujar();
      popMatrix();
    popMatrix();
  }
}
