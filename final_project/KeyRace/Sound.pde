//this is used to loop the background soundtrack as this was the same way I sloved the problem with my midtream project. 

class Sound{
  int bgmTime;
  int bgmInterval = 116;
void update(){
 // this takes the time interval of the bgm and drops it down by 1 seconed. 
      bgmTime = bgmInterval -int(millis()/1000);
      // when the bgmTimer counts down to 0
      if (bgmTime == 0) {
        //Loop the Bgm
        Bgm.loop();
        // resets the Interval from the start again.
        bgmInterval +=116;
      }
  // if player 1 is one the last lap player
  if(laps == 19){
    // play the final lap sound
     FinalLapSound.play();
   }
 // if player 2 is one the last lap player  
if(lapsP2 == 19){
  // play the final lap sound
     FinalLapSound.play();
   }   
}
}