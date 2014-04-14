int i;

void setup() {
  size(500, 500);
  background(0);
  stroke(0, 255, 0);
  noFill();
}

void draw() {
  strokeWeight(10);
  point(10,100);
  point(490,490);
  strokeWeight(1);
  for (i=10;i<100;i+=10) {
    bezier(10, 100, 50+i, 50, 200, 200-i*3, 490, 490);
  }
}

