void mouseReleased() {
  if (mode == INTRO) {
    introClicks();
  } else if (mode == GAME) {
    gameClicks();
  } else if (mode == PAUSE) {
    pauseClicks();
  } else if (mode == GAMEOVER) {
    gameoverClicks();
  } else if (mode == OPTIONS) {
    optionsClicks();
  }
  
}

void mouseDragged() {
  if (mode == INTRO) {
    introDragged();
  } else if (mode == GAME) {
    gameDragged();
  } else if (mode == PAUSE) {
    pauseDragged();
  } else if (mode == GAMEOVER) {
    gameoverDragged();
  } else if (mode == OPTIONS) {
    optionsDragged();
  }
  
}
