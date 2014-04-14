line ob;
class point{
int x=0,y=0;
point(int i,int j){
x=i;
y=j;
}
}
class line{
point start_pt,end_pt;
line(point s,point d){
  start_pt=s;
  end_pt=d;
}
   float getGradient(){
     return(end_pt.y-start_pt.y)/(end_pt.x-start_pt.x);
   }
   float getYintercept(){
   return round(end_pt.y-getGradient()*end_pt.x);
   }
     
  void DrawLine(){
   
    int minX=min(start_pt.x,end_pt.x);
    int maxX=max(start_pt.x,end_pt.x);
  for(int x=minX;x<=maxX;x++){
    start_pt.y=getGradient()*x+getYintercept();
    point(x,y);
  }
}
}

void setup(){
  background(0);
size(600,600);

ob=new line(100,100);
}
void draw(){
rect(0,0,600,600);
fill(0);
ob.DrawLine();

}
