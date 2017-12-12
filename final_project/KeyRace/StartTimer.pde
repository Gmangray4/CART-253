//Used to creat a countdown so that players can get their fingers in place before the game starts. 
class StartTimer{  
  int time;
// side note.... I set the interval to 9 because the program bugs when loading the video so this actlly makes the game appear at 5 or 6 secs, However, due to the loading time for the 
// video, I gave the program 4 more seconeds to give the video time to load. 
// also doing this made the strat of the race go in sinc with the background music... just try it and see. 
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
     // when the timer hits 0
      if (time <= 0) {
        // the race begins!!!
        gameStart = true; 
      }
  }
 
}