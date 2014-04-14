float x,y,r=200,t=0,a=20,b=20,u;

void setup()
{
// background (0); 
 colorMode (RGB,100);
size (1000,1000);

}

void draw()
{
 background (0);
 fill (0,100,0);
ellipse (x+400,y+400,40,40);
x=r*sin(radians (t));
y=r*cos(radians(t));
fill (100,0,0);
ellipse (a+300,b+300,20,20);

a=r*sin(radians (u));
b=r*cos(radians(u));
t+=2;
u+=2;
r++;
}
