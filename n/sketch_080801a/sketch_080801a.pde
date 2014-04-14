float x,y,r=200,t=0,a=20,b=20,u;

void setup()
{smooth();
background (0); 
colorMode (RGB,1000);
size (1000,1000);

}
/*
void draw()
{

x=r*sin(radians (t));
y=r*cos(radians(t));
strokeWeight (0);
fill (100,0,0);
bezier (x,y, x+10,y+10, (x+(2*r))+10,(y+(1*r))+10, x+(1*r),y+(1*r) );
fill (0,100,0);
stroke (0,100,0);
bezier (x+300,y+300, x-10,y-10, (x+(2*r))+10, (y+(2*r))+10, x+(1*r), y+(1*r) );
fill (0,0,100);

stroke(10,0,50,20);
bezier (x+100,y+100, x-10,y-10, (x+(1*r))+10, (y+(1*r))+10, x+10, y+10 );
fill (60,10,40,10);
ellipse (x+100,y+100,10,10);
t++;
r+=0.1;

}*/
void draw()
{
  stroke(0,255,0);
x=r*sin(radians (t));
y=r*cos(radians(t));
a=r*sin(radians (t));
b=r*cos(radians(t));

//bezier (x,y, x+10,y+10, (x+(2*r))+10,(y+(2*r))+10, x+(2*r),y+(2*r) );
bezier (x,y, a,b, a+(2*r), b+(2*r), x+(2*r),y+(2*r) );
}


