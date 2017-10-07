class Score{

int player1Score = 0;
int player2Score = 0;
int textSize = 50;

int p1x;
int p2x;
int y;

Score(){
  p1x = 50;
  p2x = 950;
    y = 50;
}

void updateP1(){
  player1Score += 1;
  }
  
 void updateP2(){
  player2Score += 1;
  }
  
void display(){
  textSize(textSize);
  fill(0);
  textMode(CENTER);
  text(player1Score,p1x,y);
  text(player2Score,p2x,y);
}

 boolean player1Loses() {
    return (player1Score == 24);
  }
  
 boolean player2Loses() {
    return (player2Score == 24);
  }

}