class Sound {

  int bgmTime;
  int bgmInterval = 116;
  boolean PalyGamerOverSound = true;
  boolean stopGameOverSound = false;

  void update() {
      // this takes the time interval of the bgm and drops it down by 1 seconed. 
      bgmTime = bgmInterval -int(millis()/1000);
      // when the bgmTimer counts down to 0
      if (bgmTime == 0) {
        //Loop the Bgm
        Bgm.loop();
        // resets the Interval from the start again.
        bgmInterval +=116;
      }
  }
}