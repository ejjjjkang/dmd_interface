import java.util.*;

ArrayList<ParticleSystem> systems;
ParticleSystem ps;


void setup() {
  fullScreen();

  systems = new ArrayList<ParticleSystem>();
  ps = new ParticleSystem(new PVector(width/2, 50));
}

void draw() {
  background(255);
  for (ParticleSystem ps : systems) {

    ps.run();
    ps.addParticle();
  }
}
void mousePressed() {
  systems.add(new ParticleSystem(new PVector(mouseX, mouseY)));
}
