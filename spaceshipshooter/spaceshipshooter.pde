SpaceShip ship; void setup()
{
  size(960, 720);
  ship = new SpaceShip(); 
}
void draw()
{
  background(80); 
  ship.show(); 
  ship.update();
}
  
void keyPressed(){
    if (key  == 'a') ship.leftDown();
    else if (key == 'd') ship.rightDown();
    
    if (key == 'w') ship.upDown();
    else if (key == 's') ship.downDown();
    if (key == ' ') ship.shoot();
  }
  
  void keyReleased(){
    if (key  == 'a') ship.leftUp();
    else if (key == 'd') ship.rightUp();
    
    if (key == 'w') ship.upUp();
    else if (key == 's') ship.downUp();
  }