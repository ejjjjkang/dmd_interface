float theta = 30;
float w = 80;
float h = 200;

void setup(){
  size(1000,700);
  noStroke();

}

void draw(){
  float t1 = PI/4 * sin(TWO_PI/8000 * millis());
  float t2 = PI/4 * sin(TWO_PI/5000 * millis());
  float t3 = PI/4 * sin(TWO_PI/7000 * millis());
  
  background(255);
  translate(width/2, height-h-50);

  translate(w/2, h);
  rotate(t1);
  axes();
  translate(-w/2,-h);
  fill(0x20FFFF00); // alpha 0xFFFFFFFF <-8
  bar();
  
  translate(0,-h);
  translate(w/2,h);
  rotate(t2);
  axes();
  translate(-w/2,-h);
  fill(#0000FF);
  bar();
  
  translate(w/2,-h);
  translate(0,h);
  rotate(t3);
  axes();
  translate(0,-h);
  translate(-w/2,0);
  fill(#00FF00);
  bar();

}

void bar(){
  rect(0,0,w,h);
  axes();
}

void axes(){
  stroke(255,0,0);
  line(-100,0,100,0);
  stroke(0,255,0);
  line(0,-100,0,100);
  ellipseMode(CENTER);
  stroke(0);
  fill(0);
  ellipse(0,0,30,10);
  ellipse(100,0,5,5);
  ellipse(0,100,5,5);
}
