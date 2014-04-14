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

public class dolphin extends PApplet {

public void setup(){

size(800,800);
smooth();
stroke(4);
noFill();
bezier(20,500,250,100,500,280,400,419);
bezier(19,500,100,535,315,335,300,400);
bezier(300,400,335,465,431,405,400,419);

}
  static public void main(String args[]) {
    PApplet.main(new String[] { "--bgcolor=#F0F0F0", "dolphin" });
  }
}
