float rX=0.0, rY=0.0;
PImage vn, tw, tr, fr, fv, sx;
float[] angX, angY;
PImage[] img;

void setup() {
  size(600, 600, P3D);
  strokeWeight(5);
  vn = loadImage("1.jpg");
  tw = loadImage("2.jpg");
  tr = loadImage("3.jpg");
  fr = loadImage("4.jpg");
  fv = loadImage("5.jpg");
  sx = loadImage("6.jpg");
  angY = new float[] { 0, PI/2, PI, 3*PI/2  };
  angX = new float[] { PI/2, -PI/2 };
  img = new PImage[] {vn, tw, tr, fr, fv, sx};
}

void draw() {
  background(0);
  translate(300, 300, 0);  //come to centre
  rotateX(rY);
  rotateY(rX);

  stroke(255, 0, 0);
  line(-300, 0, 0, 300, 0, 0 );
  stroke(0, 255, 0);
  line(0, -300, 0, 0, 300, 0);
  stroke(0, 0, 255);
  line(0, 0, 300, 0, 0, -300);

  stroke(0);
  strokeWeight(5);

  //ONE
  pushMatrix();
  rotateY(0);
  translate(-100, -100, 100);
  rect(0, 0, 200, 200);
  image(vn, 0, 0, 200, 200);
  popMatrix();

  //TWO
  pushMatrix();
  rotateY(PI/2);
  translate(-100, -100, 100);
  rect(0, 0, 200, 200);
  image(tw, 0, 0, 200, 200);
  popMatrix();

  //THREE
  pushMatrix();
  rotateY(PI);
  translate(-100, -100, 100);
  rect(0, 0, 200, 200);
  image(tr, 0, 0, 200, 200);
  popMatrix();

  //FOUR
  pushMatrix();
  rotateY(3*PI/2);
  translate(-100, -100, 100);
  rect(0, 0, 200, 200);
  image(fr, 0, 0, 200, 200);
  popMatrix();

  //FIVE
  pushMatrix();
  rotateX(PI/2);
  translate(-100, -100, 100);
  rect(0, 0, 200, 200);
  image(fv, 0, 0, 200, 200);
  popMatrix();

  //SIX
  pushMatrix();
  rotateX(-PI/2);
  translate(-100, -100, 100);
  rect(0, 0, 200, 200);
  image(sx, 0, 0, 200, 200);
  popMatrix();


//  for (int i=0; i<angY.length; i++) {
//    pushMatrix();
//    rotateY(angY[i]);
//    translate(-100, -100, 100);
//    rect(0, 0, 200, 200);
//    image(img[i], 0, 0, 200, 200);
//    popMatrix();
//  }
//  for (int i=0; i<angX.length; i++) {
//    pushMatrix();
//    rotateX(angX[i]);
//    translate(-100, -100, 100);
//    rect(0, 0, 200, 200);
//    image(img[i+4], 0, 0, 200, 200);
//    popMatrix();
//  }

}

void mouseDragged() {
  rX += (mouseX-pmouseX)*1.0/40; 
  rY += (mouseY-pmouseY)*1.0/40;
}

