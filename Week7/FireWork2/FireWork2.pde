//많은 수의 Particle 객체를 관리하고 싶을 땐 Arraylist

Particle p;
ArrayList<Particle> plist;


void setup(){
 
  //size(600,800);
  fullScreen();
  //p = new Particle(new PVector(width/2,40));
  plist = new ArrayList<Particle>();
  
  for(int i=0; i<100; i++){
    plist.add(new Particle(new PVector(width/2,40)));
  }
}

void draw(){
  background(255);
  for(Particle p : plist){
   p.run(); 
  }
  for(int i = plist.size()-1; i>=0; i--){ //<>//
   p = plist.get(i);
    //<>//
   println(plist.size());
   
   if(p.bye() == true){
    plist.remove(i); 
   }
  }
  
}
