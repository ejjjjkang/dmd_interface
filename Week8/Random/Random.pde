
float[] randomCounts;

void setup(){
 size(500,500); 
 randomCounts = new float[20];
}

void draw(){
  background(255);
  
  int index = int(random(randomCounts.length));
  randomCounts[index]++;
  
  stroke(0);
  fill(175);
  for(int x=0; x<randomCounts.length; x++){
   rect(x*10, 0,9, randomCounts[x]);  
  }
}
