// Gordon Gray

// The changes I made was that I casued the back ground static to change size and color when the ball touchs the paddle. 
// The ball changes red when touching the paddle. 
// when touching the top of the screen I have the ball change speed. 
// I added a ballTop fuction that changes the balls speed when the ball touchs the top of the screen. 


// This it's like a pong like setup.
// there is a paddle at the bottom center of the screen. you can move this paddle left and right but not beyound the screen.
// a ball appears in the center and moves diagonaly right downwards. Resets if it goes off the bottem screen but bonces of the top, left and right side of the screen. 
// also the ball bonces of the paddle if touched. 
// The backgorund has a Static effect. 

color backgroundColor = color(0);

int numStatic = 1000;
int staticSizeMin = 1;
int staticSizeMax = 100;
color staticColor = color(200);


int paddleX;
int paddleY;
int paddleVX;
int paddleSpeed = 10;
int paddleWidth = 128;
int paddleHeight = 16;
color paddleColor = color(255);

int ballX;
int ballY;
int ballVX;
int ballVY;
int ballSpeed = 5;
int originBallSpeed = 5;
int ballSize = 16;
color ballColor = color(255);
color originBallColor = color(255);  //To remind me what originball color is. 

void setup() {          // setups the ball and Paddle to appear when the application. 
  size(640, 480);

  setupPaddle();
  setupBall();
}

void setupPaddle() {                 // This sets the Paddle's width, height, and intail X velocity to 0.
  paddleX = width/2;                 
  paddleY = height - paddleHeight;   
  paddleVX = 0;
}

void setupBall() {                   // Sets the balls width and height. 
  ballX = width/2;                   // also sets the ball's X and Y velocity to the ball's speed. 
  ballY = height/2;
  ballVX = ballSpeed;
  ballVY = ballSpeed;
}

void draw() {                     
  background(backgroundColor);       // Draws the back ground
  ballTop();                                                    //** Calls the ballTop fuction. checks to see if the ball is touching the top screen. Then changes it speed if so. 
  drawStatic();                      //uses the static function to case the stactic effect. 

  updatePaddle();                    // updates where the paddle needs to be.
  updateBall();                      // upadtes where the ball should be

  drawPaddle();                      //draws the paddle
  drawBall();                        //draws the ball.
}

void drawStatic() {                                          // Cause the program to draw the square in random locations in on the screen.
  for (int i = 0; i < numStatic; i++) {                      
    float x = random(0, width);
    float y = random(0, height);
    float staticSize = random(staticSizeMin, staticSizeMax);
    fill(staticColor);
    rect(x, y, staticSize, staticSize);
  }
}

void updatePaddle() {                                        // allows the paddle to move horizontal along the x axis and keeps the paddle from moving out of the srceen
  paddleX += paddleVX;  
  paddleX = constrain(paddleX, 0+paddleWidth/2, width-paddleWidth/2);
}

void updateBall() {            
  ballX += ballVX;        //updates where the ball should be moving based on the velocity and if the ball collides with the padle, wall or bottom .  
  ballY += ballVY;

  handleBallHitPaddle();
  handleBallHitWall();
  handleBallOffBottom();
}

void drawPaddle() {      // draws the paddle, sets it's size, hight and colors it, and draws the paddle to it's location
  rectMode(CENTER);
  noStroke();
  fill(paddleColor);
  rect(paddleX, paddleY, paddleWidth, paddleHeight);
}

void drawBall() {      //draws balls, sets it's size, hight and colors it, and the balls to it's location 
  rectMode(CENTER);    
  noStroke();
  fill(ballColor);
  rect(ballX, ballY, ballSize, ballSize);
}

void handleBallHitPaddle() {                                               // if the ball and paddle collide, bonces the ball of the paddle. 
  if (ballOverlapsPaddle()) {
    ballY = paddleY - paddleHeight/2 - ballSize/2;
    ballVY = -ballVY;
    ballColor = color(255, 0, 0);                                          //** setes the color of the ball to red

    staticColor = color(random(0, 255), random(0, 255), random(0, 255));
    staticSizeMin = floor(random(1, 30));
    staticSizeMax = floor(random(1, 100));
  } else {
    ballColor = color(originBallColor);                                    //** if else sets the color of the ball to it's original. 
  }
}

boolean ballOverlapsPaddle() {      // checks if the ball touchs the paddle.
  if (ballX - ballSize/2 > paddleX - paddleWidth/2 && ballX + ballSize/2 < paddleX + paddleWidth/2) {
    if (ballY > paddleY - paddleHeight/2) {
      return true;
    }
  }
  return false;
}

void handleBallOffBottom() {            //sets the ball back to the center if the ball goes of bottem screen.
  if (ballOffBottom()) {
    ballX = width/2;
    ballY = height/2;
  }
}

boolean ballOffBottom() {                // if ball going off the screen flag if it's ture. 
  return (ballY - ballSize/2 > height);
}

void handleBallHitWall() {              // tells the ball what to do if it touchs any of the walls.
  if (ballX - ballSize/2 < 0) {
    ballX = 0 + ballSize/2;
    ballVX = -ballVX;
  } else if (ballX + ballSize/2 > width) {
    ballX = width - ballSize/2;
    ballVX = -ballVX;
  }
  if (ballY - ballSize/2 < 0) {        
    ballY = 0 + ballSize/2;
    ballVY = -ballVY;
  }
}

void ballTop() {                            //**changes the ball speed if the ball touchs the top of the screen. 
  if (ballY - ballSize/2 <= 0) {
    ballSpeed = floor(random(10, 15));      
    ballVY = ballSpeed;
    if (ballVX <= 0) {
      ballVX = -ballSpeed;
    } else {
      ballVX = ballSpeed;
    }
  }
}

void keyPressed() {                    // if the left arrow key is pressed move the paddle left
  if (keyCode == LEFT) {               // if the right arrow key is pressed move the paddle right
    paddleVX = -paddleSpeed;
  } else if (keyCode == RIGHT) {
    paddleVX = paddleSpeed;
  }
}

void keyReleased() {
  if (keyCode == LEFT && paddleVX < 0) {          //when the arrow keys are released stop the padlle from moving
    paddleVX = 0;
  } else if (keyCode == RIGHT && paddleVX > 0) {
    paddleVX = 0;
  }
}