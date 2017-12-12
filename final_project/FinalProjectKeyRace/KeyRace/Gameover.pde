// This class is used when the game ends

class Gameover {
// image of a race flag
  PImage flag;
  
  Gameover(){
  // load and resize the race flag image
  flag = loadImage("flag.png");
  flag.resize(250,150);
  }
  
 void display(){
  // when player 1 wins
   if(p1wins == true){
    //creat a text box that says player 1 wins 
     fill(246,255,3);
     rect(370,140,160,75);
     fill(255,0,0);
     textSize(20);
     text("Player 1 wins", 390,185);
    //displayes the race flag on player 1's side of the screen. 
     image(flag,180, 330);
   }
   // when player 2 wins
     if(p2wins == true){
       //creat a text box that says.... HEY! player 2 wins! 
     fill(246,255,3);
     rect(370,140,160,75);
     fill(0,0,255);
     textSize(20);
     text("Player 2 wins", 390,185);
     //displayes the race flag but on player 2's side of the screen. 
     image(flag,580, 330);
   }
 // stops the video when the game ends. 
  if( gameisover == true){
  vid.stop();
}   
}
}