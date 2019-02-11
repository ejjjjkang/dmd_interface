

Head head;

void setup() {
  size(500, 500);
  head = new Head("face.jpg", 0.0, width/2);
  
}

void draw() {
  background(255);
  head.display();

}
