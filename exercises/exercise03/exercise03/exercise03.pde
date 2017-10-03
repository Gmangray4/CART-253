//The code Makes two circles, a blue and a red one, bounce off the walls and color the screen as time goes by.


//In main file: or the exercise03.pde
// All integers, are defined, Classes are named and functions are being run. 

// Makes a bacground value, and sets a name for each bouncer class. 
color backgroundColor = color(200,150,150);
Bouncer bouncer;
Bouncer bouncer2;


// Sets up the properties of each bouncer.
// Sets their class into existence 
// sets screen and backgorund
void setup() {
  size(640,480);
  background(backgroundColor);
  bouncer = new Bouncer(width/2,height/2,2,2,50,color(150,0,0,50),color(255,0,0,50));
  bouncer2 = new Bouncer(width/2,height/2,-2,2,50,color(0,0,150,50),color(0,0,255,50));
}

//Updates each bouncer and then draws them onto the screen. 
void draw() {
  bouncer.update();
  bouncer2.update();
  bouncer.draw();
  bouncer2.draw();
}