PFont f;
String welcomeMessage = "Type the password...";
String successMessage = "Welcome. Shall we play a game?";
String retryMessage = "Your password is incorrect. No Global Thermonuclear War for you. Please try again";
String currentMessage;

void setup() {
  size(300, 50);
  f = createFont("Arial", 16, true);
  textFont(f, 16);
  currentMessage = welcomeMessage;
}
 
void draw() {
  background(100);
  text(currentMessage, 20, 20);
}

void keyPressed(){
  if (key == 'p'){
    currentMessage = successMessage;
  } else {
    currentMessage = retryMessage;
  }
}
