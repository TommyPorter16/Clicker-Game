void tactile(float x, float y, float r) {
  if(dist(x,y,mouseX,mouseY)<r) {
    stroke(255,255,0);
  }  else {
    stroke(0);
  }
}

void tactileRect(float x, float y, float w, float h) {
  if(mouseX > x && mouseX < x+w && mouseY >y && mouseY <y+h) {
    stroke(255,255,0);
  }  else {
    stroke(0);
  }
}

void reset() {
  //target
  x=width/2;
  y=height/2;
  d=100;
  vx = random(-5,5);
  vy = random(-5,5);
  
  //game initialization
  score = 0;
  lives = 3;
  sliderX = 375;
}
