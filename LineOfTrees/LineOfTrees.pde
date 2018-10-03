color leafColour, trunkColour;


void setup()
{
  size(800, 600);
  noStroke();
  leafColour  = color(82, 144, 97);
  trunkColour = color(95, 57, 26);
}

void draw()
{
  background(157, 238, 247);   // Sky
  fill(156, 245, 170);         // Ground.
  rect(0, height/2, width, height/2);
  float startX = 50;

  for (float yPos = 250; yPos < height - 100; yPos = yPos + 120) {
    for (float xPos = startX; xPos < width; xPos = xPos + 100)
    {
      drawTree(xPos, yPos);
      startX++;
    }
  }
}

// Draws a single tree at the given position.
void drawTree(float treeX, float treeY)
{
  fill(trunkColour);
  rect(treeX, treeY, 20, 70);
  fill(leafColour);
  ellipse(treeX+10, treeY-30, 70, 90);
}
