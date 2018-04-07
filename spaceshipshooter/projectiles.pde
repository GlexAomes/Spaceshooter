class projectiles
{
  int x; 
  int y; 
  int x_speed = 10;
  
   projectiles(int x, int y)
  {
    this.x = x;
    this.y = y; 
  }
  
  int getX(){
    return x;
  }
  
  void show()
  {
    fill(255, 69, 0);
    noStroke(); 
    ellipse(x, y, 5, 5); 
  }
  void update()
  { 
    x+=x_speed;
  }
}