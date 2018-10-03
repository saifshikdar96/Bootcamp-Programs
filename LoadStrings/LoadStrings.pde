String[] lines;

void setup() {
  size(400, 800);
  fill(0);
  textSize(12);
  lines = loadStrings("namesData.txt");
}

void draw() {  
  background(255);
  float yPos = 25;
  for (int i = 0; i < lines.length; i++) {
    String[] tokens = split (lines[i], ',');
    text[tokens[0], 20, yPos);
    text[tokens[3], 200yPos);
    float emails = float(tokens[3]

    //text(lines[i], 20, yPos);
    //yPos = yPos + 28;
  }
}
