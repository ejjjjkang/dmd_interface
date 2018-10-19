
class Firepop{

  float x, y, vx, vy;
  color c = color(random(255), random(255), random(255));
  float diam;
  float g = 9.8/10;
  float countdown = 5;
  boolean bye = false;
  float lifespan = 100;
  
  Firepop(float xx, float yy, float vvx, float vvy){
    
    x =xx;
    y = yy;
    vx = vvx;
    vy = vvy;
    diam = random(5,8);
  }
  
  void draw() {
    noStroke();
    fill(c);
    ellipseMode(CENTER);
    ellipse(x, y, diam, diam);
    lifespan -=3;
  }
  void move(){
    x = x+ vx;
    y = y+ vy + 0.5*g*1;
    vy = vy + g;
    
    countdown = countdown-1;
  }
  
  Boolean bye() {

    if (lifespan < 0.0) {
      bye = true;
    } else {
      bye = false;
    }

    return bye;
  }
  
  float countdown() { return countdown; }
}
