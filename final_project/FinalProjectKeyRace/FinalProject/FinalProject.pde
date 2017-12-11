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
import processing.video.*;
//class for the game space pn the screen // 
Playfield playfield;
Sound sound;
Minim minim;
AudioInput mic; // The class that lets us get at the microphone
Gameover gameover;
StartTimer starTimer;

SoundFile keySound;
SoundFile lapSound;
SoundFile FinalLapSound;
SoundFile Bgm;

Movie vid;

// the dojo background
PImage racetrack;

// this is the control keys for player 1
//String pressedKeys = "";
String possibleKeys =  "12345tgvcxzaq1";
char   currentKey;

// this is the control keys for player 2
String possibleKeysP2 = "7890p;.,mnhy7";
char   currentKeyP2;

// when the game is over and who wins,
boolean p1wins = false;;
boolean p2wins = false;;
boolean gameStart = false; 
boolean gameisover; 

boolean qPressed;
boolean yPressed;
// for changing the background
color colBG; 

int laps;
int lapsP2;
int keyIndex;
int keyIndexP2;
void setup() {
  size(1000, 600);
  vid = new Movie(this, "vid.mp4");
  vid.play();
  vid.loop();
  Bgm = new SoundFile(this, "bgm.mp3");
  Bgm.play();
  Bgm.amp(0.25);
  // used to create the filenames and arays so the computer can yell at you.  
  gameisover = false;
  p1wins = false; 
  p2wins = false; 
  keySound= new SoundFile(this, "key.wav");
  lapSound= new SoundFile(this, "Lap.wav");
  FinalLapSound= new SoundFile(this, "LapFinal.wav");
  // gives us the a random char character that was convented from the String possibleKeys into currentKey (for player1)
  currentKey = possibleKeys.charAt(keyIndex);
  ///////////////////////////////////////////////////////
  
  // gives us the a random char character that was convented from the String possibleKeys into currentKey (for player2)
  currentKeyP2 = possibleKeysP2.charAt(keyIndexP2);
  //sets up the Playfield class or aka what's going to be on the game screen.
  sound = new Sound();
  // the color of the background is determinded by the sound class
  playfield = new Playfield();
  gameover = new Gameover();
  starTimer = new StartTimer();
  
 // used to create the filenames and arays so the computer can yell at you.  

}

void draw() {

   image(vid, 0, -100, 1000, 900);
 
  sound.update();
  playfield.display();
  gameover.display();
  starTimer.update();
}

void keyPressed() {
  // when the currentKey is pressed  
  if (gameStart == true) {
  if (gameisover == false) {
    if (key == currentKey) {
    //remove a key rect being displayed
    playfield.keyPressed();
    // play a sound when key is pressed
    keySound.play();
    //change the current key
    keyIndex++;
    //when all possble keys in the string are pressed or when all keys are pressed the players win! 
      if (currentKey == 'q' && qPressed == false) {
      qPressed = true;  
    }
      if (key == '1' && qPressed == true) {
      laps++; 
      qPressed = false;
      keyIndex = 1;
      lapSound.play();
    }
     currentKey = possibleKeys.charAt(keyIndex);
    }
     
  
  if (key == currentKeyP2) {
    //remove a key rect being displayed
    playfield.keyPressed();
    // play a sound when key is pressed
    keySound.play();
    //change the current key
    keyIndexP2++;
    //when all possble keys in the string are pressed or when all keys are pressed the players win! 
      if (currentKeyP2 == 'y' && yPressed == false) {
      yPressed = true;  
    }
      if (key == '7' && yPressed == true) {
      lapsP2++; 
      yPressed = false;
      keyIndexP2 = 1;
      lapSound.play();
    }
     currentKeyP2 = possibleKeysP2.charAt(keyIndexP2);
    }
  }
  
  if (laps == 20){
     p1wins = true;
     gameisover = true;
  }
  if (lapsP2 == 20){
     p2wins = true;
     gameisover = true;
  }
}
}
void movieEvent(Movie m) {
  m.read();
}