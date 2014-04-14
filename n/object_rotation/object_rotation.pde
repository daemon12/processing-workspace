float angle1=0.0,angle2=0.0;

void setup(){
size(600,600);
smooth();
frameRate(60);

}
void draw(){
background(0);
stroke(254);
noFill();
strokeWeight(4);
translate(300,300);
ellipse(0,0,250,250);

rotate(angle1);
rect(-40,-40,80,80);

rotate(angle2);
pushMatrix();
translate(0,-95);
rect(-40,-40,20,20);
popMatrix();
angle2+=0.01;
angle1+=0.1;

}
