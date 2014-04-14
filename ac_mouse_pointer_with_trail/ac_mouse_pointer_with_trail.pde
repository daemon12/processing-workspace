
void setup(){
  size(600, 600);
  stroke(255);
}
void draw(){
  fill(0, 25);
  rect(0, 0, width, height);
  fill(255);
  ellipse(mouseX, mouseY, 30, 30);
}
