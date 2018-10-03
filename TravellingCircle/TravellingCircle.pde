float x;
float midX; // centre x;

color red = (#FF0000);
color blue = (#1000FF);
color green = (#21FF00);
color yellow = (#FEFF00);

void setup(){
  size(600,600);
  midX = width/2;
  x = 0;
}

void draw(){
  background(255); // refresh background
  
  fill(red); // red circle
  ellipse(midX+x,midX+x,60,60);
  
  fill(blue); // blue circle
  ellipse(midX+x,midX-x,60,60);
  
  fill(green); // green circle
  ellipse(midX-x,midX-x,60,60);
  
  fill(yellow); // yellow circle
  ellipse(midX-x,midX+x,60,60);
  
  x = x+1;
}
