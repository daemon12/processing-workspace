int e1X=150, e1Y=200, e2X=250, e2Y=200, diameter = 50;
color button1Col=#D694DB, button2Col=#6FF6FA;

void setup() {
  size(400, 400);
  background(0);
  smooth();
  stroke(0);
  strokeWeight(3);
}
void draw() {
  fill(button1Col);
  ellipse(e1X, e1Y, diameter, diameter);
  fill(button2Col);
  ellipse(e2X, e2Y, diameter, diameter);
}
void mousePressed() {
  if (sqrt(pow((e1X-mouseX), 2) + pow((e1Y-mouseY), 2)) < diameter/2) {
    background(button1Col);
  }
  else if (sqrt(pow((e2X-mouseX), 2) + pow((e2Y-mouseY), 2)) < diameter/2) {
    background(button2Col);
  }
}
void keyPressed() {
  background(0);
}

