
void setup(){
 size(255,255); 
}

void draw(){
  loadPixels();
  
  for(int x=0; x< width; x++){
   for(int y=0; y < height; y++){
    int loc = y*width + x;
    //float distance = sqrt((width/2. -x) * (width/2. -y) 
    //                    + (height/2. -y) *(height/2. -y));
    
    
    //float distance = (abs((width/2. -x) + abs(height/2. -y))/2;
    float distance = dist(width/2, height/2, x, y);
    
    pixels[loc] = color(distance);
     
   }
  }
  
  updatePixels();
}
