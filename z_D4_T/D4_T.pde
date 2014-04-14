float angle =0.0;
void setup() {
  size(700, 700, P3D);
  smooth();
  frameRate(4);
}
void draw() {
  background(0);
  noFill();
  lights();
  strokeWeight(4);
  translate(width/2, height/2);
  rotateY(-PI/8);
  rotateX(-PI/8);
  //outer-box
  stroke(255);
  float sizeXX=350;
  box(sizeXX);
  //inner box
  fill(#BC88D6);
  stroke(#0F80A7);
  strokeWeight(7);
  float sizeX=sizeXX/2;
  pushMatrix();
  box(sizeX);
  popMatrix();
  //drawing front faced lines
  line(sizeX/2, sizeX/2, sizeX/2, sizeXX/2, sizeXX/2, sizeXX/2);
  line(-sizeX/2, sizeX/2, sizeX/2, -sizeXX/2, sizeXX/2, sizeXX/2);
  line(-sizeX/2, -sizeX/2, sizeX/2, -sizeXX/2, -sizeXX/2, sizeXX/2);
  line(sizeX/2, -sizeX/2, sizeX/2, sizeXX/2, -sizeXX/2, sizeXX/2);
  //drawing back faced lines
  line(sizeX/2, sizeX/2, -sizeX/2, sizeXX/2, sizeXX/2, -sizeXX/2);
  line(-sizeX/2, sizeX/2, -sizeX/2, -sizeXX/2, sizeXX/2, -sizeXX/2);
  line(-sizeX/2, -sizeX/2, -sizeX/2, -sizeXX/2, -sizeXX/2, -sizeXX/2);
  line(sizeX/2, -sizeX/2, -sizeX/2, sizeXX/2, -sizeXX/2, -sizeXX/2);
  angle+=0.1;
}

