
size(500,500);
background(0);
stroke(0,255,0);
strokeWeight(4);
fill(100,100,100);

beginShape();
vertex(100,150);
bezierVertex(280,240,120,290,300,100);
bezierVertex(320,150,120,480,50,450);
bezierVertex(150,300,150,200,100,150);
endShape();

strokeWeight(10);
stroke(255,0,0);
point(280,240); point(120,290);
stroke(0,255,0);
point(320,150); point(120,480);
stroke(0,255,255);
point(150,300); point(150,200);

