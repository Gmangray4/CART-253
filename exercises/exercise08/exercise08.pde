String pressedKeys = "";
String possibleKeys = "abcdefghijklmnopqrstuvwxyz";
char currentKey;
int score = 0;

void setup() {
  int score = 0;
  size(500,600); 
  currentKey = possibleKeys.charAt(floor(random(0, possibleKeys.length())));
}

void draw() {
  background(0);
  fill(255);
  textSize(50);
  text(currentKey, width/2, height/2);
}

void keyPressed() {
  if (key == currentKey) {
    pressedKeys += key;
    if (pressedKeys.length() == possibleKeys.length()) {
      println("YOU WIN!!!");
      return;
    }
    currentKey = possibleKeys.charAt(floor(random(0, possibleKeys.length())));
    while (pressedKeys.indexOf(currentKey) != -1) {
      currentKey = possibleKeys.charAt(floor(random(0, possibleKeys.length())));
    }
  }
}


void keyReleased() {
  if (pressedKeys.indexOf(key) != -1) {
    println("YOU LOSE!");
  }
}