
class Particle {

  PVector location;
  PVector acceleration;
  PVector velocity;
  float lifespan = 300;
  boolean bye = false;


  Particle(PVector l) {

    location = l.get();
    acceleration = new PVector(0, 0.05);
    velocity = new PVector(random(-1, 1), random(-2, 0));
  }



  void update() {
    velocity.add(acceleration);
    location.add(velocity);
    lifespan -=2;


    // acceleration.mult(0);
  }

  void display() {
    ellipse(location.x, location.y, 8, 8);
  }

  void run() {
    update();
    display();
  }

  //remove Particle
  Boolean bye() {

    if (lifespan < 0.0) {
      bye = true;
    } else {
      bye = false;
    }

    return bye;
  }
}
