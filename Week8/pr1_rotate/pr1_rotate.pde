
float angle = 0;
float w = 300;
float h = 100;


void setup(){
 size(640,480); 
 frameRate(1);
}

void draw(){
  translate(width/2, height/2);
  rotate(radians(angle));
  translate(-w/2, -h/2);
  fill(255);
  rect(0,0,w,h);
  
  angle +=5;
  w*=0.9;
  h*=0.9;
  
}
