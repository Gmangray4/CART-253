class Gameover {

  PImage flag;
  
  Gameover(){
  flag = loadImage("flag.png");
  flag.resize(250,150);
  }
  
 void display(){
  
   if(p1wins == true){
     fill(246,255,3);
     rect(370,140,160,75);
     fill(255,0,0);
     textSize(20);
     text("Player 1 wins", 390,185);
     image(flag,180, 330);
   }
   
     if(p2wins == true){
     fill(246,255,3);
     rect(370,140,160,75);
     fill(0,0,255);
     textSize(20);
     text("Player 2 wins", 390,185);
     image(flag,580, 330);
   }
  if( gameisover == true){
  vid.stop();
}   
}
}