PFont pf;

void setup() {
  size(600, 600);
  background(0);

  pf=loadFont("MyFont.vlw");
  textFont(pf);
  textSize(40);
  text("Hello newbie!!", 100, 200);
}

