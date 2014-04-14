float deghr=0,degmin=0,degsec=0;
int hr=0,mint=0,sec=0;
PFont pf;

void setup(){
size(600,700);
background(0);
smooth();
frameRate(60);
textFont(loadFont("watch.vlw"));
}

void draw(){
background(0);
stroke(255,120,240);
strokeWeight(4);
translate(width/2,160); 
fill(0);
ellipse(0,0,330,330);
ellipse(0,0,280,280);

strokeWeight(14);
for(int i=1;i<13;i++){
textSize(20);fill(255,120,240);
text(i,165*cos((i-3)*PI/6),155*sin((i-3)*PI/6));
}

}
