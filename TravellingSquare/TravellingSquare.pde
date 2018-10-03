float x;
float y;
String displayMessage;

void setup(){
  size(400,400);
  rectMode(CENTER);
  x = width/2;
  y = height/2;
}

void draw(){
  background(#F7EE82);
  rect(x,y,60,60);
  displayMessage = "Coordinates are (" + x + "," + y + ")";
  fill(#000000);
  text(displayMessage,10,width-10);
}

void keyPressed (){
  if(key == 'd'){
    if(x < width - 30){
      x = x+1;
    }
  }
  if (key == 'a'){
    if(x > 30){
      x = x-1;
    }
  }
  if(key == 's'){
    if(y < height - 30){
      y = y+1;
    }
  }
  if(key == 'w'){
    if(y > 30){
      y = y-1;
    }
  }  
}
