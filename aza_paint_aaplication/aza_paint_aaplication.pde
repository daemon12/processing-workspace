PFont f,f1;
float swt=1.0;
PImage img;

void setup(){
img=loadImage("paper-leaf.jpg");
image(img,0,0,1000,500);

f=loadFont("ComicSansMS-48.vlw");
f1=loadFont("Garamond-48.vlw");


size(1000,500);

}

void draw(){

noFill();
textFont(f1);
textSize(40);
fill(#8b4513);
text("Sketch Your Imaginations!", 30, 50);

if(mousePressed && mouseButton==LEFT){
stroke(0);
line(mouseX,mouseY,pmouseX,pmouseY);}

if(keyPressed == true && keyCode==CONTROL)
image(img,0,0,1000,500);


if((key=='r'||key=='R')&& keyPressed == true){     
stroke(255,0,0);
line(mouseX,mouseY,pmouseX,pmouseY);
}

if((key=='g'||key=='G')&& keyPressed == true){     
stroke(0,255,0);
line(mouseX,mouseY,pmouseX,pmouseY);
}

if((key=='b'||key=='B')&& keyPressed == true){     
stroke(0,0,255);
line(mouseX,mouseY,pmouseX,pmouseY);
}


if((key=='y'||key=='Y')&& keyPressed == true){     
stroke(#ffff00);
line(mouseX,mouseY,pmouseX,pmouseY);
}

if((key=='p'||key=='P')&& keyPressed == true){     
stroke(170,0,255);
line(mouseX,mouseY,pmouseX,pmouseY);
}

strokeWeight(swt);
if(mousePressed && mouseButton==RIGHT && !keyPressed ) swt+=0.1;
if(keyPressed == true && keyCode == ALT)swt-=0.1;


textFont(f);
textSize(18);
text("Choose Colour:Press with mouse",5,460);

textSize(15);

fill(255,0,0);
text("R|r",5,480);

fill(0,255,0);
text("G|g",35,480);

fill(0,0,255);
text("B|b",65,480);

fill(#ffff00);
text("Y|y",95,480);

fill(170,0,255);
text("P|p",125,480);

textSize(15);
fill(#a52a2a);
text("NEW SKETCH->Ctrl",800,30);
text("PAINT STROKE- SIZE->Alt",800,50);









}
