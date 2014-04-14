float angle=0.0, angle1=0.0;
void setup() {
  size(600, 600);
  smooth();
  frameRate(10);
}
void draw() {
  noStroke();
  fill(0, 0, 0);
  rect(0, 0, 600, 600);

  translate(height/2, width/2);
  stroke(255, 0, 0);
  strokeWeight(5);
  ellipse(0, 0, 300, 300);

  rotate(angle);
  line(0, 0, -150, 0);

  translate(-150, 0);
  rotate(-angle+cos(angle)*0.2);
  fill(255, 255, 255);
  rect(-25, -15, 50, 30);
  beginShape();
  vertex(-25,-15);
  vertex(0,-25);
  vertex(25,-15);
  endShape();
//  line(-25,-15,0,-25);
//  line(25,-15,0,-25);
  angle+=PI/30;
}

