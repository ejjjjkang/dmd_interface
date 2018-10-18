//많은 수의 Particle 객체를 관리하고 싶을 땐 Arraylist

int total = 10000;
Particle p;
ArrayList<Particle> plist = new ArrayList<Particle>();


void setup(){
  size(640,360);
  p = new Particle(new PVector(random(width), -1));
  for(int i=0; i<total; i++){
    //ArrayList에 객체 추가
    plist.add(p);
    //p[i] = new Particle(new PVector(width/2,10));
  }
  
}

void draw(){
  background(255);
  //ArrayList에 객체 개수 확인
  for(int i=0; i<plist.size(); i++){
    Particle p = plist.get(i);
    p.run();
  }
  for (int i = plist.size()-1; i>=0; i--) {
    Particle p = plist.get(i); 
     if (p.isDead()) {
      plist.remove(i);
    }
  //p[i].run();
  
  //if(p[i].isDead()){
  // println("Particle Dead!"); 
  //}
  }
  
}
