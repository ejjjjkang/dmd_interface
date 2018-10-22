
Mover[] movers = new Mover[20];

void setup() {
  size(500, 500);
  smooth();
  background(255);
  for (int i=0; i<movers.length; i++) {
    movers[i] = new Mover();
  }
}

void draw() {
  background(255);
  for (int i=0; i<movers.length; i++) {
    movers[i].update();
    movers[i].checkEdge();
    movers[i].display();
  }
}
