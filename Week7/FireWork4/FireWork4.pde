//많은 수의 Particle 객체를 관리하고 싶을 땐 Arraylist //<>// //<>//
//Firework

import java.util.*;

Particle p;
ArrayList<Particle> plist;

void setup() {

  size(800, 600);

  plist = new ArrayList<Particle>();

  for (int i=0; i<10; i++) {
    plist.add(new Particle(new PVector(random(width), height)));
  }
}

void draw() {
  background(51);
  noStroke();

  //for(Particle p : plist){

  //}

  for (int i = plist.size()-1; i>=0; i--) {
    Particle p = plist.get(i);
    p.run(); 
    if (p.bye() == true) {
      plist.remove(i);
    }
  }
}
