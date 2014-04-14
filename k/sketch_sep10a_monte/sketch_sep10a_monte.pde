Ball bs[];

class Ball {
  float x, y, ix, iy;
  Ball() {
    x=random(600);
    y=random(600);
    ix=(random(-0.1, 0.1));  
    iy=(random(-0.1, 0.1));
  }
  void move() {
    x=x+ix;
    y=y+iy;
    if (x>600||x<0)ix=-ix;
    if (y>600||y<0)iy=-iy;
    ellipse(x, y, 10, 10);
  }
}

void setup() {
  size(600, 600);
  bs=new Ball[3];
  for (int i=0;i<bs.length;i++){
    bs[i]=new Ball();
  }
}
void draw() {
  background(0);
  fill(random(255), random(255), random(255));
  for (int i=0;i<bs.length;i++) {
    bs[i].move();
  }
}
