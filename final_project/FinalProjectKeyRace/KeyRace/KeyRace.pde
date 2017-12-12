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
// the race car video in the background
Movie vid;

// this is the control keys for player 1
String possibleKeys =  "2345tgvcxzaq2";
char   currentKey;

// this is the control keys for player 2
String possibleKeysP2 = "7890p;.,mnhy7";
char   currentKeyP2;

// when the game is over and who wins,
boolean p1wins = false;;
boolean p2wins = false;;
boolean gameisover; 
// Used with the StartTimer class to hold the progrm until the race starts
boolean gameStart = false; 

// This is used when P1 hits q in the race so that the program can reset the coruse without breaking or bugging
boolean qPressed;
// Same idea as above with P1, but for P2 and when hits y key. 
boolean yPressed;
// Used when the course needs to filled with color again for P1
boolean fillColor;
//Same as above but for P2
boolean fillColorP2;

// Used to Tell what Lap P1 is on
int laps;
//same but for P2
int lapsP2;
// Used to tell which array on the possible String is player 1 on. 
int keyIndex;
// same but for player 2
int keyIndexP2;


void setup() {
  size(1000, 600);
// loads the video in the bacground
  vid = new Movie(this, "vid.mp4");
// plays the video
vid.play();
//loops the video
  vid.loop();
//loads the background sountrack
  Bgm = new SoundFile(this, "bgm.mp3");
  //play the background sountrack
  Bgm.play();
  // sets the voulme
  Bgm.amp(0.25);
  
  // the game is not over when it starts
  gameisover = false;
  //player has not won from the start
  p1wins = false; 
  // nither has player 2
  p2wins = false; 
  // load the key touch sound
  keySound= new SoundFile(this, "key.wav");
  //loads the lap sounds
  lapSound= new SoundFile(this, "Lap.wav");
  //loads the final lap sound
  FinalLapSound= new SoundFile(this, "LapFinal.wav");
  //makes sure that the currentKey in the target box is one of the possiblekeys in the array.  (for player1)
  currentKey = possibleKeys.charAt(keyIndex);
  //makes sure that the currentKey in the target box is one of the possiblekeys in the array.  (for player2)
  currentKeyP2 = possibleKeysP2.charAt(keyIndexP2);
   // sound class 
  sound = new Sound();
   //sets up the Playfield class or aka what's going to be on the game screen.
  playfield = new Playfield();
  //game over class to tell what to do when the game ends
  gameover = new Gameover();
  // StartTimer used to created the starting countdown. 
  starTimer = new StartTimer();

}

void draw() {
  // purple background ///// note not visble until the game is over
  background(#F70FE8);
  // the video of the cars in the background. Having the video somewhat off the screen is intentional
  image(vid, 0, -100, 1000, 900);
  //this speaks for it's self
  sound.update();
  playfield.display();
  gameover.display();
  starTimer.update();
}

void keyPressed() {
  // this locks interaction until the countdown timer is done.  
  if (gameStart == true) {
  // this stops interaction when the game ends.   
  if (gameisover == false) {
    
    //All BELOW IS FOR PLAYER 1
    // when key is pressed 
    if (key == currentKey) {
    //make a key rect black when being displayed
    playfield.keyPressed();
    // play a sound when key is pressed
    keySound.play();
    //change the current key
    keyIndex++;
    // I created the next 2 if statments so that I can have the colors of the keys reset without bugging out. 
    //when all q is pressed and it is the current key being called  
      if (currentKey == 'q' && qPressed == false) {
      // it will say hey q was pressed so...  
      qPressed = true;
      // lets refill the color of the keys on player 1's track. 
      fillColor = true;
    }
    // then when 2 is prees when q was ture
      if (key == '2' && qPressed == true) {
      // a lap has been complted so increase the laps
      laps++; 
      // q is not the pressed down or is not the last key pressed
      qPressed = false;
      // lets the index back to the start of the String. 
      keyIndex = 1;
      // plays the lap sound. 
      lapSound.play();
    }
    // also makes sure the the current key is still = to the possibkeys string. 
     currentKey = possibleKeys.charAt(keyIndex);
    }
     
  //All BELOW IS FOR PLAYER 2 
  //But evething said above for player 1 is the same
  // just with P2 added to the end of each code. 
  if (key == currentKeyP2) {
    //remove a key rect being displayed
    playfield.keyPressed();
    // play a sound when key is pressed
    keySound.play();
    //change the current key
    keyIndexP2++;
     // Same problem for Player 1 above but using y for player 2
    //when all y is pressed and it is the current key being called is y
      if (currentKeyP2 == 'y' && yPressed == false) {
      // hey y was becomes ture 
      yPressed = true;  
      // so lets refill the course colors of player 2
      fillColorP2 = true;
    }
    // now when 7 is preesed when the last key preesed was y
      if (key == '7' && yPressed == true) {
      // increase laps like seen above with p1 but for p2
      lapsP2++; 
      // y is no longer the last key pressed
      yPressed = false;
      // go back to the start of the key string. 
      keyIndexP2 = 1;
      // play the lap sound
      lapSound.play();
    }
    // also makes sure the the current key is still = to the possibkeys string but for player 2
     currentKeyP2 = possibleKeysP2.charAt(keyIndexP2);
    }
  }
// if player 1 reachs 20 laps
  if (laps == 20){
    // PLAYER ONE WINS!!!
     p1wins = true;
    // The Game is over 
     gameisover = true;
  }
  // But if player 2 reachs 20 laps
  if (lapsP2 == 20){
    //PLAYER TWO WINS!!!
     p2wins = true;
    // The Game is over 
     gameisover = true;
  }
}
}
// used so the video can be read and dispaled on the screen. 
void movieEvent(Movie m) {
  m.read();
}