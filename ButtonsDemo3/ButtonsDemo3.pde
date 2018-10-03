Button[] buttons;

void setup() {

  size(400, 400);
  background(#FFFFFF);
  buttons = new Button[3];

  buttons[0] = new Button(width/4, true);  // left button
  buttons[1] = new Button(width/2, false);  // middle button
  buttons[2] = new Button(width - width/4, true);  // right button
}

void draw() {

  for (int i = 0; i < 3; i++) {
    buttons[i].display();
  }
  //buttons.display();
}

void mouseClicked() {

  for (int i = 0; i < 3; i++) {
    if(buttons[i].contains(mouseX, mouseY)) {
      buttons[i]
    }
  }
}
