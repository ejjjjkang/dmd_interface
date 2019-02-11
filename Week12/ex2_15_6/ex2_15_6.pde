
//PImage img;

void setup() {
  size(255, 255);
}

void draw() {
  loadPixels();

  //for(int x=0; x < width; x ++){
  // for(int y=0; y<height; y ++){
  //  int loc = x + y*width;
  //  float distance = dist(mouseX, mouseY, x, y);
  //  pixels[loc] = color(255-distance);
  // }
  //}

 for (int x = 0; x < width; x ++ ) {
  for (int y = 0; y < height; y ++ ) {
    int loc = x + y * width;
    if (x > width/2) {
      pixels[loc] = color(y);
    } else {
      pixels[loc] = color(255 - y);
    }
  }
}

  updatePixels();
}
