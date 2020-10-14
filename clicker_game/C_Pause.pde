void pause() {
  
  //Pause sign
  textSize(80);
  textAlign(CENTER,CENTER);
  fill(0);
  text("Pause",400,300);
  
  //pause button
  tactile(750,50,37.5);
  strokeWeight(3);
  fill(255);
  circle(750,50,75);
  strokeWeight(1);
  fill(0);
  triangle(720,50,775,75,775,25);
}

void pauseClicks() {
  if (dist(750,50,mouseX,mouseY)<37.5) {
    mode = GAME;
  }
}

void pauseDragged() {
  
}
