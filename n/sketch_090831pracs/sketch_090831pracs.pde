float angle=0.0;
void setup(){
size(600,600);
background(0);
noStroke();
smooth();
//frameRate(12);
}
void draw(){
fill(0,0,0,255);
rect(0,0,600,600);

translate(300,300);

fill(255,0,0);
rotate(angle);
rect(-150,-150,100,100);
angle+=0.1;

}
