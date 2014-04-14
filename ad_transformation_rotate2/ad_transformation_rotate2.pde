float angle=0.0, angle1=0.0;

void setup(){
  size(600, 600);
  background(0);
}
void draw(){
  translate(height/2, width/2);
  rect(-100, -100, 200,200);

  rotate(angle);
  ellipse(100,100,10,10);
  angle+=PI/30;
}

