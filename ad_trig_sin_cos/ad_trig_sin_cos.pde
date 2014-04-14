int x=0, y1=0, y2=-100;
float angle=0;

void setup() {
  size(600, 600);
  background(0);
  frameRate(1);
}

void draw() {  
  stroke(255);
  strokeWeight(1);
  line(0, height/2, width, height/2);
  translate(0, height/2);

  strokeWeight(10);
  stroke(255, 0, 0);
  point(x, y1);
  stroke(0, 255, 0);
  point(x, y2);

  x+=10;
  y1+=cos(radians(angle))*20;
  y2+=sin(radians(angle))*20;

  angle+=10;
}

