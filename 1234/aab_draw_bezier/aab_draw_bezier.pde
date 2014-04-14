void setup() {
  size(500, 500);  
  background(200);
  smooth();
}

void draw() {
  noFill();
  
  int x1=10;
  int y1=10;
  int x2=width-10;
  int y2=height-10;
  stroke(255,0,0);
  strokeWeight(21);
  point(x1,y1);
  point(x2,y2);
  stroke(255);
  strokeWeight(5);
  bezier(x1,y1,200,50,300,450,x2,y2);
  stroke(0);
  point(200,50);
  point(300,450);
}

