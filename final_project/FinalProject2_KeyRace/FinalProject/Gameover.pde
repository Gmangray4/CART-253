class Gameover {

 void display(){

   if(p1wins == true){
     fill(246,255,3);
     rect(370,140,160,75);
     fill(255,0,0);
     textSize(20);
     text("Player 1 wins", 390,185);
   }
     if(p2wins == true){
     fill(246,255,3);
     rect(370,140,160,75);
     fill(0,0,255);
     textSize(20);
     text("Player 2 wins", 390,185);
   }
   
}
}