PImage img[];
int x, y, i, imI=0;

void setup() {
  size(600, 600);
  background(0);
  img=new PImage[4];
  for (int i=1;i<=4;i++)
    img[i-1] = loadImage(i+".jpg");
  frameRate(7);
}

void draw() {
  imI = int(0+random(1)*4);
  fill(0, 0, 0, 50);
  rect(0, 0, width, height);
  x=int(random(-10, 400));
  y=int(random(-10, 400));
  image(img[imI], x, y, 250, 250);
}

