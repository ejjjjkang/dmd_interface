
class Particle {
  
  //Particle class object를 User가 생성
  float x, y, vx, vy;
  float g = 9.8/10;
  color c;
  float diam;
  Boolean bye = false;
  int countdown = 20;
 

  //constructor : build 하는데 씀다.
  Particle(int xx, int yy, color cc, int diam) {
    x = xx; 
    y = yy; 
    c = cc;
  }
  Particle(float xx, float yy) {
    x= xx; 
    y = yy;
    vx = vy = 0;
    c = color(random(255), random(255), random(255));
    diam = random(5,50);
  }
  
    Particle(float xx, float yy, float vvx, float vvy) {
    
    x= xx; 
    y = yy;
    vx = vvx;
    vy = vvy;
    c = color(random(255), random(255), random(255));
    diam = random(5,50);
  }

  void set (float xx, float yy) {
    x = xx; 
    y = yy;
  }
  void setx (float xx) {
     x = xx;
  }

  float x() { 
    return x;
  }
  float y() { 
    return y;
  }

  void draw() {
    noStroke();
    fill(c);
    ellipseMode(CENTER);
    ellipse(x, y, diam, diam);
  }
  
  void move(){
    x = x+ vx;
    y = y+ vy + 0.5*g*1;
    vy = vy + g;
    
    countdown = countdown -1;
  }
  
  Boolean move(float ww, float wh){
   
    move();
   // x = x + vx;
   //y = y + vy + 0.5*g;
   //vy = vy + g;
   
   if(y - diam/2 > wh){
    bye = true; 
   }
   
   return bye;
  }
  
  Boolean bye(){
    return bye;
  }
  
  int countdown() { return countdown;}
  
  
}
