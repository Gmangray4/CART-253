// Awkward Relationship Pong!
// By Gordon Roland Gray
//____________________________________________________________________________________
              // Instructions //
                      
// Goal: Scroe as many Hearts into your oppents side of the screen to have their ackward love level increase. 
// Your Ackward love level is represented in two ways:  1) the level of redness on your side of the screen.
//                                                      2) the size of the half heart that appears on your side.
// The player who's Screen becomes completely Red becomes the Ackward lover and loses the game. 

              // Contorls//
// Player 1                 Player 2
// Move paddle up   = w     Move paddle up   = i    
// Move paddle down = s     Move paddle down = k

//Credits
// Thansk to Piskelapp.com as my Tool for creating this projects Pngs
// This webiste is free open souce wesite where you can qucikly and easlity creaie your own sprites. 
// Link (https://www.piskelapp.com/) 

//  And special thanks to thoses who gave suggestions for the  
//  awkward pickup lines and turn downs.

//  Ching Su for "Hey Sugar Pie."
//  Kim Webb for "You're the meme of my dreams."
//  Vicky Bolduc-Brazeau "U a Keyboard cause Ur my Type."
//____________________________________________________________________________________

// Global variables for the paddles and the ball
Paddle leftPaddle;
Paddle rightPaddle;
Ball ball;

//BgmForPong.wav
//My Global variables;

// My Classes for Player 1 and 2's Half Heart.
leftHeart p1HalfHeart;
rightHeart p2HalfHeart;
Text text;
EndGame gameover;
Background playerBackground;
Emoji emoji;


// The distance from the edge of the window a paddle should be
int PADDLE_INSET = 8;

// The background colour during play (black)


// Images for my Hearts
PImage lHeart;
PImage rHeart;
PImage pinkHeart;
PImage[] PlayerEmoji = new PImage[5];

import processing.sound.*;
SoundFile BonceSound;

// setup()
//
// Sets the size and creates the paddles and ball

void setup() {
  // Set the size
  size(1024, 600);
  frameRate(30);
  BonceSound = new SoundFile(this, "BallBounce.wav");

  // Load a soundfile from the /data folder of the sketch and play it back
  
  playerBackground = new Background();
  // Create the paddles on either side of the screen. 
  // Use PADDLE_INSET to to position them on x, position them both at centre on y
  // Also pass through the two keys used to control 'up' and 'down' respectively
  // NOTE: On a mac you can run into trouble if you use keys that create that popup of
  // different accented characters in text editors (so avoid those if you're changing this)
  leftPaddle = new Paddle(PADDLE_INSET, height/2, 'w', 's');
  rightPaddle = new Paddle(width - PADDLE_INSET, height/2, 'i', 'k');
 
  // Create the ball at the centre of the screen
  ball = new Ball(width/2, height/2);
  
  //This is the set up for my Heart paddles class and controls. 
  p1HalfHeart = new leftHeart(PADDLE_INSET, height/2,'w', 's');
  p2HalfHeart = new rightHeart(width - PADDLE_INSET, height/2, 'i', 'k');
  text = new Text();
  emoji = new Emoji();
  gameover = new EndGame();
  
  // Loads the png images into processing
 
}

// draw()
//
// Handles all the magic of making the paddles and ball move, checking
// if the ball has hit a paddle, and displaying everything.

void draw() {
  // Fill the background each frame so we have animation
  playerBackground.display();
  // Update the paddles and ball by calling their update methods
  leftPaddle.update();
  rightPaddle.update();
  ball.update();
  p1HalfHeart.update();
  p2HalfHeart.update();
  gameover.update();
  
  // Check if the ball has collided with either paddle
  ball.collide(leftPaddle);
  ball.collide(rightPaddle);
  ball.collide(p1HalfHeart);
  ball.collide(p2HalfHeart);
 

  // Check if the ball has gone off the right side of the screen
  //if (ball.isOffScreen()) {
    // If it has, reset the ball
   // ball.reset();  
 
  if (ball.isOffScreenRight()){
    emoji.EmojiIfOfScreenRight();
    ball.reset();
    //Makes the half haert for p1 appear
    p1HalfHeart.appear();
    //strats colloision fo the left Heart
    ball.beginCollisionForLeftHeart();
    //the heart half haert moves closer to the center and gets bigger.
    p1HalfHeart.MoveTowardTheCenter();
    p1HalfHeart.heartGetsBigger();
    text.changeTextOfScreenRight();
    playerBackground.increaseLoveColorP1();
    
  }
  // Check if the ball has gone off the Left side of the screen
  if (ball.isOffScreenLeft()){
    emoji.EmojiIfOfScreenLeft();
    ball.reset();
    p2HalfHeart.appear();
    ball.beginCollisionForRightHeart();
    p2HalfHeart.MoveTowardTheCenter();
    p2HalfHeart.heartGetsBigger();
   
    text.changeTextOfScreenLeft();
    playerBackground.increaseLoveColorP2();
  }
  
  //if  (p1HalfHeart.heartBiggerThenScreen)(){}

  // Display the paddles and the ball
  
  emoji.display();
  leftPaddle.display();
  rightPaddle.display();
  p1HalfHeart.display(); 
  p2HalfHeart.display();
  ball.display();
  text.display();
  gameover.display();
}

// keyPressed()
//
// The paddles need to know if they should move based on a keypress
// so when the keypress is detected in the main program we need to
// tell the paddles

void keyPressed() {
  // Just call both paddles' own keyPressed methods
  leftPaddle.keyPressed();
  rightPaddle.keyPressed();
  p1HalfHeart.keyPressed();
  p2HalfHeart.keyPressed();
}

// keyReleased()
//
// As for keyPressed, except for released!

void keyReleased() {
  // Call both paddles' keyReleased methods
  leftPaddle.keyReleased();
  rightPaddle.keyReleased();
}