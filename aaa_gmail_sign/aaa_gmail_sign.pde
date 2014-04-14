void setup() {
  size(600, 600);
  smooth();
}
void draw() {
  background(0);
  translate(height/2, width/2);
  stroke(255, 0, 0);
  strokeWeight(10);

  rect(-100, -50, 200, 130);
  strokeWeight(15);
  line(-100,-50, 0,10);
  line(100,-50,0,10);
}

