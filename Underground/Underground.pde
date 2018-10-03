// draw the london underground sign

void setup(){
  size(600, 400);
  
}

void draw(){
  background(255, 236, 149);
  //noStroke();
  strokeWeight(2);
  fill(#DE5353);
  //ellipse(200,200,300,300); // red circle
  ellipse(mouseX,mouseY,300,300);
  
  fill(#FFFFFF);
  //ellipse(200,200,180,180); // white circle
  ellipse(mouseX,mouseY,180,180);
  
  fill(#5372DE);
  //rect(30,180,340,50); // blue rectangle
  rect(mouseX-170,mouseY-15,340,50);
  
  textSize(32); // size of text
  fill(#FFFFFF); 
  text("UNDERGROUND",mouseX-120,mouseY+20); //Underground text
}
