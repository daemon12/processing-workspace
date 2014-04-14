float angle1=0.0, angle2=0.0, angle3=0.0;
void setup() {
  size(600, 600);
  frameRate(5);
}

void draw() {
  fill(255);
  rect(0, 0, 600, 600);
  smooth();
  translate(300, 300);
  stroke(0);
  fill(0);
  rotate(angle2+=0.1);
  rect(-20, -20, 40, 40);
  rotate(-angle2);
  strokeWeight(3);
  noFill();
  ellipse(0, 0, 200, 200);

  translate(100*cos(angle1+=0.1), 100*sin(angle1+=0.1));

  rotate(sin(angle1+3*PI/2));
  fill(0);
  rect(-20, -20, 40, 40);
}

