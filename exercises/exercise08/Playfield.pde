class Playfield{

  int size = 75;
  Playfield(){
  
  }
  
  void update(){
  
  }
  
  void display(){
    fill(255,0,0);
    // 2 key
    rect(125,250,size,size);
    //3
    rect(205,250,size,size);
    // 4
    rect(285,250,size,size);
    // 5
    rect(365,250,size,size);
    //q
    rect(100,327,size,size);
    // w
    rect(180,327,size,size);
    //e
    rect(260,327,size,size);
    // r
    rect(340,327,size,size);
    //t
    rect(420,327,size,size);
    //a
    rect(115,405,size,size);
    //s
    rect(195,405,size,size);
    //d
    rect(275,405,size,size);
    //f
    rect(355,405,size,size);
    //g
    rect(435,405,size,size);
    //z
    rect(145,483,size,size);
    //x
    rect(225,483,size,size);
    //c
    rect(305,483,size,size);
    //v
    rect(385,483,size,size);
    
    //player 2
    fill(0,0,255);
    // 6
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
    text(currentKey, 600,190);
    
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