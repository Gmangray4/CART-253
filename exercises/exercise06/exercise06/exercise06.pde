// Exercise 06
// Gordon Gray
// I set the camera to look for the redest thing in the room then change the boncer's color deeping on the amount of red found.
// I borrowed the code in the perstion side to help me out. 
// for example how things work is that
// if their is no red on the screnn then the boncers are black.
// if somthing red is found but it's a little redest then give the boncers a little bit of red.
// If somthing is fully red that is found then set the boncers to the color red. 
// I also shnge the eslpse that tracks the redest obect into a rect and had it to chagne on the redness found as well.

// Using the webcam as input to play with Bouncers.

// Import the video library
import processing.video.*;

// The capture object for reading from the webcam
Capture video;

//the location of the redest location
int reddestX = 0;
int reddestY = 0;
float record = 1000;

//the value for red
int red = 200;

color bouncerColor;

// An array of bouncers to play with
Bouncer[] bouncers = new Bouncer[10];

// setup()
//
// Creates the bouncers and starts the webcam

void setup() {
  size(640, 480);

  // Our old friend the for-loop used to go through the length of an
  // array adding new objects to it (Bouncers in this case)
  for (int i = 0; i < bouncers.length; i++) {
    // Each Bouncer just starts with random values 
    bouncers[i] = new Bouncer(random(0, width), random(0, height), random(-10, 10), random(-10, 10), random(20, 50), bouncerColor);
  }

  // Start up the webcam
  video = new Capture(this, 640, 480, 30);
  video.start();
}

// draw()
//
// Processes the frame of video, draws the video to the screen, updates the Bouncers
// and then just draws an ellipse at the brightest pixel location. You code should
// do something much more interesting in order to actually interact with the Bouncers.

void draw() {
  // A function that processes the current frame of video
  handleVideoInput();
    for ( int x = 1; x < video.width; x++ ) {
    for ( int y = 0; y < video.height; y++ ) {
      int loc = x + y * width;
      color pixelColor = video.pixels[loc];
      float amount = dist(255, 0, 0, red(pixelColor), green(pixelColor), blue(pixelColor));
      
      // looks for the redest location
      if (amount < record) {
        record = amount;
        reddestX = x;
        reddestY = y;
        
      // change the boncer's level of redness by the amount of red found on the screen.
      //if not so much red ness found at the reddest spot the boncer becomes a little red.
      // if the reddest spot is very red make the boncer fully red.
      // if no red make the boncers black.
        if (amount < 160) {
           red = 0;
        }
        if (amount < 150) {
           red = 55;
        }
        if (amount < 100) {
           red = 105;
        }
        if (amount < 80) {
           red = 255;
        }
      }
    }
  }
 //resets back to a 1000 so that the system is consently looking for the newset rew location
 record = 1000;
 
  //changes the boncers color
 bouncerColor = color (red,0,0);
 
 
  //I change the epslie into a rect and made it the same color to blind in with the boncer but not look exactly like the boncer to still visully see the reddest spot.  
  // Draw the video frame to the screen
  fill(red,0,0);
  image(video, 0, 0);
  stroke(red,0,0);
  strokeWeight(10);
  rect(reddestX, reddestY, 10, 10);
 
  // Our old friend the for-loop running through the length of an array to
  // update and display objects, in this case Bouncers.
  // If the brightness (or other video property) is going to interact with all the
  // Bouncers, it will need to happen in here.
  for (int i = 0; i < bouncers.length; i++) {
    bouncers[i].update();
    bouncers[i].display();
  }

  // For now we just draw a crappy ellipse at the brightest pixel

}

// handleVideoInput
//
// Checks for available video, reads the frame, and then finds the brightest pixel
// in that frame and stores its location in brightestPixel.

void handleVideoInput() {
  // Check if there's a frame to look at
  if (!video.available()) {
    // If not, then just return, nothing to do
    return;
  }
  // If we're here, there IS a frame to look at so read it in
  video.read();
}