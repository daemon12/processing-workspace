int x = 0;  
void setup() {
  size(600, 600);    
  background(102);    
  frameRate(10);
  smooth();    
  noStroke();
}

void draw() {
  fill(0, 40);
  rect(0, 0, width, height);
  translate(width/2, height/2);
  fill(172,172,172);
  ellipse(30*cos(radians(x)), 30*sin(radians(x)), 17, 17);
  x+=30;
}
