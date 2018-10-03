float randomNumber;
 
void setup()
{
  size(200, 200);
  fill(0);
  textSize(48);
  textAlign(CENTER);
 
  // Initialise randomNumber between 0 and 2
  randomNumber = random(2.0);
}
 
void draw()
{
  background(230, 255, 230); // refresh background
 
  String message;
  
  if(randomNumber > 1){ // if random number greater than 1 then it reads tails
    message = "TAILS";
  } else{
    message = "HEADS"; // if random number 1 or less then it reads heads
  }
  text(message, width/2, height/2);
}
