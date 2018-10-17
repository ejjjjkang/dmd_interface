
//ArrayList는 Array지만 빈 것
ArrayList<Particle> plist = new ArrayList<Particle>();

Particle p;

Boolean flag_move = false;

void setup() {
  
  fullScreen();
  //size(640, 480); 
  p = new Particle(30, 70);

  for (int i=0; i<50; i++) {

    plist.add(new Particle(random(width), random(height)));
    println(plist.size());
  }
}

void draw() {

  background(128);


  for (Particle pi : plist) {
    pi.draw();
  }

  if (flag_move == true) {
    for (int i=0; i<plist.size(); i++) {
      //plist.get(i).draw(); 
      Particle pi = plist.get(i);

      pi.move(width, height);
    }
  }


//remove outside particles
  for (int i = plist.size()-1; i>=0; i--) {
    Particle part = plist.get(i); 
    if (part.bye() || part.countdown() < 0) {
      plist.remove(i);
    }
  }
}

void mouseClicked() {
  if (mouseButton == LEFT) {
    make_particles();
  } else if (mouseButton == RIGHT) {
    flag_move = !flag_move;
  }
}

void make_particles() {
  
  int N = 10;
  float vmag = 10;
  for(int k=0; k< N; k++){
    float vx = vmag * cos(TWO_PI/N*k);
    float vy = vmag * sin(TWO_PI/N*k);
  Particle p = new Particle(mouseX, mouseY,vx, vy);
  plist.add(p);
  }
}
