// this controls what appaers on the screen when the game is over. 
class Gameover {

 void display(){

// if player 1 wins
   if(p1wins == true){
     // create a box window with the text: player 1 wins. 
     fill(246,255,3);
     rect(370,140,160,75);
     fill(255,0,0);
     textSize(20);
     text("Player 1 wins", 390,185);
   }
   //if player 2 wins
     if(p2wins == true){
       // create a box window with the text: player 2 wins. 
     fill(246,255,3);
     rect(370,140,160,75);
     fill(0,0,255);
     textSize(20);
     text("Player 2 wins", 390,185);
   }
    //Rare! CONDATION
   // if both players end at the same time...
   if(p1wins && p2wins == true){
       //create a text box that says.... Draw
     fill(246,255,3);
     rect(370,140,160,75);
     fill(0,0,255);
     textSize(20);
     text("Draw", 390,185);
   }
}
}