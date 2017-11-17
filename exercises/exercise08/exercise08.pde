String pressedKeys = "";
String possibleKeys = "qazwsxedcrfvtg123456";
String possibleKeys2 = "byhnujmik,ol.p;/7890-=";
char currentKey;
int score;
void setup() {
  score = 0;
  size(1200,600); 
  currentKey = possibleKeys.charAt(floor(random(0, possibleKeys.length())));
}

void draw() {
  background(0);
  fill(255);
  textSize(100);
  text(currentKey, width/2, height/2 - 100);
  text(pressedKeys, width/2 - 300, height/2 + 100);
}

void keyPressed() {
  // when the key being called is pressd
  if (key == currentKey) {
    //change keys
    pressedKeys += key;
    println(pressedKeys);
    println(currentKey);
    //when all possble keys in the string are pressed or when all keys are pressed the players win! 
    if (pressedKeys.length() == possibleKeys.length()) {
      println("YOU WIN!!!");
      return;
    }
    //the current is equal to random string that is converted into a char;
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