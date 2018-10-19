import java.util.*;

class Firepop{
 
  PVector location;
  PVector velocity;
  PVector acceleration;
  float diam;
  color c;
  
  Firepop(PVector l){
    
    location = l.get();
    c = color(random(255), random(255), random(255));
    diam = random(5,50);

  }
  
  void draw(){
   noStroke();
   fill(c);
   ellipseMode(CENTER);
   ellipse(location.x, location.y, diam,diam);
   
  }
  
}
