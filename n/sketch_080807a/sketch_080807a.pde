float x,y,z,thetaX,thetaY,thetaZ;
float[] x= new float[Length];
float[] y= new float[Length];
float[] z= new float[Length];
float[] thetaX= new float[Length];
float[] thetaY= new float[Length];
float[] thetaZ= new float[Length];
void setup(){
  size(1000,600,P3D);
for(int i=0;i<Length;i++)
x[i]=random(0,width);
y[i]=random(-200,0);
z[i]=random(-100,0);
thetaX=random(-2*PI,2*PI);
thetaY=random(-2*PI,2*PI);
for(int i=0;i<Length;i++)
{
x[i]=random();
}
}

void draw(){
background(0);
directionalLight(5,250,50,0,1,0);
directionalLight(50,250,0,0,1,1);
directionalLight(150,255,0,1,1,0);
  translate(x,y,z);
  rotateX(thetaX);rotateY(thetaY);
  box(50);
  y+=1;
  thetaX+=0.01;  thetaY+=0.01;
  if(thetaX>2*PI)thetaX=-2*PI;
  if(thetaY>2*PI)thetaY=-2*PI;  
}
