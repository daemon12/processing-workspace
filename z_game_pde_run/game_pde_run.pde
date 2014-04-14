int a=0, b=90, c=0;
void grid(int a, int b) {
  for (int i=30;i<a;i+=30) {
    stroke(104, 104, 104);
    line(i, 0, i, 600);
  }
  for (int i=30;i<b;i+=30) {
    stroke(104, 104, 104);
    line(0, i, 300, i);
  }
}

class shapes {
  int gx, gy, flag;
  color colr;
  shapes(int gx, int gy, color colr, int flag) {
    this.gx=gx;
    this.gy=gy;
    this.colr=colr;
    this.flag=flag;
  }
  void getshape() {
    if (flag==1) {
      for (int i=gx;i<(gx+60);i+=30) {
        for (int j=gy;j<(gy+60);j+=30) {
          //fill(colr);
          Square sq1=new Square(i, j, colr);
          sq1.Draw();
        }
      }
    }
    if (flag==2) {
      for (int i=gx;i<(gx+60);i+=30) {
        for (int j=gy;j<(gy+60);j+=30) {
          //fill(255);
          Square sq1=new Square(i, j, colr);
          sq1.Draw();
        }
      }
    }
  }
}
class Square {
  int gx, gy;
  color col;
  Square(int gx, int gy, color col) {
    this.gx=gx;
    this.gy=gy;
    this.col=col;
  }
  void Draw() {
    fill(col);
    rect(gx, gy, 30, 30);
  }
}

void setup() {
  size(300, 600);
  frameRate(2);
}

void draw() {
  background(0);
  color col=color(255, 0, 0);
  this.grid(300, 600);
  if (keyPressed && key=='d') {
    b+=30;
  }
  if (keyPressed && key=='a') {
    b-=30;
  }
  shapes sp=new shapes(b, a, col, c);
  sp.getshape();
  if (a<540) {
    a+=30;
  }
  if (a>540) {
    c=round(random(2));
    a=0;
  }
}

