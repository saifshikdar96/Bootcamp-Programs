String displayString;

void setup() {
  size(400, 300);
  displayString = "Hello, world!";
}
 
void draw() {
  background(254, 232, 134);
  fill(0);
  textSize(32);
  text(displayString, 50, 50, 350, 250);
}

void keyPressed(){
   displayString = displayString + key; 
}
