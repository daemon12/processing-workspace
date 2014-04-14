float r;
float x;

PFont[] font;
void setup(){
 PFont fon[];
size(600,600);
font=new PFont [5];
background(0,0,0);
font[1]=loadFont("font1.vlw");
font[2]=loadFont("font2.vlw");
font[3]=loadFont("font3.vlw");
font[4]=loadFont("font4.vlw");
//font[5]=loadFont("font5.vlw");


}

void draw(){
textFont(font[1],32);
fill(255,0,0);
text("Dare To Be What U Are",200,300);


//rect(0,0,600,600);
//fill(0,0,0,20);

font[2]=("font1.vlw");
font[3]=text("font1.vlw");
font[3]=text("font1.vlw");
font[4]=text("font1.vlw");

}

