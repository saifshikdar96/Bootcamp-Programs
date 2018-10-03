Ball[] balls;
Ball specialBall;

float xPos = width/2; // Centre of x axis
float yPos = height/2; // Centre of y axis

void setup()
{
  size(800, 800);
  balls = new Ball[10];
  specialBall = new Ball(mouseX, mouseY);
  specialBall.colour = color(0, 0, 255);

  for (int i = 0; i < 10; i++) {
    balls[i] = new Ball(xPos, yPos);
  }
}

void draw()
{
  background(254, 244, 232);

  for (int index = 0; index < 5; index++) {
    balls[index].draw();
    balls[index].move();

    specialBall.position = new PVector(mouseX, mouseY);
    specialBall.draw();

    if ( dist(specialBall.position.x, specialBall.position.y, balls[index].position.x, balls[index].position.y) < 30 ) {
      println("Collision");
    }
    
    //specialBall.move();
  }
}
