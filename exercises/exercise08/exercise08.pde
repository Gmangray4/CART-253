// Key Sau

// This is the working prodotype for my game.
// its a 2 player game where you have to try and remove the other players and keeping them from tuching yours. 

// Rules // 
// Both player must try and touch and keys on the other players side of the screen/keyborad. 
// Players must touch the key the program tells them to, Which is under target. 
// when a key is touch a key is consder dead
// when all keys on your side of the screen are dead you lose. 
// the only obstacle in the game is the other person's hand. 


//class for the game space pn the screen // 
Playfield playfield;

// this is the control keys for player 1
String pressedKeys = "";
String possibleKeys =  "2345qwertasdfgzxcv";
char currentKey;

// this is the control keys for player 2
String pressedKeysP2 = "";
String possibleKeysP2 = "67890yuiohjklbnm,.";
char currentKeyP2;

// for changing the background
color colBG; 

void setup() {
  size(945,600); 
  colBG = color(#D258FF);
  // gives us the a random char character that was convented from the String possibleKeys into currentKey (for player1)
  currentKey = possibleKeys.charAt(floor(random(0, possibleKeys.length())));
  // gives us the a random char character that was convented from the String possibleKeys into currentKey (for player2)
  currentKeyP2 = possibleKeysP2.charAt(floor(random(0, possibleKeys.length())));
  //sets up the Playfield class or aka what's going to be on the game screen.
  playfield = new Playfield();
  
}

void draw() {
  //background with change able color due to the 
  background(colBG);
  //background with change able color
  playfield.display();
}

void keyPressed() {
  // when the currentKey is pressed
  if (key == currentKey) {
    //change the background to orange
    colBG = color(#FF6C0A);
    //remove a key rect being displayed
    playfield.keyPressed();
    //change the current key
    pressedKeys += key;
    //when all possble keys in the string are pressed or when all keys are pressed the players win! 
    if (pressedKeys.length() == possibleKeys.length()) {
      println("Player 2 WIN!!!");
      return;
    }
    //the current is equal to random string that is converted into a char;
    currentKey = possibleKeys.charAt(floor(random(0, possibleKeys.length())));
    // make sure the key does not = to a past pressed key. 
    while (pressedKeys.indexOf(currentKey) != -1) {
      currentKey = possibleKeys.charAt(floor(random(0, possibleKeys.length())));
    }
  }
  if (key == currentKeyP2) {
    //change the background to orange
    colBG = color(#FF6C0A);
    //remove a key rect being displayed
    playfield.keyPressed();
    //change the current key
    pressedKeysP2 += key;
    //when all possble keys in the string are pressed or when all keys are pressed the players win! 
    if (pressedKeysP2.length() == possibleKeysP2.length()) {
      println("Player 1 WIN!!!");
      return;
    }
    //the current is equal to random string that is converted into a char;
    currentKeyP2 = possibleKeysP2.charAt(floor(random(0, possibleKeysP2.length())));
    // make sure the key does not = to a past pressed key.
    while (pressedKeysP2.indexOf(currentKeyP2) != -1) {
      currentKeyP2 = possibleKeysP2.charAt(floor(random(0, possibleKeysP2.length())));
    }
  }
  
}
void keyReleased() {
  // when any key is released set the background back to purple
  colBG = color(#D258FF);
}