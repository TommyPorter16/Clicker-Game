void game() {
  background(255);
  
  //Image
  image(selectedImage,x-d/2,y-d/2,d,d);
  
  //pause button
  tactile(750,50,37.5);
  strokeWeight(3);
  fill(255);
  circle(750,50,75);
  strokeWeight(4);
  stroke(0);
  fill(0);
  line(765,75,765,25);
  line(735,75,735,25);
  
  // movement
  x = x + vx;
  y = y + vy;
  
  //bouncing
  if (x>width-d/2 || x<d/2) {
    vx = vx*-1;
  }
  
  if (y>height-d/2 || y<d/2) {
    vy = vy*-1;
  }
  
  //score counter
  textSize(30);
  textAlign(CENTER,CENTER);
  fill(224,191,20);
  text("SCORE:"+score,100,100);
  
  //lives counter
  textSize(30);
  textAlign(CENTER,CENTER);
  fill(224,191,20);
  text("LIVES:"+lives,100,150);
  
  //going to gameover
  if (lives == 0) {
    mode = GAMEOVER;
    gameover.rewind();
    gameover.play();
  }
  
  //highscore
  if (score>highscore) {
   highscore = score; 
  }
  
}



void gameClicks() {
  //scoring and losing lives
  if (dist(x,y,mouseX,mouseY)<d/2) {
    score = score +1;
    vx = vx * 1.1;
    vy = vy * 1.1;
    coin.rewind();
    coin.play();
  } else if (dist(750,50,mouseX,mouseY)<37.5) {
    mode = PAUSE;
  } else {
    lives = lives - 1;
    bump.rewind();
    bump.play();
  }
}

void gameDragged() {
  
}
