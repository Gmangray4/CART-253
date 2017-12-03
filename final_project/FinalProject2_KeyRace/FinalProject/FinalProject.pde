// Key race

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
Sound sound;
Gameover gameover;

import processing.sound.*;
SoundFile Bgm;

// the dojo background
PImage dojo;

// this is the control keys for player 1
String pressedKeys = "";
String possibleKeys =  "54321qwertgfdsazxcv";

String pressedKeysLap1 = "";
String possibleKeysLap1 =  "cxzasdfgtrewq12345";

String pressedKeysLap2 = "";
String possibleKeysLap2 =  "4321qwertgfdsazxcv";

char   currentKey;
///////////////////////////////////////////////////////////


int keyIndex = 0;
int keyIndexP2 = 0;

int laps = 0; 
boolean lap0 = true;
boolean lap1 = false; 
boolean lap2 = false;
int lapsP2 = 0; 
//p;-

// this is the control keys for player 2
String pressedKeysP2 = "";
String possibleKeysP2 = "67890poiuyhjkl;.,mn";
char   currentKeyP2;

// when the game is over and who wins,
boolean p1wins = false;

boolean p2wins = false;

boolean gameisover; 

// for changing the background
color colBG; 

void setup() {
  size(1000, 600); 
  dojo = loadImage("bg.jpg");

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
  gameover = new Gameover();

  //sound
  // Bgm = new SoundFile(this, "");
  //   Bgm.loop();
}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void draw() {
  //background with change able color due to the 
  image(dojo, 0, 0);
  //background with change able color
  playfield.display();
  gameover.display();
  println();
}
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void keyPressed() {
  // when the currentKey is pressed  

  if (gameisover == false) {


    if (laps == 0) {

      if (key == currentKey) {
        //change the background to orange
        colBG = color(#FF6C0A);
        //remove a key rect being displayed
        playfield.keyPressed();
        //change the current key
        pressedKeys += key;
        keyIndex++;
        //when all possble keys in the string are pressed or when all keys are pressed the players win!  
        if (pressedKeys.length() == possibleKeys.length()) {
          laps = 1; 
          keyIndex = 0;
          println(laps);
          return;
        }
        //the current is equal to random string that is converted into a char;
        currentKey = possibleKeys.charAt(keyIndex);
        // make sure the key does not = to a past pressed key. 
        while (pressedKeys.indexOf(currentKey) != -1) {
          currentKey = possibleKeys.charAt(floor(random(0, possibleKeys.length())));
        }
      }
    }
    /////////////////////////////////////////////////////////////////////////////////////////
    if (laps ==1) {

      currentKey = possibleKeysLap1.charAt(keyIndex);

      if (key == currentKey) {
        //change the background to orange
        colBG = color(#FF6C0A);
        //remove a key rect being displayed
        playfield.keyPressed();
        //change the current key
        pressedKeysLap1  += key;
        keyIndex++;
        //when all possble keys in the string are pressed or when all keys are pressed the players win!  
        if (pressedKeysLap1 .length() == possibleKeysLap1 .length()) {
          laps = 2; 
          keyIndex = 0;
          println(laps);
          return;
        }
        //the current is equal to random string that is converted into a char;
        currentKey = possibleKeysLap1.charAt(keyIndex);
        // make sure the key does not = to a past pressed key. 
        while (pressedKeysLap1 .indexOf(currentKey) != -1) {
          currentKey = possibleKeysLap1 .charAt(floor(random(0, possibleKeysLap1 .length())));
        }
      }
    }
     if (laps ==2) {

      currentKey = possibleKeysLap2.charAt(keyIndex);

      if (key == currentKey) {
        //change the background to orange
        colBG = color(#FF6C0A);
        //remove a key rect being displayed
        playfield.keyPressed();
        //change the current key
        pressedKeysLap2  += key;
        keyIndex++;
        //when all possble keys in the string are pressed or when all keys are pressed the players win!  
        if (pressedKeysLap2 .length() == possibleKeysLap2 .length()) {
        p1wins = true; 
        gameisover = true;
        println("Player 2 WIN!!!");
        return;
        }
        //the current is equal to random string that is converted into a char;
        currentKey = possibleKeysLap2.charAt(keyIndex);
        // make sure the key does not = to a past pressed key. 
        while (pressedKeysLap2 .indexOf(currentKey) != -1) {
          currentKey = possibleKeysLap2 .charAt(floor(random(0, possibleKeysLap2 .length())));
        }
      }
    } 
      
    
    
  }
  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  if (gameisover == false) {

    if (key == currentKeyP2) {
      //change the background to orange
      colBG = color(#FF6C0A);
      //remove a key rect being displayed
      playfield.keyPressed();
      //change the current key
      pressedKeysP2 += key;
      keyIndexP2++;
      //when all possble keys in the string are pressed or when all keys are pressed the players win!  
      if (pressedKeysP2.length() == possibleKeysP2.length()) {
        p2wins = true; 
        gameisover = true;
        println("Player 2 WIN!!!");
        return;
      }
      //the current is equal to random string that is converted into a char;
      currentKeyP2 = possibleKeysP2.charAt(keyIndexP2);
      // make sure the key does not = to a past pressed key. 
      while (pressedKeysP2.indexOf(currentKeyP2) != -1) {
        currentKeyP2 = possibleKeysP2.charAt(floor(random(0, possibleKeysP2.length())));
      }
    }
  }
}