final int CIRCLE_SPEED = 7;                                // this varible defines the circle's speed to 7.
final color NO_CLICK_FILL_COLOR = color(250, 100, 100);    // this varible is the initial fill color for red
final color CLICK_FILL_COLOR = color(100, 100, 250);       // this varible defines fill color to blue
final color BACKGROUND_COLOR = color(250, 150, 150);       // this varible of the color for the background which is pink 
final color STROKE_COLOR = color(250, 150, 150);           // this varible defines the border color for a stroke function, which is more of a Red color
final int CIRCLE_SIZE = 50;                                // The size of the Circle which is 50px. 

int circleX;   // The circle's initial value x cordatnets is 0
int circleY;   // The circle's initial value y cordatnets is 0
int circleVX;  // The circle's initial value velocity of X which is 0
int circleVY;  // The circle's initial value velocity of Y which is 0

void setup() {                     // when the application starts running do the following.  
  size(640, 480);                  // The size of the window is going to be 680px by 460px.
  circleX = width/2;               // sets the circle's x position to the center of the screen. 
  circleY = height/2;              // sets the circle's y position to the center of the screen. 
  circleVX = CIRCLE_SPEED;         // sets the circle's x velocity to 7px. 
  circleVY = CIRCLE_SPEED;         // sets the circle's y velocity to 7px. 
  stroke(STROKE_COLOR);            // sets the circle's border to the defined STROKE_COLOR varible which is Red. 
  fill(NO_CLICK_FILL_COLOR);       // sets the circle's full body to the NO_CLICK_FILL_COLOR varible
  background(BACKGROUND_COLOR);    // sets the background color to the define BACKGROUND_COLOR 
}                                  //close the setup.

void draw() {                      // loops the code.
    if (dist(mouseX, mouseY, circleX, circleY) < CIRCLE_SIZE/2) {  //if the dustece between your mouse and the circle is less then 25 then set the color of the circle to bule.
    fill(CLICK_FILL_COLOR);
  }
  else {                                                           // if the dustecne between your mouse and the circle is greater then 25 then set the color of the circle to pink.
    fill(NO_CLICK_FILL_COLOR);
  }
  ellipse(circleX, circleY, CIRCLE_SIZE, CIRCLE_SIZE);             //draw a circle at the x position using the varible vaule of circleX, then at the position y using the varible vaule of circleY, then set the width to the varible vaule of CIRCLE_SIZE and then set the height to the varible vaule ofCIRCLE_SIZE  
  circleX += circleVX;            //the value of circleX is greater or equal to vaule of circleVX 
  circleY += circleVY;            //the value of circleY is greater or equal to vaule of circleVY 
  if (circleX + CIRCLE_SIZE/2 > width || circleX - CIRCLE_SIZE/2 < 0) {   // if circleX's value plus half the vaule of CIRCLE_SIZE is less then the width of the screen size OR if circleX's value subtracked by half the vaule of CIRCLE_SIZE is less then 0
    circleVX = -circleVX;                                                 // Then set circleVX vaule's to the negative of it's own value. i.e set 7 to -7.  
  }
  if (circleY + CIRCLE_SIZE/2 > height || circleY - CIRCLE_SIZE/2 < 0) {  // if circleY's value plus half the vaule of CIRCLE_SIZE is less then the height of the screen size OR if circleY's value subtracked by half the vaule of CIRCLE_SIZE is less then 0
    circleVY = -circleVY;                                                 // Then set circleVY vaule's to the negative of it's own value. i.e set 7 to -7.    
  }
}                                  //end of what is required to be looped. 

void mousePressed() {
  background(BACKGROUND_COLOR);  //Draws the background color when the mouse is right clicked.  
}