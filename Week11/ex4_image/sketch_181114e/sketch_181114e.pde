
PImage im, im2;

void setup() {
  size(1024, 768);
  im = loadImage("random.jpg");
  im2 = loadImage("random2.jpg");
}

void draw() {
  background(0);

  pushMatrix();
  translate(width/2-200, height/2);
  rotate(TWO_PI/4000*millis());
  translate(-im.width/2, -im.height/2);
  image(im, 0, 0);
  popMatrix();

  pushMatrix();
  translate(width/2 + 200, height/2);
  //ellipse(0,0,200,300);
  rotate(TWO_PI/5000*millis());
  translate(-im2.width/2, -im2.height/2);
  image(im2, 0, 0);
  popMatrix();
}
