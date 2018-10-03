// choose a shape based on mouse position

void setup() {
  size(400, 300);
  fill(203, 118, 122);
}
 
void draw()
{
  background(255, 236, 149);  // refresh background
  if (mouseX < width/2)  // mouse is on left side of screen
  {
    ellipse(mouseX, mouseY, 80, 80);
  }
  else // mouse is on right side of screen
  {
    rect(mouseX, mouseY, 80, 80);
  }
}
