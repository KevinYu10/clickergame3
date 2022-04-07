void intro() {
  
  theme.play();
  
  background(255, 255, 0);
  fill(0);
  rect(150, 400, 200, 100);
  rect(450, 400, 200, 100);
  fill(255);
  textSize(70);
  text("start", 180, 470);
  text("option", 460, 470);
  fill(0);
  textSize(90);
  text("clicker-game", 180, 200);
}

void introClick() {
  if (mouseX > 150 && mouseX < 350 && mouseY > 400 && mouseY < 500) {
    mode = GAME;
  }
  if (mouseX > 450 && mouseX < 650 && mouseY > 400 && mouseY < 500) {
    mode = OPTION;
  }
} 
