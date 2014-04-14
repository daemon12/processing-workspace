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

public class waiting_line extends PApplet {


int startX = 200;
int endX = 400;
int ypos = 300;

public void setup() {
  size(600, 600);
  background(102);
  smooth();
  noStroke();
  frameRate(7);
}

public void draw() {
  background(102);
  fill(130);
  for (int i=200;i<=400;i+=30) {
    ellipse(i, ypos, 12, 12);
  }  
  fill(172);
  ellipse(startX, ypos, 21, 21);
  startX+=30;
  if (startX > endX) {
    startX = 200;
  }
}

  static public void main(String args[]) {
    PApplet.main(new String[] { "--present", "--bgcolor=#666666", "--stop-color=#cccccc", "waiting_line" });
  }
}
