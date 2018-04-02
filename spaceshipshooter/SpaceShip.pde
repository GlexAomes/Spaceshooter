class SpaceShip
{
  int x; 
  int y; 
  int x_speed = 10;
  boolean left, right, up, down;
  boolean shoot = false; 

   SpaceShip()
  {
    x = 100;
    y = 50; 
  }
  
  void show()
  {
    fill(51, 20, 45);
    noStroke(); 
    ellipse(x, y, 50, 50); 
    
    if (shoot == true)
    {
      rect(x, y, 10, 100); 
    }
  }
  void update()
  { 
    /*
    x+=x_speed; 
    if (x >= width || x <=0)
    {
      x_speed*=-1;
    }*/
    if (left) x-=x_speed;
    else if (right) x+=x_speed;
    
    if (up) y-=x_speed;
    else if (down) y+=x_speed;
    
  }
  
  void shoot(boolean val)
  {
    shoot = val; 
  }
  
  void leftDown(){
    left = true;
  }
  
  void leftUp(){
   left = false;
  }
  
  void rightDown(){
    right = true;
  }
  
  void rightUp(){
    right = false;
  }
  
  void upDown(){
    up = true;
  }
  
  void upUp(){
    up = false;
  }
  
  void downDown(){
    down = true;
  }
  
  void downUp(){
    down = false;
  }
  
}
  