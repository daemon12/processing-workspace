float S=0, H=0, M=0, P=0;
void setup() {
  size(400, 400);
  background(0);
  smooth();
  frameRate(1);
}

void draw() {
  background(0, 0, 0);
  translate(width/2, height/2);
  stroke(102);
  strokeWeight(41);
  ellipse(0, 0, 300, 300);      //clock circle body
  stroke(0);
  strokeWeight(60);
  point(0, 0);                 //center

  S+=PI/30;                    //second hand rotation
  if (frameCount%60==0) {
    M+=PI/30;                  //minute hand rotation
  }
  if (frameCount%3600==0) {
    H+=PI/30;                  //hour hand rotation
  }
  
  stroke(50, 120, 255);
  strokeWeight(21);
  rotate(H);
  line(0, 0, 0, -100); //hour
  rotate(-H); 

  stroke(255, 0, 0);
  strokeWeight(10);
  rotate(M);
  line(0, 0, 0, -120);  //minute
  rotate(-M);

  stroke(100, 100, 0);
  strokeWeight(4);
  rotate(S);
  line(0, 0, 0, -120);  //sec
}
