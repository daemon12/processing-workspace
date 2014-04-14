Line ob1, ob2, ob3;
void setup() {
  size(600, 600);
  background(0);
  smooth();
  stroke(0, 255, 0);
  ob1 = new Line(4, 7, 9, 85);
  ob2 = new Line(300, 300, 450, 480);
  ob3 = new Line(600, 100, 100, 500);
}
void draw() {
  ob1.drawLine();
  ob2.drawLine();
  ob3.drawLine();
}
class Line {
  int x1, y1, x2, y2;
  float m, c;
  Line(int x1, int y1, int x2, int y2) {
    this.x1 = x1;
    this.y1 = y1;
    this.x2 = x2;
    this.y2 = y2;
  }
  void drawLine() {
  ob3 = new Line(600, 100, 100, 500);
    int diffx=abs(x2-x1);
    int diffy=abs(y2-y1);
    m = (y2 - y1)*1.0/(x2 - x1)*1.0;
    c = round(y2 - m*x2);
    println(m+"-"+c);
    if (diffx>diffy) {
      int start = x1<x2 ? x1 : x2;
      int end   = x1<x2 ? x2 : x1;
      for (int i=start; i<=end; i+=1) {
        float temp;
        temp = m*i+c;
        point(i, temp);
      }
    }else {
      int start = y1<y2 ? y1 : y2;
      int end   = y1<y2 ? y2 : y1;
      for (int i=start; i<=end; i++) {
        float temp;
        temp = i-c/m;
        point(temp, i);
      }
    }
  }
}

