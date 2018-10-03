color skyColour    = color(157, 238, 247);
color groundColour = color(156, 245, 170);
color leafColour   = color(82, 144, 97);
color trunkColour  = color(95, 57, 26);
float treeX;  
float treeY;

void setup()
{
  size(400, 400);
  noStroke();
}
 
void draw()
{ 
  treeX = 100;
  treeY = 180;
  
  background(skyColour);
  fill(groundColour);
  rect(0, height/2, width, height/2);
 
 println("First tree drawn at x= " + treeX);
  // Draw first tree
  fill(trunkColour);
  rect(treeX, treeY, 20, 70);
  fill(leafColour);
  ellipse(treeX+10, treeY-30, 70, 90);
 
  // Draw second tree to the right and down a bit
  treeX = treeX + 100;
  treeY = treeY + 30;
  drawTree(treeX, treeY, trunkColour, leafColour);
 
  // Draw third tree to the right and up a bit
  treeX = treeX + 100;
  treeY = treeY - 30;
  drawTree(treeX, treeY, trunkColour, leafColour);
}

void drawTree(float x, float y, color trunCol, color leafCol) {
  fill(trunCol);
  rect(x, y, 20, 70);
  fill(leafCol);
  ellipse(x+10, y-30, 70, 90);
}
