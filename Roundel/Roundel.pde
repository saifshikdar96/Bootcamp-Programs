float midX;
float midY;
color grey = #C4BCBC;
color yellow = #FAB623;
color blue = #223590;
color white = #FFFFFF;
color red = #AF2020;

void setup() {
  size(600,600);
  midX = width/2;
  midY = height/2;
}

void draw() {
  
  background(192);
  rounde1();
  
}

void rounde1() {
  noStroke();
  fill(yellow);
  ellipse(midX, midY, 200, 200);
  
  noStroke();
  fill(blue);
  ellipse(midX, midY, 150, 150);
  
  noStroke();
  fill(white);
  ellipse(midX, midY, 100, 100);
  
  noStroke();
  fill(red);
  ellipse(midX, midY, 40, 40);
}
