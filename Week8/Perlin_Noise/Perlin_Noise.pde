  
float noiseScale = 0.02;

void setup(){
 size(500,500); 
}
void draw(){
background(0);
  for (int x=0; x < width; x++) {
    float noiseVal = noise((mouseX+x)*noiseScale, mouseY*noiseScale);
    stroke(noiseVal*255);
    //1과 0 사이의 Noise를 255로 Scaling
    //noiseval는 0과 1사이의 양수이기 때문에 mouse보다 크지 않다.
    line(x, mouseY+noiseVal*80, x, height);
  }
}
