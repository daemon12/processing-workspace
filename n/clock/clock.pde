float angle=0,angle2=0,angle3=0;


void setup(){
   PFont Pf;
 size(1000,1000);
 Pf=loadFont("font1.vlw");
  textFont(Pf);
 textSize(23);
 smooth();
  frameRate(1);
   }

  void draw(){
  background(0,0,0);
  translate(width/2,height/2);
  fill(204,204,204);
  ellipse(0,0,500,500);
  for(int i=1;i<12;i++){
  fill(0,255,0);
  text(i,250*cos(i*PI/6),250*sin(i*PI/6));
  }
  
  if(frameCount%60==0){
   angle2+=PI/30;
  }
  
  
   if(frameCount%3600==0) {
   angle3+=PI/30;
 
}
 

  stroke(0,255,0);
  strokeWeight(5);
  rotate(angle3);
 line(0,0,0,-250);
 rotate(-angle3);
 
 stroke(0,0,255);
  strokeWeight(5);
  rotate(angle2);
  line(0,0,0,-250);
  rotate(-angle2);
  
  stroke(255,0,0);
  strokeWeight(4);
  rotate(angle);
  
  line(0,0,0,-250);
  angle+=PI/30;
  

}
  
  
  
  


