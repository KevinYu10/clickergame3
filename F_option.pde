


void option() {

  background(179, 242, 231);
  
  fill(255);
  rect(20, 20, 50, 30);
  fill(0);
  triangle(30, 35, 40, 45, 40, 25);
  rect(35, 30, 20, 10);

  fill(0);
  textSize(50);
  text("Option", 335, 88);

  //colour option
  fill(255, 0, 0);
  rect(50, 150, 150, 100);
  fill(255, 255, 0);
  rect(325, 150, 175, 100);
  fill(0, 255, 255);
  rect(600, 150, 150, 100);

  //colour indicator
  fill(c);
  square(500, 400, d);
  
  //size changer
  fill(0);
  rect(100, 400, 20, 200);
  circle(110, z, 50);
}

void optionClick() {
  if (mouseX > 50 && mouseX < 200 && mouseY > 150 && mouseY < 250) {
    c = color(255, 0, 0);
  } else if (mouseX > 325 && mouseX < 500 && mouseY > 150 && mouseY < 250) {
    c = color(255, 255, 0);
  } else if (mouseX > 600 && mouseX < 750 && mouseY > 150 && mouseY < 250) {
    c = color(0, 255, 255);
  }
  
  if (mouseX > 20 && mouseX < 70 && mouseY > 20 && mouseY < 50) {
    mode = INTRO;
  }
}

//void optionDrag() {
  //if (mouseX
//}
