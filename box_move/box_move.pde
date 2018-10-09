
int x,y=0;
int x1,y1=30;
int state,state1 = 0;



void setup() {
  size(500, 500);
}


void draw() {
  background(255);
  fill(0,0,255);
  rect(x, y, 20, 20);
  
  fill(255,0,0);
  rect(x1,y1,20,20);

  rectA();
  rectB();
}


void rectA(){
   switch(state) {
  case 0:
    x = x+1;
    //println("Zero");
    if (x == width-20) {
      state = 1; 
      // println("stop");
    }
    break;
  case 1:
    y = y+1;
    if (y == height-20) {
      state =2;
    }
    break;

  case 2:
    x = x-1;
    if (x == 0) {
      state = 3;
    }
    break;
  case 3:
    y = y-1;
    if (y == 0) {
      state = 0;
    }
    break;
  } 
}

void rectB(){
     switch(state1) {
  case 0:
    x1 = x1+1;
    //println("Zero");
    if (x1 == width-50) {
      state1 = 1; 
      // println("stop");
    }
    break;
  case 1:
    y1 = y1+1;
    if (y1 == height-50) {
      state1 =2;
    }
    break;

  case 2:
    x1 = x1-1;
    if (x1 == 30) {
      state1 = 3;
    }
    break;
  case 3:
    y1 = y1-1;
    if (y1 == 30) {
      state1 = 0;
    }
    break;
  } 
}
