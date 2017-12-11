class StartTimer{
        
  int time;
  int interval = 9;
 void update() {
      
     if( time >= 0){
        textSize(100);
        text(time, 425,150);
        // this takes the time interval of the bgm and drops it down by 1 seconed. 
        time = interval -int(millis()/1200);
        // when the bgmTimer counts down to 0
        if (time == 0){
          fill(#FFEB03);
          text("Start!", 325, 200);
        }
     }
      if (time <= 0) {
        gameStart = true; 
      }
  }
 
}