class Sound{
  // this is to tell if there is too much nose.
boolean nose;
//arays for the sound files
SoundFile[] voice = new SoundFile[42];
// this is the level of nose
float level;
// this is the level of nose as an aboulotue value 
int val;
// for the arrays
int array;
// for the color of the sqaure
color col;
//background color
color bgCol;

  Sound(){
   // set the color to white of the ract
  col = color(0,0,255);
  // set the color of the backgorund to black
  bgCol = color(0,0,0);
  minim = new Minim(this);
  // We use minim.getLineIn() to get access to the microphone data
  mic = minim.getLineIn();
  }
  
  void update(){
  if (gameisover == false){  
   rectMode(CENTER);
  // Get the current level (volume) going into the microphone
  float level = mic.mix.level();
  // Draw a rectangle with dimensions defined by microphone level
  fill(col);
  rect(width/2, height/2, width * level, height * level);
  
  //set the nose to an aboulate vaule.
  //it's mutlipyed by 1000 so that the progrem can have a readable level of nose. 
  val = floor(level*1000);
  
  println(val);

// when the nose is to load but load nose is false
// sets the nose to ture... this is so that program doesn't yell at you until sound
// cliams down again
// picks a random array to scream!
// sets the ract color to red.
// sets the background to orange. 
if (val >= 250 && nose == false)  {
    nose = true;
    array = floor(random(1,41));
    col = color(255,138,21);
    bgCol = color(255,53,3);

  }
  // nose drops
  // sets the nose to ture
  // sets the ract about to bule
  // sets the background back to black
  if (val <= 250 && nose == true)  {
    nose = false;
    col = color(#FFF30A);
    bgCol = color(0);
  }
  // play the voice of the rect if the nose is ture.
if (nose == true) {
    voice[array].play();
    pressedKeys = "";
    possibleKeys =  "2345qwertasdfgzxcv";
    currentKey = possibleKeys.charAt(floor(random(0, possibleKeys.length())));
    pressedKeysP2 = "";
    possibleKeysP2 = "67890yuiohjklbnm,.";
    currentKeyP2 = possibleKeysP2.charAt(floor(random(0, possibleKeysP2.length())));
    playfield.p2Col = color(0,0,255);
  } 
  }
  }



















}