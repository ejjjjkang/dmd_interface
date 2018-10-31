
int [] xpos = new int[50];
int [] ypos = new int[50];

void setup(){
 size(500,500);
 background(51);
 
 //배열 초기화
 for(int i=0; i<xpos.length; i++){
  xpos[i] = 0;
  ypos[i] = 0;
 }
 
}

void draw(){
  
 background(51);
  
  //배열의 변수 전환하기
  for(int i=0; i<xpos.length-1; i++){
  xpos[i] = xpos[i+1];
  ypos[i] = ypos[i+1];
  }
  
  //새로운 장소 (배열의 마지막 장소를 마우스의 좌표로 업데이트)
  xpos[xpos.length-1] = mouseX;
  ypos[ypos.length-1] = mouseY;
 
 // 모든 변수를 사용해 그림 그리기
 for(int i=0; i<xpos.length; i++){
  noStroke();
  fill(255-i*5);
   ellipse(xpos[i], ypos[i], i,i);
  
 }
  
  
  
}
