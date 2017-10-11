class PlayerControls {

  String ControlTextUp1;
  String ControlTextDown1;
  String ControlTextUp2;
  String ControlTextDown2;
  
  PlayerControls() {
   
    ControlTextUp1 = "q";
    ControlTextDown1= "a";
    ControlTextUp2 = "p";
    ControlTextDown2 = ";";
  }
  
  void Update() {
    if (p1HalfHeart.Speed == 15) {
      Up1 = 'w';
      Down1 = 's';
      ControlTextUp1 = "w";
      ControlTextDown1= "s";
    }

    if (p1HalfHeart.Speed == 10) {
      Up1 = 'e';
      Down1 = 'd';
      ControlTextUp1 = "e";
      ControlTextDown1= "d";
    }
    if (p1HalfHeart.Speed == 7) {
      Up1 = 'r';
      Down1 = 'f';
      ControlTextUp1 = "r";
      ControlTextDown1= "f";
    }
    if (p1HalfHeart.Speed == 3) {
      Up1 = 't';
      Down1 = 'g';
      ControlTextUp1 = "t";
      ControlTextDown1= "g";
    }
    
    if (p2HalfHeart.Speed == 15) {
      Up2 = 'o';
      Down2 = 'l';
      ControlTextUp2 = "o";
      ControlTextDown2 = "l";
    }
    if (p2HalfHeart.Speed == 10) {
      Up2 = 'i';
      Down2 = 'k';
      ControlTextUp2 = "i";
      ControlTextDown2 = "k";
    }

    if (p2HalfHeart.Speed == 7) {
      Up2 = 'u';
      Down2 = 'j';
      ControlTextUp2 = "u";
      ControlTextDown2 = "j";
    }
    if (p2HalfHeart.Speed == 3) {
      Up2 = 'y';
      Down2 = 'h';
      ControlTextUp2 = "y";
      ControlTextDown2 = "h";
    }
    leftPaddle.upKey = Up1;
    leftPaddle.downKey = Down1;

    rightPaddle.upKey = Up2;
    rightPaddle.downKey = Down2;
    
    p1HalfHeart.upKey = Up1;
    p1HalfHeart.downKey = Down1;
    
    p2HalfHeart.upKey = Up2;
    p2HalfHeart.downKey = Down2;
  }
  
  void display(){
  textSize(100);
    fill(255,255,255,96);
    text(ControlTextUp1, 250, 100);
    text(ControlTextDown1, 250, 515);
    text(ControlTextUp2, 700, 100);
    text(ControlTextDown2, 700, 515);
  }
}