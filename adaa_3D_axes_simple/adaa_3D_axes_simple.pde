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

  stroke(255, 0, 0);
  line(-300, 0, 0, 300,0, 0 );
  stroke(0, 255, 0);
  line(0, -300, 0, 0, 300, 0);
  stroke(0, 0, 255);
  line(0, 0, 300, 0, 0, -300);

  stroke(0, 0, 255);
  point(100,100,200);
}

void mouseDragged(){
 rX += (mouseX-pmouseX)*1.0/40; 
 rY += (mouseY-pmouseY)*1.0/40; 
}


