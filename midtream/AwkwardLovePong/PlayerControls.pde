class PlayerControls {

  void Update() {
    if (p1HalfHeart.Speed == 15) {
      Up1 = 'w';
      Down1 = 's';
    }

    if (p1HalfHeart.Speed == 10) {
      Up1 = 'e';
      Down1 = 'd';
    }
    if (p1HalfHeart.Speed == 7) {
      Up1 = 'r';
      Down1 = 'f';
    }
    if (p1HalfHeart.Speed == 3) {
      Up1 = 't';
      Down1 = 'g';
    }
    
    if (p2HalfHeart.Speed == 15) {
      Up2 = 'o';
      Down2 = 'l';
      ;
    }
    if (p2HalfHeart.Speed == 10) {
      Up2 = 'i';
      Down2 = 'k';
    }

    if (p2HalfHeart.Speed == 7) {
      Up2 = 'u';
      Down2 = 'j';
    }
    if (p2HalfHeart.Speed == 3) {
      Up2 = 'y';
      Down2 = 'h';
    }
    println(Up1);
    println(Down1);
    println(p1HalfHeart.Speed);
    println(Up2);
    println(Down2);
    println(p2HalfHeart.Speed);
    
    leftPaddle.upKey = Up1;
    leftPaddle.downKey = Down1;

    rightPaddle.upKey = Up2;
    rightPaddle.downKey = Down2;
    
    p1HalfHeart.upKey = Up1;
    p1HalfHeart.downKey = Down1;
    
    p2HalfHeart.upKey = Up2;
    p2HalfHeart.downKey = Down2;
  }
}