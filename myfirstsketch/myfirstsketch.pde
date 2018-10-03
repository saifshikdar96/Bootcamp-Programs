
//Sketch to draw a rectangle that follows mouse

// setup method size() draws the size of the canvas

void setup()
{
  size(400, 300);
  fill(203, 118, 122);
}
 
 // draw method keeps running
 
void draw()
{
  //background(255, 236, 149);
  fill(255, 236, 149); //yellow
  rect(0, 0, 400, 400);
  
  fill(203, 118, 122); //red
  rect(mouseX, mouseY, 120, 80);
  
}
