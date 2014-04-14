float angle=0.0;
void setup()
{
size(600,600);
//background(0,0,0);
smooth();
frameRate(20);
//noFill();

}

void draw()
{
noStroke();
fill(0,0,0,255);
rect(0,0,600,600);
translate(300,300);
//pushMatrix();
rotate(angle);
fill(0,255,0,255);
rect(-40,-40,80,80);
//popMatrix();



translate(100,0);
//pushMatrix();
rotate(-angle);
fill(0,255,0,255);
rect(-30,-30,60,60);
//popMatrix();
angle+=PI/60;
}
