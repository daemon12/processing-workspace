float x=200, y=30;
float dirx=1, diry=1, i=0;
int ballX=40, ballY=40;

void setup() {
  size(600, 600);  
  background(0, 12);  
  stroke(255);    
  strokeWeight(2);  
  smooth();
}

void draw() {
  fill(0, 21);
  rect(0, 0, width, height);
  fill(255);
  ellipse(x, y, ballX, ballY);
  x = x+dirx;
  y = y+diry;
  println(x+" "+y);
  if (x>600-ballX/2 | x<0+ballX/2) {
    dirx=dirx/abs(dirx)*-int(random(3)+1);
  }
  if (y>600-ballY/2 | y<0+ballY/2) {
    diry=diry/abs(diry)*-int(random(3)+1);
  }
}

