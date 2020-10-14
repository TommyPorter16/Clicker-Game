//Tommy Porter
//Block 1-1a
//October 6, 2020

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
final int OPTIONS = 4;

float x, y, d;
float vx, vy;
float sliderX;

int score;
int lives;
int highscore;

int tactile;
int tactileRect;

PImage selectedImage;
PImage biden;
PImage trump;

//sound variables
Minim minim;
AudioPlayer theme,coin,bump,gameover;

void setup() {
  size(800,800);
  mode = INTRO;
  x = width/2;
  y = height/2;
  d = 100;
  vx = random(-5,5);
  vy = random(-5,5);
  score = 0;
  lives = 3;
  highscore = 0;
  sliderX = 375;
  biden = loadImage("Biden.png");
  trump = loadImage("trump.png");
  selectedImage = biden;
  
  //minim
  minim = new Minim(this);
  theme = minim.loadFile("mario bros theme.mp3");
  coin = minim.loadFile("coin.wav");
  bump = minim.loadFile("bump.wav");
  gameover = minim.loadFile("gameover.wav");
  
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
  } else if (mode == OPTIONS) {
    options();
  } else {
    println("Error: Mode = " + mode);
  }
  
}
