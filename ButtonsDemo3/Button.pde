class Button {

  boolean on = true;
  float centreX;
  float centreY;
  color blue = #2B31DE;
  color yellow = #F0EA2E;

  Button(float x, boolean y) {

    on = y;
    centreX = x;
    centreY = height/2;
  }

  void display() {

    if (on) {
      fill(blue);
    } else {
      fill(yellow);
    }
    ellipse(centreX, centreY, 30, 30);
  }
  
  boolean contains(float x, float y) {
    if(dist(centreX, centreY, x, y) < 30) {
      return true;
    } else {
      return false;
    }
  }
}
