Playfield playfield;

// this is the control keys for player 1
String pressedKeys = "";
String possibleKeys =  "2345qwertasdfgzxcv";
char currentKey;

// this is the control keys for player 2
String pressedKeysP2 = "";
String possibleKeysP2 = "67890yuiohjklbnm,.";
char currentKeyP2;

void setup() {
  size(945,600); 
  currentKey = possibleKeys.charAt(floor(random(0, possibleKeys.length())));
  currentKeyP2 = possibleKeysP2.charAt(floor(random(0, possibleKeys.length())));
  playfield = new Playfield();
  
}

void draw() {
  background(0);
  playfield.display();
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
  if (key == currentKeyP2) {
    //change keys
    pressedKeysP2 += key;

    //when all possble keys in the string are pressed or when all keys are pressed the players win! 
    if (pressedKeysP2.length() == possibleKeysP2.length()) {
      println("YOU WIN!!!");
      return;
    }
    //the current is equal to random string that is converted into a char;
    currentKeyP2 = possibleKeysP2.charAt(floor(random(0, possibleKeysP2.length())));
    while (pressedKeysP2.indexOf(currentKeyP2) != -1) {
      currentKeyP2 = possibleKeysP2.charAt(floor(random(0, possibleKeysP2.length())));
    }
  }
  
}


void keyReleased() {
  if (pressedKeys.indexOf(key) != -1) {
  }
}