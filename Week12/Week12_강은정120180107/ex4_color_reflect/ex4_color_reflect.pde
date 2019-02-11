PImage source;
PImage destination;

void setup(){
 size(500,500);
 background(255);
 source = loadImage("sunflower.jpg");
 destination = createImage(source.width, source.height, RGB);
 
 
 
}

void draw(){
 float threshold = 200;
 source.loadPixels();
 destination.loadPixels();
 
 for(int x =0; x<source.width; x++){
  for(int y =0; y<source.height; y++){
   int loc = x + y*source.width;
   
   if(brightness(source.pixels[loc]) > threshold){
    destination.pixels[loc] = source.pixels[loc];
   } else {
    destination.pixels[loc] = color(0); 
   }
  }
 }
 
 destination.updatePixels();
 image(destination, 0,0);
 
}
