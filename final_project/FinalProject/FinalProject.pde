// Key or Respeak!

//This is a 2 player game that uses vreous keys on the keybourd, and the mic.
// Bsically you have a sets of keys on the keybournd for each player must press down.
// There given a taget key that they must pressdown and the player must press all the targeted keys to win the game.
// However....
// If any player were to speak or make a loud sound.
// all keys will reset: meaning all players will have to start from the start again. 

// this is a trick that can keep the other player from winning, although this will reset your keys as well.
// Are you down to key or are you down to speak?
// speak wisely. 

import ddf.minim.*;
import processing.sound.*;
//class for the game space pn the screen // 
Playfield playfield;
Sound sound;
Minim minim;
AudioInput mic; // The class that lets us get at the microphone
Gameover gameover;

SoundFile Bgm;

// the dojo background
PImage dojo;

// this is the control keys for player 1
String pressedKeys = "";
String possibleKeys =  "2345qwertasdfgzxcv";
char   currentKey;

// this is the control keys for player 2
String pressedKeysP2 = "";
String possibleKeysP2 = "67890yuiohjklbnm,.";
char   currentKeyP2;

// when the game is over and who wins,
boolean p1wins = false;;
boolean p2wins = false;;
boolean gameisover; 

// for changing the background
color colBG; 

void setup() {
  size(945,600); 
  dojo = loadImage("bg.jpg");
  // used to create the filenames and arays so the computer can yell at you.  
  gameisover = false;
  p1wins = false; 
  p2wins = false; 
  
  
  colBG = color(#FF8A15);
  // gives us the a random char character that was convented from the String possibleKeys into currentKey (for player1)
  currentKey = possibleKeys.charAt(floor(random(0, possibleKeys.length())));
  // gives us the a random char character that was convented from the String possibleKeys into currentKey (for player2)
  currentKeyP2 = possibleKeysP2.charAt(floor(random(0, possibleKeys.length())));
  //sets up the Playfield class or aka what's going to be on the game screen.
  sound = new Sound();
  playfield = new Playfield();
  gameover = new Gameover();
  
  //sound
 // Bgm = new SoundFile(this, "");
 //   Bgm.loop();
 
 // used to create the filenames and arays so the computer can yell at you.  
  for (int i = 0; i < sound.voice.length; i++) {
    // We can use the i variable to work out which filename to use!
    sound.voice[i] = new SoundFile(this, "voice" + (i) + ".wav");
  }
}

void draw() {
  //background with change able color due to the 
  background(0);
  //background with change able color
  sound.update();
  playfield.display();
  gameover.display();
  
  
}

void keyPressed() {
  // when the currentKey is pressed  
  
  if (gameisover == false) {
    if (key == currentKey) {
    //change the background to orange
    colBG = color(#FF6C0A);
    //remove a key rect being displayed
    playfield.keyPressed();
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
    colBG = color(#FF6C0A);
    //remove a key rect being displayed
    playfield.keyPressed();
    //change the current key
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
void keyReleased() {
  // when any key is released set the background back to purple
  colBG = color(#D258FF);
}