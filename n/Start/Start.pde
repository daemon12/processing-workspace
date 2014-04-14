int i=10;
void setup(){
  size(800,800);
  background(0);
  smooth();
  frameRate=30;
  }
void draw(){  
  noStroke();
  fill(0,0,0,10);
  rect(0,0,800,800);
  fill(0,255,0,15);
  ellipse(200,i,20,20);
  i++; 
  }
  
  
  
  
  
