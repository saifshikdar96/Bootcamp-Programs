float[] diameter;
 
void setup()
{
  size(400,200);
  fill(180,50,50,100);
  noStroke();
  
  diameter = new float[5];
 
  diameter[0] = 21;
  diameter[1] = 48;
  diameter[2] = 60;
  diameter[3] = 36;
  diameter[4] = 23;
}
 
void draw() {
  background(255);
  float xPos = 50;
 
  for (int i = 0; i < diameter.length; i++) {
   ellipse(xPos,100,diameter[i],diameter[i]);
   xPos = xPos + 70;
 }
}
