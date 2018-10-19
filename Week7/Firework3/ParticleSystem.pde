import java.util.*;

class ParticleSystem{
 
  ArrayList<Particle> ps;
  PVector origin;
  
  ParticleSystem(PVector l){
    origin = l.get();
    ps = new ArrayList<Particle>();
    
    
  }
  
  void addParticle(){
   ps.add(new Particle(origin));
  }
  
  void run(){
    Iterator<Particle> it = ps.iterator();
    while(it.hasNext()){
     Particle p = it.next();
     p.run();
     
     if(p.bye()){
      it.remove(); 
     }
    }
  }
  
}
