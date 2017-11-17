class Playfield{
  
  color player1;
  color player2;
  color dead;
  int size = 75;
  Playfield(){

    player1 = color(255,0,0);
    player2 = color(0,0,255);
    dead = color(0);
    
  }
  
  void update(){
  
  }
  
  void display(){
    // 2 key
    fill(player1);
    rect(125,250,size,size);
    //3
    fill(player1);
    rect(205,250,size,size);
    // 4
    fill(player1);
    rect(285,250,size,size);
    // 5
    fill(player1);
    rect(365,250,size,size);
    //q
    fill(player1);
    rect(100,327,size,size);
    // w
    fill(player1);
    rect(180,327,size,size);
    //e
    fill(player1);
    rect(260,327,size,size);
    // r
    fill(player1);
    rect(340,327,size,size);
    //t
    fill(player1);
    rect(420,327,size,size);
    //a
    fill(player1);
    rect(115,405,size,size);
    //s
    fill(player1);
    rect(195,405,size,size);
    //d
    fill(player1);
    rect(275,405,size,size);
    //f
    fill(player1);
    rect(355,405,size,size);
    //g
    fill(player1);
    rect(435,405,size,size);
    //z
    fill(player1);
    rect(145,483,size,size);
    //x
    fill(player1);
    rect(225,483,size,size);
    //c
    fill(player1);
    rect(305,483,size,size);
    //v
    fill(player1);
    rect(385,483,size,size);
    
    //player 2
    // 6
    fill(player2);
    rect(445,250,size,size);
    // 7
    rect(525,250,size,size);
    // 8
    rect(605,250,size,size);
    // 9
    rect(685,250,size,size);
    // 0
    rect(765,250,size,size);
    //y
    rect(500,327,size,size);
    //u
    rect(580,327,size,size);
    //i
    rect(660,327,size,size);
    //o
    rect(740,327,size,size);
    //h
    rect(515,405,size,size);
    //j
    rect(595,405,size,size);
    //k
    rect(675,405,size,size);
    //l
    rect(755,405,size,size);
    //b
    rect(465,483,size,size);
    //n
    rect(545,483,size,size);
    //m
    rect(625,483,size,size);
    //,
    rect(705,483,size,size);
    //.
    rect(785,483,size,size);
    
    // Target keys
    fill(255);
    // p1's target box
    rect(250,140,size,size);
    // p2's target box
    rect(575,140,size,size);
    // Taget text
    fill(0);
    textSize(40);
    text(currentKey, 277,190);
    text(currentKeyP2, 600,190);
    
    // key text
    fill(255);
    text("2", 150,300);
    text("3", 230,300);
    text("4", 310,300);
    text("5", 390,300);
    text("6", 470,300);
    text("7", 550,300);
    text("8", 630,300);
    text("9", 710,300);
    text("0", 790,300);
    text("q", 125,377);
    text("w", 205,377);
    text("e", 285,377);
    text("r", 365,377);
    text("t", 445,377);
    text("y", 525,377);
    text("u", 605,377);
    text("i", 690,377);
    text("o", 765,377);    
    text("a", 140,453);
    text("s", 220,453);
    text("d", 300,453);
    text("f", 380,453);
    text("g", 460,450);
    text("h", 540,453);
    text("j", 625,453);
    text("k", 700,453);
    text("l", 780,453);
    text("a", 140,453);
    text("s", 220,453);
    text("d", 300,453);
    text("f", 380,453);
    text("g", 460,450);
    text("h", 540,453);
    text("j", 625,453);
    text("k", 700,453);
    text("l", 780,453);   
    text("z",170,530);
    text("x",250,530);
    text("c",330,530);
    text("v",410,530);
    text("b",490,530);
    text("n",570,530);
    text("m",650,530);
    text(",",730,530);
    text(".",810,530);
    
    text("Target",230,120);
    text("Target",550,120);
  }
}