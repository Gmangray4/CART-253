// Key race

// Key race is a  2 player game where each player must use the keyBorad like a race track and try to complete 20 laps. 
// the track goes like a cricler loop moving clockwise. 

// Rules // 
//
// Player 1 starts at key 2
// Player 2 starts at key 7
// there will be a box above each onScreen race track to show which must be pressed next on the track. 
// The top of the screen will display what lap the player is on. 
// lap 19 is the final lap. 


//class for the game space pn the screen // 
Playfield playfield;
StartTimer startTimer;
Sound sound;
Gameover gameover;

import processing.sound.*;
SoundFile Bgm;

// this is the control keys for player 1
// 
String pressedKeys = "";
String possibleKeys =  "54321qwertgfdsazxcv";

// the current key for player 1 to press. 
char   currentKey;
///
int keyIndex = 0;
int keyIndexP2 = 0;

// The laps for player 1;

boolean lap0 = true;
boolean lap1 = false; 
boolean lap2 = false;


// this is the control keys for player 2
String pressedKeysP2 = "";
String possibleKeysP2 = "67890poiuyhjkl;.,mn";
char   currentKeyP2;

// and the keys for lap 2;
String pressedKeysLap1P2 = "";
String possibleKeysLap1P2 =  "m,.;lkjhyuiop09876";
// and the keys for the final lap;
String pressedKeysLap2P2 = "";
String possibleKeysLap2P2 =  "7890poiuyhjkl;.,mn";

// The laps for player 2;
int lapsP2 = 0;  
boolean lap0P2 = true;
boolean lap1P2 = false; 
boolean lap2P2 = false;


// when the game is over and who wins,
boolean p1wins = false;

boolean p2wins = false;
boolean gameStart = false; 
boolean gameisover; 

// for changing the background
color colBG; 

/// pippin 
String lapString = "12345tgbvcxzaq";
int currentChar = 0;
int laps = 0;

void setup() {
  size(1000, 600); 
  Racetrack = loadImage("bg.jpeg");
  Bgm = new SoundFile(this, "bgm.mp3");
  Bgm.play();
  Bgm.amp(0.25);
  
  gameisover = false;
  p1wins = false; 
  p2wins = false; 
  colBG = color(#FF8A15);
  // gives us the a random char character that was convented from the String possibleKeys into currentKey (for player1)
  currentKey = possibleKeys.charAt(keyIndex);
  // gives us the a random char character that was convented from the String possibleKeys into currentKey (for player2)
  currentKeyP2 = possibleKeysP2.charAt(keyIndexP2);
  //sets up the Playfield class or aka what's going to be on the game screen.
  playfield = new Playfield();
  startTimer = new StartTimer();
  sound = new Sound();
  gameover = new Gameover();
  

  //sound
  // Bgm = new SoundFile(this, "");
  //   Bgm.loop();
}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void draw() {
  //background with change able color due to the 
  image(Racetrack, 0, 0);
  //background with change able color
  playfield.display();
  gameover.display();
  sound.update();
  println(sound.bgmTime);
  startTimer.update();
}
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void keyPressed() {
  
  if (gameStart == true) {
    
  if (gameisover == false) {
    
    // When at the first lap of the game for palyer 1. 
    if (laps == 0) {
      // when the currentKey is pressed  
      if (key == lapString.charAt(currentChar) || key == lapString.toUpperCase().charAt(currentChar)) {
    println(key + " is correct!");

        //remove a key rect being displayed
        playfield.keyPressed();
        //change the current key
        pressedKeys += key;
        currentChar++;
        //when all possble keys in the string are pressed or when all keys are pressed the players win!  
       if (currentChar >= lapString.length()) {
      laps++;
      currentChar = 0;
      println("Lap!");
    }
  }
}
  }
  }
}
  