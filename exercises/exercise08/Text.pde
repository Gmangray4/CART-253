class Text{

Text(){
currentKeyText[0]  = "a";
currentKeyText[1]  = "b";
currentKeyText[2]  = "c";
currentKeyText[3]  = "d";
currentKeyText[4]  = "e";
currentKeyText[5]  = "f";
}

void update(){
  currentKeyText[keyNumber] = currentKeyText[keyNumber];
}
  
void display(){
  
  textSize(30);
    fill(0);
    text(currentKeyText[keyNumber], 50, 570);}

}