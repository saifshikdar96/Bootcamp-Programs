int red;

void setup(){
  size(400,400);
  red = 0;
}

void draw(){
  background(100);
  fill(red,0,0);
  rect(100,100,60,60);
  println(red);
}

void keyPressed(){
  if(key == 'r'){
    if(red <= 245)
      red = red + 10;
  }
  
  if(key == 'b'){
    if(red >= 10){
      red = red - 10;
    }
  }
}
