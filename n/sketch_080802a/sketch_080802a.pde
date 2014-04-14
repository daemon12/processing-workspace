void setup() {
  size(600,600,P3D);
colorMode(RGB,100);
background(0,0,0);
stroke(100,0,0);
strokeWeight(3);
}
float t=0;
void draw(){
  background(0,0,0);
translate(200,200,200);
rotateX(mouseY);
rotateY(mouseX);
//rotateZ(t);
line(0,0,0,300,0,0);
line(0,0,0,0,300,0);
line(0,0,0,0,0,300);
t+=0.001;
}
