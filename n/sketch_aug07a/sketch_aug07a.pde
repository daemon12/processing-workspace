
PFont font;
PFont font2;


void setup(){
size(600,600);
background(0,0,0);
font=loadFont("Hi.vlw");
font2=loadFont("font2.vlw");

//stroke(0);
fill(12,100,60);
textFont(font);
frameRate=30;
}

float r;
float x;
float y;
float a;
float b;
void draw(){
float r=random(48,50);
//textSize(r);
x=random(195,200);
y=random(195,200);
fill(0,0,0,10);
rect(0,0,600,600);
textSize(r);
a=int(random(100,500));
b=int(random(100,500));
rect(0,0,600,600);
//fill(0,0,0,200);
fill(random(0,255),random(0,255),random(0,255),150);
text("GOOD",a,b);
text("LUCK",b,a);
//rect(0,0,600,600);
//fill(0,0,0,15);




}
