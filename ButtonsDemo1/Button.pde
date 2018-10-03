class Button {

  boolean on = true;
  float centreX;
  float centreY;
  color blue = #2B31DE;
  color yellow = #F0EA2E;

  Button() {

    on = true;
    centreX = width/2;
    centreY = height/2;
  }

  void display() {

    if(on == true) {
      fill(blue);
    } else {
      fill(yellow);
    }
    ellipse(width/2, height/2, 30, 30);
    
  }
}
