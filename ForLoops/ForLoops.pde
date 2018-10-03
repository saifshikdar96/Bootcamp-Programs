void setup() {
  size (1200,400);
  background(#FFFFFF);
  fill(#E88383);
}

void draw() {
  
  for (int i = 0; i < 9; i++) {
    rect( 40 + 100 * i, 50, 80, 80);
  }
  
  for (int i = 0; i < 6; i++) {
    rect( 40 + 100 * i, 150, 30*(i+1), 30*(i+1));
  }
}
