PFont[] pf;
String[] txt;
void setup() {
  size(700, 700);
  pf=new PFont[] { 
    loadFont("Font0.vlw"), loadFont("Font1.vlw"), loadFont("Font2.vlw"), loadFont("Font3.vlw"), loadFont("Font4.vlw") 
  };
  txt=new String[] {
    "L!fe", "Mu$ic..!!", "FriendZ..", "RaFa", "cYclE", "badM!nt@n"
  };
}

void draw() {
  fill(0, 0, 0, 10);
  rect(0, 0, width, height);

  int i=int(random(pf.length));
  textFont(pf[i]);

  int fsize=int(random(0, 48));
  textSize(fsize);
  fill(int(random(0, 255)), int(random(0, 255)), int(random(0, 255)));
  int x=int(random(0, 600));
  int y=int(random(0, 700));
  text(txt[int(random(0, txt.length))], x, y);
}

