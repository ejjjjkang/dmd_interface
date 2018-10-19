import java.util.*;

class Particle {
  
  
  Firepop fp;
  ArrayList<Firepop> fps;
  
  //float lifespan =2;
  PVector location;
  PVector acceleration;
  PVector velocity;
  boolean bye = false;
  boolean flag = true;
  
  Particle(PVector l) {
  frameRate(120);
    location = l.get();
    acceleration = new PVector(0, 0.05);
    velocity = new PVector(0,random(-10,-4));
    fps = new ArrayList<Firepop>();
    
  }

  void update() {
    velocity.add(acceleration);
    location.add(velocity);    
  }

  void display() {
   if(flag == true){
     ellipse(location.x, location.y, 8, 8);
   }
  }

  void run() {
    
    update();
    display();
    
    if(velocity.y >=0){
      flag = false;
      pop(location.x,location.y, velocity.x, velocity.y);
      
      for(Firepop fp: fps){
        fp.draw();
        fp.move();
      }
      
    for(int s = fps.size()-1; s>=0; s--){
     fp = fps.get(s);
     
     if(fp.bye() || fp.countdown()<0){
     fps.remove(s);
     }
     println(fps.size());
    }
    }
  }

  //remove Particle
  //Boolean bye() {

  //  if (lifespan < 0.0) {
  //    bye = true;
  //  } else {
  //    bye = false;
  //  }

  //  return bye;
  //}
  
  void pop(float x, float y, float vx, float vy){
    
   int N=15;
   float vmag = 30;
   for(int i=0; i<N; i++){
    vx = vmag * cos(TWO_PI/N*i);
    vy = vmag * sin(TWO_PI/N*i);
    Firepop fp = new Firepop(x,y,vx,vy);
    fps.add(fp);
   }
    
  }
  
}
