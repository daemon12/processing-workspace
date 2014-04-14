
size(500,500);
background(0);
smooth();
fill(150,150,150);

beginShape();
vertex(50,250);
bezierVertex(100,450,400,450,450,250);
bezierVertex(200,210,400,360,250,100);
bezierVertex(100,360,300,210,50,250);
endShape();

stroke(255,0,0);
strokeWeight(10);
point(100,450);  point(400,450);
point(200,210);  point(400,360);
point(100,360);  point(300,210);

