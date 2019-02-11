
float rad = TWO_PI/5;
float x, y;
int step;
//float theta = radians(295);

void setup(){
  size(1200,800,P3D);
  step = 6;
  //theta = radians(PI * 3);
}

void draw(){
  
  background(0);
  stroke(255);
  
  for(int i=1; i<step; i++){
 // rotate(theta);
  translate(width/2, height/2);
  
  x = 200 *cos(rad * i );
  y = 200 *sin(rad * i );
  line(0,0,x,y);
  drawShape(250);
  translate(-width/2,-height/2);
  //rotate(-theta);
  }
}

void drawShape(float r){
  r *=1.0/2.0;
  if(r>2){
  pushMatrix();
  for(int i=1; i<step; i++){
    translate(x,y);
     x = r  *cos(rad*i);
     y = r  *sin(rad*i);
    line(0,0,x ,y);
    drawShape(r);
    translate(-x,-y);
  } 
popMatrix();
  } 
  
}
