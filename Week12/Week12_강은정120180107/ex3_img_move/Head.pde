
class Head {
  PImage h;
  float x, y;
  float rot;

  Head(String filename, float fx, float fy) {
    h = loadImage(filename);
    x = fx;
    y = fy;
    rot =0.0;
  }

  void display() {
    translate(x, y);
    rotate(rot);
    image(h, 0,0);

    x += 1.0;
    rot += 0.01;

    if (x > width) {
      x *= -1;
    }
  }

}
