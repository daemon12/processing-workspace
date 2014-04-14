
void setup() {
  size(600, 600);
  background(0);
  strokeWeight(10);
  noFill();
}
void draw() {
  translate(width/2, height/2);
  stroke(255,0,0);
  rect(-200,-200, 400, 400);

  rotate(PI/9);
  stroke(0,255,0);
  rect(-200,-200, 400, 400);
}

