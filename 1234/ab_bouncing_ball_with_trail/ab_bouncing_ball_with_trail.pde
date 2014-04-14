int x=200, y=30;
int dirx=1, diry=2, i=0, speed=2;
int ballX=20, ballY=20;

void setup() {
  size(600, 600);  
  background(0, 12);  
  stroke(255);    
  strokeWeight(2);  
  smooth();
  frameRate(120);
  
}

void draw() {
  fill(0, 50);
  rect(0, 0, width, height);
  fill(255);
  ellipse(x, y, 20, 20);
  x = x+dirx*speed;
  y = y+diry*speed;
  if (x>600-ballX/2 | x<0+ballX/2) {
    dirx=dirx*-1;
  }
  if (y>600-ballY/2 | y<0+ballY/2) {
    diry=diry*-1;
  }
}

