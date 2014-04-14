int x=0, y=0;

void setup() {
  size(600, 600);



  background(0);
  noStroke();
}

void draw() {
  fill(255, 255, 0);
  ellipse(100, 100, 50, 50);
  translate(100, 100);
  fill(250, 0, 0);
  ellipse(100, 100, 50, 50);
  x++;
  y++;
}

