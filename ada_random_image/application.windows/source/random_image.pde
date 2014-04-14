PImage img[];
int x, y, i, imI=0;
void setup() {
  size(600, 600);
  background(255, 255, 255);
  img=new PImage[4];
  for (int i=1;i<=4;i++)
    img[i-1]=loadImage(i+".jpg");
  frameRate(7);
}
void draw() {
  imI=int(0+random(1)*4);
  fill(0, 0, 0, 50);
  rect(0, 0, 600, 600);
  i=int(random(0, 6));  
  fill(random(0,100),random(100,200),random(200,255));
  x=int(random(10, 590));
  y=int(random(10, 590));
  image(img[imI], x, y, 300, 300);
}
