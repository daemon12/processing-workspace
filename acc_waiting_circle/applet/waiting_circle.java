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

public class waiting_circle extends PApplet {

int x = 0;  
public void setup() {
  size(600, 600);    
  background(102);    
  frameRate(10);
  smooth();    
  noStroke();
}

public void draw() {
  fill(0, 40);
  rect(0, 0, width, height);
  translate(width/2, height/2);
  fill(172,172,172);
  ellipse(30*cos(radians(x)), 30*sin(radians(x)), 17, 17);
  x+=30;
}
  static public void main(String args[]) {
    PApplet.main(new String[] { "--present", "--bgcolor=#666666", "--stop-color=#cccccc", "waiting_circle" });
  }
}
