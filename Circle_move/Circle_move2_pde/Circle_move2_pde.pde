
int N = 1000;

float [] arrayX = new float [N];
float [] arrayY = new float [N];

float [] speedX = new float [N];
float [] speedY = new float [N];

float [] coef = new float[N];

color [] c = new color[N];
int [] count = new int [N];

float gravity = 0.1;

int frameCount = 0;

void setup() {
  size(600, 600);

  for (int i=0; i< N; i++) {
    arrayX[i] = 0;
    arrayX[i] = 50 + random(-50, 50);

    speedX[i] = 0.2 + random(-3, 3);
    speedY[i] = 0 + random(0, 2);

    coef[i] = -random(0.8, 1.5);
    c[i] = color(random(0, 255), random(0, 255), random(0, 255));
    count[i] = 0;
  }
}

void draw() {
  //background(255);
  frameCount += 1;
  //Display the square

  noStroke();
  rectMode(CENTER);
  for (int i=0; i<N; i++) {
    fill(c[i]);
    rect(arrayX[i], arrayY[i], 15, 15);
    arrayY[i] = arrayY[i] + speedY[i];
    arrayX[i] = arrayX[i] + speedX[i];

    speedY[i] = speedY[i] + gravity;


    if (arrayY[i]> height) {
      arrayY[i] = height;
      speedY[i] = speedY[i] * coef[i];
      // c[i] = color(random(0, 255), random(0, 255), random(0, 255));
      c[i] = color(red(c[i])+10, green(c[i])+10, blue(c[i])+10);
     // println(red(c[i]));
      count[i] += 1;
      //if(count[i] >10){
      //  c[i] = color(255);
      //}
    }
    if (arrayX[i] >= width || arrayX[i] < 0) {
      speedX[i] = speedX[i] * (-1);
    }
  }
}
