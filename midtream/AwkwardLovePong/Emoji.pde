class Emoji {

  int player1Emoji = 0;
  int player2Emoji = 0;
  int size = 100; 

  Emoji() {
    PlayerEmoji[0] = loadImage("emoji_0.png");  // Start emoji
    PlayerEmoji[1] = loadImage("emoji_1.png");  // win emoji
    PlayerEmoji[2] = loadImage("emoji_2.png");  // lose emoji
    PlayerEmoji[3] = loadImage("emoji_3.png");  // Mad emoji
    PlayerEmoji[4] = loadImage("emoji_4.png");  // love emoji
  }

  void player1WinEmoji() {
    player1Emoji = 1;
    player2Emoji = 2;
  }
  void player2WinEmoji() {
    player1Emoji = 2;
    player2Emoji = 1;
  }
  void EmojiIfOfScreenRight() {
    player1Emoji = 4;
    player2Emoji = 3;
  }
  void EmojiIfOfScreenLeft() {
    player1Emoji = 3;
    player2Emoji = 4;
  }


  void display() {
    imageMode(CENTER);
    image(PlayerEmoji[player1Emoji], 90, 70);
    image(PlayerEmoji[player2Emoji], 930, 70);
    PlayerEmoji[0].resize(size, size);
    PlayerEmoji[1].resize(size, size);
    PlayerEmoji[2].resize(size, size);
    PlayerEmoji[3].resize(size, size);
    PlayerEmoji[4].resize(size, size);
  }
}