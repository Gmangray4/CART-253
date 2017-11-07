import processing.sound.*;
import ddf.minim.*;

SoundFile[] voice = new SoundFile[16];


Minim minim;
AudioInput mic; // The class that lets us get at the microphone

void setup() {
  size(500,500);
  
  for (int i = 0; i < voice.length; i++) {
    // We can use the i variable to work out which filename to use!
    voice[i] = new SoundFile(this, "voice0" + (i+1) + ".wav");
  }

  minim = new Minim(this);
  // We use minim.getLineIn() to get access to the microphone data
  mic = minim.getLineIn();
}

void draw() {
  background(0);
  rectMode(CENTER);
  // Get the current level (volume) going into the microphone
  float level = mic.mix.level();
  // Draw a rectangle with dimensions defined by microphone level
  rect(width/2, height/2, width * level, height * level);

if (level >= 400)  {
  
  }
}