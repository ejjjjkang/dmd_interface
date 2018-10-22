

class Mover {


  PVector acceleration;
  PVector location;
  PVector velocity;

  float topspeed;

  Mover() {

    location = new PVector(random(width), random(height));
    velocity = new PVector(0, 0);
    topspeed = 4;
  }

  void update() {
    PVector mouse = new PVector(mouseX, mouseY);
    PVector dir = PVector.sub(mouse, location);
    dir.normalize();
    dir.mult(0.5);

    //만들어진 벡터를 가속도로 설정
    acceleration = dir;

    velocity.add(acceleration);
    velocity.limit(topspeed);
    location.add(velocity);
  } 

  void display() {
    stroke(0);
    fill(175);
    ellipse(location.x, location.y, 16, 16);
  }

  void checkEdge() {
    if (location.x > width) {
      location.x = 0;
    } else if (location.x <0) {
      location.x = width;
    }

    if (location.y > height) {
      location.y = 0;
    } else if (location.y <0) {
      location.y = height;
    }
  }
}
