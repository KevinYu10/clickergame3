void gameover() {
  
  gameover.play();
  
  background(0);
  
  fill(255, 0, 0);
  textSize(70);
  text("GameOver", 250, 200);
}

void gameoverCLick() {
  if (mouseX > 0 && mouseX < 800 && mouseY > 0 && mouseY < 800) {
    mode = INTRO;
    score = 0;
    lives = 3;
  }
}
