float theta;

void setup() {
  size(1000, 1000);
  //frameRate(1);
}

void draw() {

  float t1 = TWO_PI/5000 * millis();
  float t2 = TWO_PI/2500 * millis();
  float t3 = TWO_PI/7000 * millis();

  background(0);
  translate(width/2, height/2);
  planet(30, #FF0000);

  pushMatrix();
    rotate(t1);
    translate(200, 0); 
  
    rotate(-t1);
    pushMatrix();
    rotate(TWO_PI/10000 * millis());
    planet(25, #00FF00);
    popMatrix();  
  
    rotate(0);
    translate(80, 0); 
    planet(15, #FFFF00);
    popMatrix();
  
  


  rotate(t3);
  translate(350, 0);
  planet(30, #FFFFFF);
  
}

void planet(float d, color c) {
  //rotate(radians(theta));

  noStroke();
  fill(c);
  ellipseMode(CENTER);
  ellipse(0, 0, d, d);

  stroke(c);

  line(-2*d, 0, 2*d, 0);
  ellipse(2*d, 0, 3, 3);

  //theta += 10/TWO_PI;
}
