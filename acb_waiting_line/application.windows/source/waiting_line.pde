
int startX = 200;
int endX = 400;
int ypos = 300;

void setup() {
  size(600, 600);
  background(102);
  smooth();
  noStroke();
  frameRate(7);
}

void draw() {
  background(102);
  fill(130);
  for (int i=200;i<=400;i+=30) {
    ellipse(i, ypos, 12, 12);
  }  
  fill(172);
  ellipse(startX, ypos, 21, 21);
  startX+=30;
  if (startX > endX) {
    startX = 200;
  }
}

