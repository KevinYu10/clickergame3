void game() {
  background(0, 255, 0);
  
  textSize(30);
  fill(0);
  text("Score :" + score, 350, 100);
  text("Lives :" + lives, 350, 150);
  
  fill(255);
  rect(730, 10, 60, 30);
  fill(0);
  textSize(15);
  text("pause", 740, 30);

  fill(c);
  stroke(0);
  strokeWeight(5);
  square(x, y, d);

  x = x + vx;
  y = y + vy;
  
  vx = s/2;

  //bouncing
  if (x < 0 || x > width-d) {
    vx = vx * -1;
  }
  if (y < 0 || y > height-d) {
    vy = vy * -1;
  }
}

void gameCLick() {
  if (mouseX < x + d && mouseY < x + y && mouseX > x && mouseY > y) {
    score = score + 1;
    coin.rewind();
    coin.play();
  } else if(mouseX > 730 && mouseX < 790 && mouseY > 10 && mouseY < 40) {
    mode = PAUSE;
  } else { 
    lives = lives - 1; 
    bump.rewind();
    bump.play();
    if (lives == 0) mode = GAMEOVER;
  }
}
