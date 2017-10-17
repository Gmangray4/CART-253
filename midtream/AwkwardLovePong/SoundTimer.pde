//The Sound Timer 
//loops the Bgm when Complted

// This class is used to do 2 things
// 1: To loop the the background music when it's over.
// 2: To Play the game over jungle and stop the Bgm.

class SoundTimer {

  int bgmTime;
  int bgmInterval = 93;
  boolean PalyGamerOverSound = true;
  boolean stopGameOverSound = false;

  SoundTimer() {
  }
  void update() {

    // this playes the game over jungle onces and stops it from playing again by setting itself to ture
    if (gameover.stopContolsWhenGameIsOver == true && PalyGamerOverSound == true) {
      gameOverTheme.play();
      // stops itself from playing again.
      PalyGamerOverSound = false;
    }

    // This is the timer which loops the background music when the game is over.
    // I had to make a work around for the bgm loop becuase as me and Pippin found that the Sound library
    // does not loop stereo sound in setup only mono.  
    if (gameover.stopContolsWhenGameIsOver == false) {
      // this takes the time interval of the bgm and drops it down by 1 seconed. 
      bgmTime = bgmInterval -int(millis()/1000);
      // when the bgmTimer counts down to 0
      if (bgmTime == 0) {
        //Loop the Bgm
        Bgm.loop();
        // resets the Interval from the start again.
        bgmInterval += 95;
      }
    }
    // When the game is over stop the bgm loop timer. 
    if (gameover.stopContolsWhenGameIsOver == true && stopGameOverSound == false) {
      // stops the interval from reseting
      bgmInterval += 0;
      Bgm.stop(); 
      // allows this to only happen once to avoid error in the pranitln with sound. 
      stopGameOverSound = true;
    }
  }
}