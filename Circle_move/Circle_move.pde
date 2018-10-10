
float r=50;
float period = 40;
float x, y;
float cX, cY;
float inc = TWO_PI/period;
float rectWidth = 5;
float dr = rectWidth/period;
float theta =0;

void setup() {
  size(300, 300);
  cX = width/2;
  cY = height/2;
}

void draw() {
  background(255);
  x = cX + r*cos(theta);
  y = cY + r*sin(theta);
  theta = theta + inc;
  r = r-dr;
  rect(x, y, rectWidth, rectWidth);

  if (r < 0) {
    r = 50;
  }
}
