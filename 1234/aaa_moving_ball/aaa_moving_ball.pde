
int x=0;

void setup() {
  size(500, 500);
}

void draw() {
  background(0); 
  fill(255, 0, 0);
  stroke(255);
  strokeWeight(7);
  ellipse(x, 250, 50, 50);
  x+=10;
  if(x>550){x=-50;}
}

