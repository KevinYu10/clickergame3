void pause () {
  
  theme.pause();
  
  background(255, 0, 0);
  fill(255);
  rect(100, 500, 200, 100);
  rect(500, 500, 200, 100);
  fill(0);
  textSize(60);
  text("Paused", 300, 200);
  textSize(45);
  text("continue", 110, 560);
  text("restart", 525, 560);
}

void pauseCLick() {
  if (mouseX > 100 && mouseX < 300 && mouseY > 500 && mouseY < 600) {
    mode = GAME;
  } else if (mouseX > 500 && mouseX < 700 && mouseY > 500 && mouseY < 600) {
    score = 0;
    lives = 3;
    mode = INTRO;
  }
}
