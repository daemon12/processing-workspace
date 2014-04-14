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

public class random_image extends PApplet {

PImage img[];
int x, y, i, imI=0;
public void setup() {
  size(600, 600);
  background(255, 255, 255);
  img=new PImage[4];
  for (int i=1;i<=4;i++)
    img[i-1]=loadImage(i+".jpg");
  frameRate(7);
}
public void draw() {
  imI=PApplet.parseInt(0+random(1)*4);
  fill(0, 0, 0, 50);
  rect(0, 0, 600, 600);
  i=PApplet.parseInt(random(0, 6));  
  fill(random(0,100),random(100,200),random(200,255));
  x=PApplet.parseInt(random(10, 590));
  y=PApplet.parseInt(random(10, 590));
  image(img[imI], x, y, 300, 300);
}
  static public void main(String args[]) {
    PApplet.main(new String[] { "--bgcolor=#F0F0F0", "random_image" });
  }
}
