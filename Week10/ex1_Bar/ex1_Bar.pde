
Bar b1;

void setup(){
  size(500,500, P3D);
  b1 = new Bar(0,0,10,200);
  frameRate(1);
}

void draw(){
  background(0);
  stroke(0);
  translate(width/2, height/2);
  rect(-10,0,10,200);
  pushMatrix();
  b1.show();
  popMatrix();
  //translate(-width/2, -height/2);
}
