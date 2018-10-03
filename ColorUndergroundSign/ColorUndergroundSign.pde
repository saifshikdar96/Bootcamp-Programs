float x;
float y;

void setup(){
  size(200,300);
  x = random(200);
  y = random(300);
  rectMode(CENTER);
}

void draw(){
  background(#E3E3E5);
  
  if((mouseX> x-130/2) && (mouseX <x+130/2) && (mouseY > y-20/2) && (mouseY < y+20/2)){
    fill(0,0,255);
    rect(x,y,130,20);
  } else{
    fill(#FCFDFF);
    rect(x,y,130,20);
  }
  
  if(dist(mouseX,mouseY,x,y) <25){
    fill(255,0,0);
    ellipse(x,y,50,50);
  } else{
    fill(#FCFDFF);
    ellipse(x,y,50,50);
  } 
}
