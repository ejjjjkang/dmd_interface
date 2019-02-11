

void setup() {
  size(1000, 1000);
}

void draw() {

  float t1 = TWO_PI/5000 * millis();
  float t2 = TWO_PI/3000 * millis();
  float t3 = TWO_PI/10000 * millis();
  background(0);

  translate(width/2, height/2);
  drawPlanet(100);
  
  pushMatrix();
  rotate(t1);
  translate(200, 0);
  drawPlanet(50);
  rotate(-t1);
  
  pushMatrix();
  rotate(t2);
  translate(100, 0);
  drawPlanet(20);
  rotate(-t2);
  
  pushMatrix();
  rotate(t3);
  translate(50, 0);
  drawPlanet(10);
  rotate(-t3);
  popMatrix();
  
  popMatrix();
  popMatrix();
}

void drawPlanet(float d) {
  ellipseMode(CENTER);
  ellipse(0, 0, d, d);
  stroke(255);
  line(-2*d, 0, 2*d, 0);
}
