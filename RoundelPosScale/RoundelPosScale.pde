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
  rounde1(midX, midY, 1.0); // center target
  rounde1(width - midX/2, midY/2, 2.0); // ne target
  rounde1(midX/2, midY/2, 0.5); // nw target
  rounde1(midX/2, width - midX/2, 2.0); //sw target
  rounde1(width - midX/2, height - midY/2, 0.5); // se target
}

void rounde1(float x, float y, float z) {
  noStroke();
  fill(yellow);
  ellipse(x, y, 200 * z, 200 * z);
  
  fill(blue);
  ellipse(x, y, 150 * z, 150 * z);
  
  fill(white);
  ellipse(x, y, 100 * z, 100 * z);
  
  fill(red);
  ellipse(x, y, 40 * z, 40 * z);
}
