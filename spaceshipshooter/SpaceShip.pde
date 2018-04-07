class SpaceShip
{
  int x; 
  int y; 
  int w = 100;
  int x_speed = 10;
  boolean left, right, up, down;
  boolean shoot = false; 
  ArrayList<projectiles> pjt = new ArrayList<projectiles>();
 
  projectiles[] pjtList = new projectiles[10];
  int pjtTracker;
 
   SpaceShip()
  {
    x = 100;
    y = 50; 
    for (int i = 0; i < 10; i++) pjtList[0] = new projectiles(0, 0);
    pjtTracker = 0;
  }
  
  void show()
  {
    fill(65, 105, 225);
    noStroke(); 
    rect(x, y, w, 50); 
    fill(0);
    rect(x+w-20, y+40-2, 25, 10);
    
  }
  void update()
  { 
    if (left) x-=x_speed;
    else if (right) x+=x_speed;
    
    if (up) y-=x_speed;
    else if (down) y+=x_speed;
    
    if (!pjt.isEmpty()){
      for (projectiles p : pjt){
        p.show();
        p.update();
      }
      if (pjt.get(0).getX() > width) pjt.remove(0);
      println("size = " + pjt.size()); //->Does indeed remove them
    }
  }
  
  void shoot()
  {
    if (pjtTracker == 10) {
        pjtTracker = 0;
    }
    pjtList[pjtTracker] = new projectiles(x+w+5, y+40+5-1);
    pjt.add(pjtList[pjtTracker]);
    pjtTracker++;
    shoot = true;
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
  