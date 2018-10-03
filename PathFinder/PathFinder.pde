// ball position
float xPos;
float yPos;
 
// ball velocity
float vx;
float vy;
 
// ball size
float radius;
 
// is ball in play?
boolean inPlayMode;
 
// peg size
float pegRadius;
 
// peg positions
float peg1X, peg1Y;
float peg2X, peg2Y;
float peg3X, peg3Y;

//
boolean hover = false;
boolean locked = false;
float midX = width/2;
float midY = height/2;
float difX = 0;
float difY = 0;
 
void setup() {
  size(500,400);
 
  radius = 15;
 
  pegRadius = 10;
 
  peg1X = 250;
  peg1Y = 200;
 
  peg2X = 70;
  peg2Y = height - 24;
 
  peg3X = width - 24;
  peg3Y = 70;
 
  background(255);
  textSize(48);
 
  xPos = width - radius;
  yPos = height - radius;
 
  inPlayMode = false;
}
 
void keyPressed() {
  if (key == ' ') {
    if (inPlayMode) {
      // do nothing, ball is already in play
    } else {
      vx = (mouseX - xPos) / 50;
      vy = (mouseY - yPos) / 50;
      inPlayMode = true;
    }
  }
}
 
void draw()
{
  background(255);
 
  fill(255,0,0);
  stroke(0);
  ellipse(peg1X, peg1Y, 2 * pegRadius, 2 * pegRadius);
  ellipse(peg2X, peg2Y, 2 * pegRadius, 2 * pegRadius);
  ellipse(peg3X, peg3Y, 2 * pegRadius, 2 * pegRadius);
 
  if (inPlayMode)
  {
    moveBall();
 
    drawBall();
     
    bounceOffWalls();
 
    checkForPegCollision(peg1X, peg1Y);
    checkForPegCollision(peg2X, peg2Y);
    checkForPegCollision(peg3X, peg3Y);
    
  } else {
    noStroke();
    fill(0,0,255);
    ellipse(xPos, yPos, 2 * radius, 2 * radius);
    
    drawAimingLine();
  }
}

void drawAimingLine() {
  stroke(0);
  line(xPos,yPos,mouseX,mouseY);
}

void drawBall() {
  noStroke();
  fill(0,0,255);
  ellipse(xPos, yPos, 2 * radius, 2 * radius);
}

void checkForPegCollision(float pegX, float pegY){
  if (dist(xPos,yPos,pegX,pegY) < radius + pegRadius) {
      fill(0);
      textAlign(CENTER, CENTER);
      text("GAME OVER!", width/2, height/2);
      frameRate(0);
    }
}

void moveBall(){
  xPos = xPos + vx;
  yPos = yPos + vy;
}

void bounceOffWalls() {
  if (xPos - radius < 0 || xPos + radius > width) {
      vx = -vx;
    }
 
    if (yPos - radius < 0 || yPos + radius > height) {
      vy = -vy;
    }
}

void mousePressed() {
  
  if(hover) {
    locked = true;
    
    fill(255,255,255);
  
  } else {
    
    locked = false;
  }
  
  difX = mouseX - peg1X;
  difY = mouseY - peg1Y;
}

void mouseReleased() {
  
  locked = false;
  
}

void mouseDragged() {
  
  if (locked) {
    
    peg1X = mouseX - difX;
    peg1Y = mouseY - difY;
  }
  
}
