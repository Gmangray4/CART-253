// KeyRace

//This is a 2 player game that uses the keybord like a race track. 
// Player 1                                                                   Player 2
// starts on key 2                                                            starts on key 7. 
// must loop around from keys 2345tgvcxzaq2 in this order and clock wise      must loop around from keys 7890p;.,mnhy7 in this order and clock wise
// is the Red Track                                                           is the Blue Track
// Goal
// Each player must make 20 laps around the key Track to win.
// The target key in the box above is the next on your track that you must press. 
// Who can finsh the the race around the keybored first? 

//References

// The background music is Star Fox Corneria Remix by Kougeman22 on youtube. 
// https://www.youtube.com/watch?v=MSyToOdMWVk

// The back racetrack video is NASCAR: Sounds of Speed by RockyTopTN11 on youtube. 
// https://www.youtube.com/watch?v=qyxvPiOqEiE&t=30s

// The Race flag image was taken from pixabay.com
// https://pixabay.com/en/checker-flags-racing-flags-flag-296805/

// I created all other sounds using Soundation 
//https://soundation.com/

// Notes in the end I ended up not using Pippen code becuse I found it easyer to
// create the laps idea from my own knowlage and what I already had. 
// Im not sure how to properly create fixed postions with a for loop. 
import ddf.minim.*;
import processing.sound.*;
import processing.video.*;
//class for the game space on the screen // 
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

// this is the control keys for player 1
//String pressedKeys = "";
String possibleKeys =  "2345tgvcxzaq2";
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
boolean fillColor;
boolean fillColorP2;
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
   background(#F70FE8);
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
      fillColor = true;
    }
      if (key == '2' && qPressed == true) {
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
      fillColorP2 = true;
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