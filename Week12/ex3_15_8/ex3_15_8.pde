
PImage img;

void setup() {
  size(200, 200);
  img = loadImage("sunflower.jpg");
}

void draw() {

  loadPixels();
  img.loadPixels();


  for (int x=0; x < img.width; x++) {
    for (int y =0; y<img.height; y++) {
      int loc = x + y*img.width;

      float r = red(img.pixels[loc]);
      float g = green(img.pixels[loc]);
      float b = blue(img.pixels[loc]);


      float rBrightness = ((float) mouseY/height)*8.0; 
      float gBrightness = ((float) mouseX/width)*8.0;
      float bBrightness = ((float)dist(x,y,mouseX,mouseY));


      g *= gBrightness;
      r *= rBrightness;
      b *= bBrightness;
      
      r = constrain(r,0,255);
      g = constrain(g,0,255);
      b = constrain(b,0,255);
      
      color c = color(r, g, b);
      pixels[loc] = c;


      // float distance = dist(x,y,mouseX,mouseY);
      //float adjustBrightness = (50-distance)/50;

      //r*=adjustBrightness;
      //g*=adjustBrightness;
      //b*=adjustBrightness;

      
    }
  }

  updatePixels();
}
