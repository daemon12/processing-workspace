PImage img[];
void setup(){
size(500,500);
background(0);
img =new PImage[7];
for(int i=1;i<=7;i++){
img[i-1] =loadImage(i+".jpg");
}
frameRate(5);
}

void draw(){
  fill(0,0,0,50);
  rect(0,0,width,height);
 int z = floor(random(7));
for(int j=1;j<7;j++){
image(img[z],random(100),random(100),random(400),random(400));
}
}
