

int i,j,x=5,y=5;

void setup(){
size(400,400);
background(0,10);
smooth();

frameRate(10);
}

void draw(){
noStroke();

  for(i=0;i<400;i+=40){
  //fill(#3672E8);  
  //ellipse(x+i,y,20,10);
      fill(0,0,0,10);
      rect(0,0,400,400);
      
       fill(#3672E8);
   ellipse(x+i,y,20,10);
     y++;
  }
}
//for(){

//}
