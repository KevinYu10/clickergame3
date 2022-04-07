import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


//game setting
int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
final int OPTION = 4;

//game object
float x, y, d;
float vx, vy;
int score, lives;
float s;

//object colour
int c;

//object size
float z;

//minim
Minim minim;
AudioPlayer theme, coin, gameover, bump; 

void setup() {
  size(800, 800);
  mode = OPTION;
  
  score = 0;
  lives = 3;
  
  x = width/2;
  y = height/2;
  d = 100;
  
  //volecity
  vx = random(-5, 5);
  vy = random(-5, 5);
  
  //minim
  minim = new Minim(this);
  theme = minim.loadFile("mario bros theme.mp3");
  coin = minim.loadFile("coin.wav");
  gameover = minim.loadFile("gameover.wav");
  bump = minim.loadFile("bump.wav");
  
  //colour
  c = 0;
  
  //speed
  s = score;
  
  //size
  z = 400;
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if(mode == OPTION) {
    option();
  } else {
    println("Error: Mode = " + mode);
  }
}
