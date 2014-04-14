float rX=0.0, rY=0.0;

void setup() {
  size(600, 600, P3D);
  strokeWeight(5);
}

void draw() {
  background(0);
  translate(300, 300, 0);  //come to centre
  rotateX(rY);
  rotateY(rX);

  fill(255, 0, 0);
  pushMatrix();
  rect(-100, -100, 200, 200);
  popMatrix();

  fill(0, 255, 0);
  pushMatrix();
  rotateY(PI/2);
  rect(-100, -100, 200, 200);
  popMatrix();

  fill(0, 0, 255);
  pushMatrix();
  rotateX(PI/2);
  rect(-100, -100, 200, 200);
  popMatrix();
}

void mouseDragged() {
  rX += (mouseX-pmouseX)*1.0/40; 
  rY += (mouseY-pmouseY)*1.0/40;
}

