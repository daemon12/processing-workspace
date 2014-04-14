char kee;
boolean isPressed;
int x=0, y=0, h=40, w=40, inc=h;
float fll;

void setup() {
  size(600, 600);
  background(100);
}

void draw() {
  if (isPressed==true) {
    isPressed=false;
    fill(fll);
    rect(x,y,w,h);
    
    x+=inc;
    if (x>=width) {
      x=0;
      y+=inc;
    }
    if (y>=height) {
      y=0;
    }
  }
}

void keyReleased() {
  isPressed = true;
  kee=key;
  fll = int(map(keyCode, 65, 90, 0,255));
}

