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
  rounde1(midX, midY);
  rounde1(width - midX/2, midY/2);
  rounde1(midX/2, midY/2);
  rounde1(midX/2, width - midX/2);
  rounde1(width - midX/2, height - midY/2);
}

void rounde1(float x, float y) {
  noStroke();
  fill(yellow);
  ellipse(x, y, 200, 200);
  
  fill(blue);
  ellipse(x, y, 150, 150);
  
  fill(white);
  ellipse(x, y, 100, 100);
  
  fill(red);
  ellipse(x, y, 40, 40);
}
