//The Sound Timer loops the Bgm when Complted

class SoundTimer {

  int bgmTime;
  int bgmInterval = 93;

  SoundTimer() {
  }
  void update() {
    if (gameover.stopContolsWhenGameIsOver == false) {
      bgmTime = bgmInterval -int(millis()/1000);
      if (bgmTime == 0) {
        Bgm.loop();
        bgmInterval += 95;
      }
       if (gameover.stopContolsWhenGameIsOver == true){
      bgmInterval += 0;
      Bgm.stop();
      }
    }
  }
}