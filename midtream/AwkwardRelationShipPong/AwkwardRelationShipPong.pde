// Pong

// A simple version of Pong using object-oriented programming.
// Allows to people to bounce a ball back and forth between
// two paddles that they control.

// No scoring. (Yet!)
// No score display. (Yet!)
// Pretty ugly. (Now!)
// Only two paddles. (So far!)

// Global variables for the paddles and the ball
Paddle leftPaddle;
Paddle rightPaddle;
Ball ball;
Score score;

//My Global variables;

// My Classes for Player 1 and 2's Half Heart.
leftHeart p1HalfHeart;
rightHeart p2HalfHeart;
Text text;
EndGame gameover;

// The distance from the edge of the window a paddle should be
int PADDLE_INSET = 8;

// The background colour during play (black)
color backgroundColor = color(252,96,98);

// Images for my Hearts
PImage lHeart;
PImage rHeart;
PImage redHeart;
PImage pinkHeart;

// setup()
//
// Sets the size and creates the paddles and ball

void setup() {
  // Set the size
  size(1024, 600);
  frameRate(30);

  // Create the paddles on either side of the screen. 
  // Use PADDLE_INSET to to position them on x, position them both at centre on y
  // Also pass through the two keys used to control 'up' and 'down' respectively
  // NOTE: On a mac you can run into trouble if you use keys that create that popup of
  // different accented characters in text editors (so avoid those if you're changing this)
  leftPaddle = new Paddle(PADDLE_INSET, height/2, 'w', 's');
  rightPaddle = new Paddle(width - PADDLE_INSET, height/2, 'o', 'l');
 
  // Create the ball at the centre of the screen
  ball = new Ball(width/2, height/2);
  
  //This is the set up for my Heart paddles class and controls. 
  p1HalfHeart = new leftHeart(PADDLE_INSET, height/2,'w', 's');
  p2HalfHeart = new rightHeart(width - PADDLE_INSET, height/2, 'o', 'l');
  score = new Score();
  text = new Text();
  gameover = new EndGame();
  
  // Loads the png images into processing
  lHeart = loadImage("Heart_05.png");   
  rHeart = loadImage("Heart_03.png");  
  redHeart = loadImage("Heart_10.png");
  pinkHeart = loadImage("Heart_09.png");
}

// draw()
//
// Handles all the magic of making the paddles and ball move, checking
// if the ball has hit a paddle, and displaying everything.

void draw() {
  // Fill the background each frame so we have animation
  background(backgroundColor);
  // Update the paddles and ball by calling their update methods
  leftPaddle.update();
  rightPaddle.update();
  ball.update();
  p1HalfHeart.update();
  p2HalfHeart.update();
  
  // Check if the ball has collided with either paddle
  ball.collide(leftPaddle);
  ball.collide(rightPaddle);
  ball.collide(p1HalfHeart);
  ball.collide(p2HalfHeart);
  
  
  println(text.textNumberForP1);

  // Check if the ball has gone off the right side of the screen
  //if (ball.isOffScreen()) {
    // If it has, reset the ball
   // ball.reset();  
 
  if (ball.isOffScreenRight()){
    score.updateP1();
    ball.reset();
    //Makes the half haert for p1 appear
    p1HalfHeart.appear();
    //strats colloision fo the left Heart
    ball.beginCollisionForLeftHeart();
    //the heart half haert moves closer to the center and gets bigger.
    p1HalfHeart.MoveTowardTheCenter();
    p1HalfHeart.heartGetsBigger();
    text.changeTextOfScreenRight();
    
  }
  // Check if the ball has gone off the Left side of the screen
  if (ball.isOffScreenLeft()){
    score.updateP2();
    ball.reset();
    p2HalfHeart.appear();
    ball.beginCollisionForRightHeart();
    p2HalfHeart.MoveTowardTheCenter();
    p2HalfHeart.heartGetsBigger();
   
    text.changeTextOfScreenLeft();
  }
  
  //if  (p1HalfHeart.heartBiggerThenScreen)(){}

  // Display the paddles and the ball

  leftPaddle.display();
  rightPaddle.display();
  p1HalfHeart.display(); 
  p2HalfHeart.display();
  ball.display();
  score.display();
  text.display();
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