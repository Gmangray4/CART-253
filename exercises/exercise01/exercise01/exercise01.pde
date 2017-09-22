// Gordon Gray 4
// exercise 1
// September 20, 2017!

// What I did with my exercise is that I wanted my circle to stop moving when the mouse is clicked and resume movement when the mouse is released. 
// However, I wanted my circle to show the emotion of fear by turning yellow and have the background go black when the mouse is pressed to show the lights have been turn off.
// The Cricle will turn yellow in fear and Qustion what's going on or evern you yourself.
// I achived the cricle assking a qusition thoguh the text function, and the String varible array that Victor kindly showed me how to do.
// The Cricle will qustion when the screen is clicked and everthing will return to normal when the mouse is released.
// PLEASE NOTE!!! all new lines of code I added will have a **at the bigging of the comments and code I have edited will have *at the start.
// Victor (just saying again) did show me how to do text and an array function as you can see below. 

final int   CIRCLE_SPEED = 7;                                    //   This varible defines the circle's speed to 7.
final color Origin_NO_CLICK_FILL_COLOR = color(250, 100, 100);   //** However to the abouve note I created this varible to keep note of what the orginal color os no_click_fill_color was so I can set that vaulbe back to it's original coloer when I need it to be.   
final color Origin_CLICK_FILL_COLOR = color(100, 100, 250);      //** This varible is used to keep track of what click_file_color's orginal vaule is to retuen it later if change.
final color Origin_BACKGROUND_COLOR = color (250, 150, 150);     //** This varible is used to keep track of what background_color's orginal vaule is to retuen it later if change.
final color STROKE_COLOR = color(250, 150, 150);                 //   This varible defines the border color for a stroke function, which is more of a Red color
final color SCARED_COLOR = color(238, 244, 66);                  //** This is the color value for when my circle is suposse to become scared. That color is Yellow!
final int   Origin_CIRCLE_SIZE = 50;                             //** This varible is used to keep track of what CIRCLE_SIZE's orginal vaule is to retuen it later if change.

color click_file_color = color(100, 100, 250);             //*  This varible defines fill color to blue. 
color no_click_fill_color = color(250, 100, 100);          //*  This varible is the initial fill color for red. I removed final becuse I wanted it"s value to change back and fore from one vaule to another.
color background_color = color(250, 150, 150);             //*  This varible of the color for the background which is pink. I removed final so I could change the background color if need be.
int   CIRCLE_SIZE = 50;                                    //*  The size of the Circle which is 50px. I removed final becuse I wanted it's value to change back and fore from one vaule to another.

int circleX;         //   The circle's initial value x cordatnets is 0
int circleY;         //   The circle's initial value y cordatnets is 0
int circleVX;        //   The circle's initial value velocity of X which is 0
int circleVY;        //   The circle's initial value velocity of Y which is 0
int textX = 50;      //** This is the circle's initial text x's  x cordatnets which is 50
int textY = 50;      //** This is the circle's initial text y's  y cordatnets which is 50

String[] text = new String[8];    //** This varible is define with 7 arrays of words... Side note!!! Victor did help me with this one. this is how I know about this function.

void setup() {                     // when the application starts running do the following.  
  size(640, 480);                  // The size of the window is going to be 680px by 460px.
  circleX = width/2;               // sets the circle's x position to the center of the screen. 
  circleY = height/2;              // sets the circle's y position to the center of the screen. 
  circleVX = CIRCLE_SPEED;         // sets the circle's x velocity to 7px. 
  circleVY = CIRCLE_SPEED;         // sets the circle's y velocity to 7px. 
  stroke(STROKE_COLOR);            // sets the circle's border to the defined STROKE_COLOR varible which is Red. 
  fill(no_click_fill_color);       // sets the circle's full body to the no_click_fill_color varible
  background(background_color);    // sets the background color to the define background_color value.  
  
  text[0] = "Hello?";                      //** The collction of text shown here are the 7 possible words that the circle will display in text.
  text[1] = "Who are you?";                //** what highlight in purple is what text will appear when their number is called. 
  text[2] = "Why are we here?";
  text[3] = "Why is it so cold?";
  text[4] = "Do you want to be friends?";
  text[5] = "Why is everything so dark?";
  text[6] = "Where's the light?";
  text[7] = "*_*";
} //close the setup.
                                    
void draw() { // loops the code.
    if (dist(mouseX, mouseY, circleX, circleY) < CIRCLE_SIZE/2) {         //if the dustece between your mouse and the circle is less then 25 then set the color of the circle to bule.
    fill(click_file_color);
  }
  else {                                                                  // if the dustecne between your mouse and the circle is greater then 25 then set the color of the circle to pink.
    fill(no_click_fill_color);
  }
  ellipse(circleX, circleY, CIRCLE_SIZE, CIRCLE_SIZE);                    //draw a circle at the x position using the varible vaule of circleX, then at the position y using the varible vaule of circleY, then set the width to the varible vaule of CIRCLE_SIZE and then set the height to the varible vaule ofCIRCLE_SIZE  
  circleX += circleVX;                                                    //the value of circleX is greater or equal to vaule of circleVX 
  circleY += circleVY;                                                    //the value of circleY is greater or equal to vaule of circleVY 
  if (circleX + CIRCLE_SIZE/2 > width || circleX - CIRCLE_SIZE/2 < 0) {   // if circleX's value plus half the vaule of CIRCLE_SIZE is less then the width of the screen size OR if circleX's value subtracked by half the vaule of CIRCLE_SIZE is less then 0
    circleVX = -circleVX;                                                 // Then set circleVX vaule's to the negative of it's own value. i.e set 7 to -7.  
  }
  if (circleY + CIRCLE_SIZE/2 > height || circleY - CIRCLE_SIZE/2 < 0) {  // if circleY's value plus half the vaule of CIRCLE_SIZE is less then the height of the screen size OR if circleY's value subtracked by half the vaule of CIRCLE_SIZE is less then 0
    circleVY = -circleVY;                                                 // Then set circleVY vaule's to the negative of it's own value. i.e set 7 to -7.    
  }
} //end of what is required to be looped. 

void mousePressed() {
  background_color = color(0);                                       //** Sets the background vauble to black.
  background(background_color);                                      //Draws the background color when the mouse is right clicked.  
  circleVX = 0;                                                      //** sets the circle's x velocity to 0px. stops the circle from moving on the x-axis.
  circleVY = 0;                                                      //** sets the circle's Y velocity to 0px. stops the circle from moving on the y-axis..
  no_click_fill_color = SCARED_COLOR;                                //** changes no_click_fill_color color value to yello to repersnt the circle's fear.
  textSize(30);                                                      //** sets the size of the text.
  text(text[floor(random(0,8))], circleX - textX, circleY - textY);  //** displays a random text from my array between 0 to 7, then sets the text position away from the cricle at the top left from it about.
  fill(255,0,0);                                                     //** sets the text color. 
                                              
}
void mouseReleased()  {                                              //** When the mouse is released all variables are set back to their original values.
  background_color = color(Origin_BACKGROUND_COLOR);                 //** Sets background_color's variable back to it's original. 
  background(background_color);                                      //** Draws the background. 
  circleVX = circleVX + 7;                                           //** Sets circle's x velocity back to 7px
  circleVY = circleVY + 7;                                           //** Sets circle's Y velocity back to 7px
  CIRCLE_SIZE = Origin_CIRCLE_SIZE;                                  //** Sets CIRCLE_SIZE's variable back to it's original. 
  click_file_color = Origin_CLICK_FILL_COLOR;                        //** Sets click_file_color's variable back to it's original.
  no_click_fill_color = Origin_NO_CLICK_FILL_COLOR;                  //** Sets no_click_fill_color's variable back to it's original.
}                              