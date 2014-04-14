float rX=0.0, rY=0.0;
PImage a,b;

void setup() {
  size (600, 600, P3D);
  a=loadImage("img1.jpg");
  b=loadImage("img1.jpg");
}
void draw() {
  background(0);
  translate(300, 300, 0);
  rotateX(rY);
  rotateY(rX);
  translate(-100, -100, 0);
  image(a, 0, 0, 200, 200);
  
//  rotateX(PI/2);
//  translate(200, 0, 0);
//  image(b, 0, 0, 200, 200);  
}
void mouseDragged() {
  rX+=(mouseX-pmouseX)*1.0/100;
  rY-=(mouseY-pmouseY)*1.0/100;
}

