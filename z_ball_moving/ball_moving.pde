Ball bs[];
void setup(){
 size(600,600); smooth();
 bs=new Ball[20];
 for(int i=0;i<bs.length;i++){bs[i]=new Ball();}
}
void draw(){
  background(0);
  for(int i=0;i<bs.length;i++){bs[i].move();}
  fill(255);rect(295,0,10,600);
  fill(0);rect(295,mouseY,10,41);
  
}
class Ball{
 float x,y,ix,iy;boolean 
 b=random(1)>0.5; 
 Ball(){
  x=random(600);y=random(600);
  ix=random(-2,2); 
  iy=random(-2,2);  
 }
 void move(){
 // x=x+random(-2,2);y=y+random(-2,2);   // Metropolis Monte Carlo -->direction also changes alongwith position
  
  x=x+ix;y=y+iy; 
 //  x=random(600);y=random(600);   //random walk
  fill(250);
  if(b)fill(255,0,0);
  else fill(0,0,255);
  ellipse(x,y,10,10);
  
  if(x<0 || x>600 ||(x>295 && x<305)&& ((y<mouseY || y>mouseY+41))){ //&& (y>mouseY && y<mouseY+41))ix=-ix;
//  if((y<mouseY || y>mouseY+41))
  ix=-ix;//ix=random(-2,2);
  }
  if(y>600 || y<0)iy=-iy;
 }
  
}
