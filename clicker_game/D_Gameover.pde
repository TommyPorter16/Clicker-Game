void gameover() {
  background(255);
  
  //gameover sign
  textSize(80);
  textAlign(CENTER,CENTER);
  fill(0);
  text("GAME OVER",400,300);
  
  
  //highscore sign
  textSize(50);
  textAlign(CENTER,CENTER);
  fill(0);
  text("HIGHSCORE:"+highscore, 400,150);
  
  //exit button
  tactileRect(700,725,90,55);
  strokeWeight(4);
  fill(255);
  rect(700,725,90,55);
  
  //exit sign
  textSize(50);
  textAlign(CENTER,CENTER);
  fill(0);
  text("Exit", 745,745);
  
}

void gameoverClicks() {
  reset();
  mode = INTRO;
  if (mouseX>700 && mouseX<795 && mouseY>700 && mouseY<795) {
   exit(); 
  }
}

void gameoverDragged() {
  
}
