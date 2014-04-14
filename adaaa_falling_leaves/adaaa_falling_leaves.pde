int Length=50;
float[] x=new float[Length];
float[] y=new float[Length];
float[] z=new float[Length];
void setup() {
  stroke(255);
  strokeWeight(4);
  size(600, 600, P3D);
  for (int i=0; i<Length; i++) { 
    x[i]=random(-100, width-200);
    y[i]=random(-100, height);
    z[i]=random(-100, 0);
  }
}
void draw() {
  background(0);
  for (int i=0;i<Length;i++) { 
    fill(0, 255, 0);
    pushMatrix();
    translate(x[i], y[i], z[i]);
    scale(0.5);
    bezier(x[i], y[i], z[i], x[i], 2*y[i], z[i], 2*x[i], 2*y[i], 2*z[i], 3*x[i], 3*y[i], 3*z[i]);
    bezier(x[i], y[i], z[i], 2*x[i], y[i], z[i], 2*x[i], 2*y[i], 2*z[i], 3*x[i], 3*y[i], 3*z[i]);
    stroke(255);
    line(x[i]-(x[i]/5), y[i]-(y[i]/5), z[i], 2*x[i], 2*y[i], 2*z[i]);
    y[i]+=1;
    z[i]+=0.01;
    if (y[i]>height) y[i]=random(-100, height);
    popMatrix();
  }
}
