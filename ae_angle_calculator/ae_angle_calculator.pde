float x=200, y=200, theta;
PFont font;
float d1, d2;
void setup() {
  size(600, 600);
  background(255);
  smooth();
  stroke(0, 255, 0);
  strokeWeight(4);
  font = loadFont("BookmanOldStyle-48.vlw"); 
  textFont(font,30);
}
void draw() {
  fill(0, 0, 0);
  rect(0, 0, 600, 600);
  line(x, y, 400, 200);
//  d1=sqrt(pow((400-x), 2)+pow((200-y), 2));
  line(x, y, mouseX, mouseY);
//  d2=sqrt(pow((mouseX-x), 2)+pow((mouseY-y), 2));
  d1 = (200-y)/(400-x);
  d2 = (mouseY-y)/(mouseX-x);
//  float theta=atan(d2/d1);
  theta=atan((d2-d1)/(1+d2*d1));
  fill(255);
  text("Pt.1", 180,230);
  text("Pt.2", 380,230);
  text("Pt.3", mouseX+10,mouseY+10);
  text("Angle="+degrees(theta), 200, 300);
}

