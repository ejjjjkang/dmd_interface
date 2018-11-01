
float theta;

void setup(){
 size(600,400); 
}

void draw(){
  background(255);
  stroke(0);
  theta = PI/2;
  translate(width/2, height);
  line(0,0,0,-120);
  translate(0,-120);
  branch(100);
}

void branch(float h){
 h *=2.0/3.0;
 
 if(h>2){
  pushMatrix();
  rotate(theta);
  line(0,0,0,-h);
  translate(0,-h);
  branch(h);
  rotate(-theta);
  popMatrix();
  
    pushMatrix();
  rotate(-theta);
  line(0,0,0,-h);
  translate(0,-h);
  branch(h);
  popMatrix();
  
 }
}
