  
class Bar{
 
  float xpos, ypos, x_len, y_len;
  float theta;
  
  Bar(float x, float y, float x_len1, float y_len1){
    xpos = x;
    ypos = y;
    x_len = x_len1;
    y_len = y_len1;
    theta = 0;
  }
  
  void show(){
    
    theta += radians(30);
    rotateZ(theta);
    rect(xpos,ypos,x_len, y_len);
    
  }
  
}
