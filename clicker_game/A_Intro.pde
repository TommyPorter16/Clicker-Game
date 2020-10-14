void intro() {
  theme.play();
  
  background(200);
  
  reset();
  
  //Options button
  tactile(725,75,50);
  strokeWeight(4);
  fill(255);
  circle(725,75,100);
  
  //options sign
  textSize(20);
  textAlign(CENTER,CENTER);
  fill(0);
  text("options",725,75);
  
  //Start button
  tactileRect(300,500,200,100);
  strokeWeight(4);
  fill(255);
  rect(300,500,200,100);
  
  //start sign
  textSize(40);
  textAlign(CENTER,CENTER);
  fill(0);
  text("START",400,550);
  
  //Intro sign
  textSize(80);
  textAlign(CENTER,CENTER);
  fill(0);
  text("INTRO",400,300);
}

void introClicks() {
  if (mouseX > 300 && mouseX<500 && mouseY> 500 && mouseY<600) {
  mode = GAME;
}
if (dist(725,75,mouseX,mouseY)<d/2) {
  mode = OPTIONS;
}
}

void introDragged() {
  
}
