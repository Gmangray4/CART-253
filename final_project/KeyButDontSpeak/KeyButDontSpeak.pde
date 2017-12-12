// Title: KEY BUT DON'T SPEAK!!
//By Gordon Roland Gray

// This is a 2 player game that uses vreous keys on the keybourd, and the mic.
// Bsically you have a sets of keys on the keybournd for each player must press down.
// There given a taget key that they must pressdown and the player must press all the targeted keys to win the game.
// However....
// If any player were to speak or make a loud sound.
// all keys will reset: meaning all players will have to start from the beginning again. 

// this is a trick that can keep the other player from winning, although this will reset your keys as well.
// Are you down to key or are you down to speak?
// speak wisely. 

//References

// the voices is from a character named Chrom from the game Fire Emblem Awakening by Nintendo for the 3DS. 
// also the sound and mic portion of the code comes from my exercise 7 sketch.
import ddf.minim.*;
import processing.sound.*;
//class for the game space pn the screen // 
Playfield playfield;
Sound sound;
Minim minim;
AudioInput mic; // The class that lets us get at the microphone
Gameover gameover;

SoundFile keySound;

// Player 1
// Tracks the keys that have been pressed already. 
String pressedKeys = "";
// all keys that can be pressed for player 1. 
String possibleKeys =  "2345qwertasdfgzxcv";
// Tracks which key is the player at in the possible key string
char   currentKey;

// Player 2
// Tracks the keys that have been pressed already.
String pressedKeysP2 = "";
// all keys that can be pressed for player 2. 
String possibleKeysP2 = "67890yuiohjklbnm,.";
// Tracks which key is the player at in the possible key string
char   currentKeyP2;

// when the game is over and who wins,
boolean p1wins = false;;
boolean p2wins = false;;
boolean gameisover; 

void setup() {
  size(945,600);
  // used to create the filenames and arays so the computer can yell at you.  
  gameisover = false;
  p1wins = false; 
  p2wins = false; 
  keySound= new SoundFile(this, "key.wav");
  // gives us the a random char character that was convented from the String possibleKeys into currentKey (for player1)
  currentKey = possibleKeys.charAt(floor(random(0, possibleKeys.length())));
  // gives us the a random char character that was convented from the String possibleKeys into currentKey (for player2)
  currentKeyP2 = possibleKeysP2.charAt(floor(random(0, possibleKeys.length())));
  //sets up the Playfield class or aka what's going to be on the game screen.
  sound = new Sound();
  // the color of the background is determinded by the sound class
  playfield = new Playfield();
  gameover = new Gameover();
  
 // used to create the filenames and arays so the computer can yell at you.  
  for (int i = 0; i < sound.voice.length; i++) {
    // We can use the i variable to work out which filename to use!
    sound.voice[i] = new SoundFile(this, "voice" + (i) + ".wav");
  }
}

void draw() {
  background(0);
  //background with change able color due to the 
  //background with change able color
  sound.update();
  playfield.display();
  gameover.display();
}

void keyPressed() {
  // when the currentKey is pressed  
  
  if (gameisover == false) {
    if (key == currentKey) {
    //remove a key rect being displayed
    playfield.keyPressed();
    // play a sound when key is pressed
    keySound.play();
    //change the current key
    pressedKeys += key;
    //when all possble keys in the string are pressed or when all keys are pressed the players win! 
    if (pressedKeys.length() == possibleKeys.length()) {
      p2wins = true; 
      gameisover = true;
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
    //remove a key rect being displayed
    playfield.keyPressed();
    //change the current key
    // play a sound when key is pressed
    keySound.play();
    pressedKeysP2 += key;
   
    //when all possble keys in the string are pressed or when all keys are pressed the players win! 
    if (pressedKeysP2.length() == possibleKeysP2.length()) {
      p1wins = true; 
      gameisover = true;
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
  
}