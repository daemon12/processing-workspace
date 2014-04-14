import processing.core.*; 
import processing.xml.*; 

import java.applet.*; 
import java.awt.Dimension; 
import java.awt.Frame; 
import java.awt.event.MouseEvent; 
import java.awt.event.KeyEvent; 
import java.awt.event.FocusEvent; 
import java.awt.Image; 
import java.io.*; 
import java.net.*; 
import java.text.*; 
import java.util.*; 
import java.util.zip.*; 
import java.util.regex.*; 

public class ball_moving extends PApplet {

Ball bs[];
public void setup(){
 size(600,600); smooth();
 bs=new Ball[20];
 for(int i=0;i<bs.length;i++){bs[i]=new Ball();}
}
public void draw(){
  background(0);
  for(int i=0;i<bs.length;i++){bs[i].move();}
  fill(255);rect(295,0,10,600);
  fill(0);rect(295,mouseY,10,41);
  
}
class Ball{
 float x,y,ix,iy;boolean 
 b=random(1)>0.5f; 
 Ball(){
  x=random(600);y=random(600);
  ix=random(-2,2); 
  iy=random(-2,2);  
 }
 public void move(){
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
  static public void main(String args[]) {
    PApplet.main(new String[] { "--present", "--bgcolor=#666666", "--stop-color=#cccccc", "ball_moving" });
  }
}
